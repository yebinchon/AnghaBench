; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_psf_ssc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_psf_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i64, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, i64)* @dasd_eckd_psf_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_psf_ssc(%struct.dasd_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dasd_ccw_req*, align 8
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.dasd_ccw_req* @dasd_eckd_build_psf_ssc(%struct.dasd_device* %10, i32 %11)
  store %struct.dasd_ccw_req* %12, %struct.dasd_ccw_req** %8, align 8
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dasd_ccw_req* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %17)
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = or i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %26 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = call i32 (...) @css_schedule_reprobe()
  br label %42

31:                                               ; preds = %19
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %45 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %43, i32 %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_psf_ssc(%struct.dasd_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @css_schedule_reprobe(...) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

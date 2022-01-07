; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64 }
%struct.dasd_information2_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dasd_eckd_private = type { i32*, i64, i32, i64 }

@DASD_FORMAT_CDL = common dso_local global i32 0, align 4
@DASD_FORMAT_LDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_information2_t*)* @dasd_eckd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_fill_info(%struct.dasd_device* %0, %struct.dasd_information2_t* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_information2_t*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.dasd_information2_t* %1, %struct.dasd_information2_t** %4, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %9, %struct.dasd_eckd_private** %5, align 8
  %10 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %10, i32 0, i32 0
  store i32 2, i32* %11, align 4
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  %18 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @DASD_FORMAT_CDL, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @DASD_FORMAT_LDL, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %31 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %33 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %32, i32 0, i32 2
  store i32 4, i32* %33, align 4
  %34 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %35 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %38 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %37, i32 0, i32 2
  %39 = call i32 @memcpy(i32 %36, i32* %38, i32 4)
  %40 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %41 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @min(i64 %42, i32 4)
  %44 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %45 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %47 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %50 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %53 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %48, i32* %51, i32 %54)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

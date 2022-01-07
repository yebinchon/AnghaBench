; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_check_XRC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_check_XRC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i32 }
%struct.DE_eckd_data = type { i32, i32 }
%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw1*, %struct.DE_eckd_data*, %struct.dasd_device*)* @check_XRC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_XRC(%struct.ccw1* %0, %struct.DE_eckd_data* %1, %struct.dasd_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca %struct.DE_eckd_data*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %5, align 8
  store %struct.DE_eckd_data* %1, %struct.DE_eckd_data** %6, align 8
  store %struct.dasd_device* %2, %struct.dasd_device** %7, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %13, %struct.dasd_eckd_private** %8, align 8
  %14 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %15 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %6, align 8
  %23 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 8
  store i32 %25, i32* %23, align 4
  %26 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %6, align 8
  %27 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 2
  store i32 %29, i32* %27, align 4
  %30 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %6, align 8
  %31 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %30, i32 0, i32 1
  %32 = call i32 @get_sync_clock(i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %21
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %45 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %44, i32 0, i32 0
  store i32 8, i32* %45, align 4
  %46 = load i32, i32* @CCW_FLAG_SLI, align 4
  %47 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %48 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @get_sync_clock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

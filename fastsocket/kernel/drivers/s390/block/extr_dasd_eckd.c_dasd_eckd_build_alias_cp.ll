; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_alias_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_alias_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { i32, i32, i64 }
%struct.dasd_block = type { i32 }
%struct.request = type { i32 }
%struct.dasd_eckd_private = type { i64 }

@DASD_ECKD_CHANQ_MAX_SIZE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* @dasd_eckd_build_alias_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_alias_cp(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca %struct.dasd_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %13 = call %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device* %12)
  store %struct.dasd_device* %13, %struct.dasd_device** %9, align 8
  %14 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %15 = icmp ne %struct.dasd_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  store %struct.dasd_device* %17, %struct.dasd_device** %9, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %22, %struct.dasd_eckd_private** %8, align 8
  %23 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %24 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DASD_ECKD_CHANQ_MAX_SIZE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %30)
  store %struct.dasd_ccw_req* %31, %struct.dasd_ccw_req** %4, align 8
  br label %76

32:                                               ; preds = %18
  %33 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_ccwdev_lock(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32 %36, i64 %37)
  %39 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %40 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %51 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %52 = load %struct.request*, %struct.request** %7, align 8
  %53 = call %struct.dasd_ccw_req* @dasd_raw_build_cp(%struct.dasd_device* %50, %struct.dasd_block* %51, %struct.request* %52)
  store %struct.dasd_ccw_req* %53, %struct.dasd_ccw_req** %11, align 8
  br label %59

54:                                               ; preds = %32
  %55 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %56 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %57 = load %struct.request*, %struct.request** %7, align 8
  %58 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp(%struct.dasd_device* %55, %struct.dasd_block* %56, %struct.request* %57)
  store %struct.dasd_ccw_req* %58, %struct.dasd_ccw_req** %11, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %61 = call i64 @IS_ERR(%struct.dasd_ccw_req* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %65 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %70 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @get_ccwdev_lock(i32 %71)
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32 %72, i64 %73)
  %75 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  store %struct.dasd_ccw_req* %75, %struct.dasd_ccw_req** %4, align 8
  br label %76

76:                                               ; preds = %68, %28
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %77
}

declare dso_local %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device*) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_raw_build_cp(%struct.dasd_device*, %struct.dasd_block*, %struct.request*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp(%struct.dasd_device*, %struct.dasd_block*, %struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

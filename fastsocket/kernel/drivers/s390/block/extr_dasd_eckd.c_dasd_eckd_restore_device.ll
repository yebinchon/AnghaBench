; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_restore_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_restore_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_eckd_private = type { i32, i32 }
%struct.dasd_eckd_characteristics = type { i32 }
%struct.dasd_uid = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"The UID of the DASD has changed\0A\00", align 1
@DASD_CQR_FLAGS_FAILFAST = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Read device characteristic failed, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_restore_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_restore_device(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.dasd_eckd_characteristics, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_uid, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %13, %struct.dasd_eckd_private** %4, align 8
  %14 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %15 = call i32 @dasd_eckd_read_conf(%struct.dasd_device* %14)
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = call i32 @dasd_eckd_get_uid(%struct.dasd_device* %16, %struct.dasd_uid* %7)
  %18 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %19 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %26, i32 0, i32 1
  %28 = call i64 @memcmp(i32* %27, %struct.dasd_uid* %7, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %39)
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32 %40, i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %93

46:                                               ; preds = %36
  %47 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %48 = call i32 @dasd_alias_make_device_known_to_lcu(%struct.dasd_device* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %94

53:                                               ; preds = %46
  %54 = load i32, i32* @DASD_CQR_FLAGS_FAILFAST, align 4
  %55 = call i32 @set_bit(i32 %54, i64* %9)
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @dasd_eckd_validate_server(%struct.dasd_device* %56, i64 %57)
  %59 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %60 = call i32 @dasd_eckd_read_conf(%struct.dasd_device* %59)
  %61 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %62 = call i32 @dasd_eckd_read_features(%struct.dasd_device* %61)
  %63 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %64 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %65 = call i32 @dasd_generic_read_dev_chars(%struct.dasd_device* %63, i32 %64, %struct.dasd_eckd_characteristics* %5, i32 64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load i32, i32* @DBF_WARNING, align 4
  %70 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %71 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @DBF_EVENT_DEVID(i32 %69, %struct.TYPE_3__* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %93

75:                                               ; preds = %53
  %76 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %77 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %78)
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_lock_irqsave(i32 %79, i64 %80)
  %82 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %83 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %82, i32 0, i32 0
  %84 = call i32 @memcpy(i32* %83, %struct.dasd_eckd_characteristics* %5, i32 4)
  %85 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %86 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %87)
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32 %88, i64 %89)
  %91 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %92 = call i32 @dasd_alias_add_device(%struct.dasd_device* %91)
  store i32 0, i32* %2, align 4
  br label %94

93:                                               ; preds = %68, %45
  store i32 -1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %75, %51
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @dasd_eckd_read_conf(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_get_uid(%struct.dasd_device*, %struct.dasd_uid*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_3__*) #1

declare dso_local i64 @memcmp(i32*, %struct.dasd_uid*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_alias_make_device_known_to_lcu(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @dasd_eckd_validate_server(%struct.dasd_device*, i64) #1

declare dso_local i32 @dasd_eckd_read_features(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_read_dev_chars(%struct.dasd_device*, i32, %struct.dasd_eckd_characteristics*, i32) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dasd_eckd_characteristics*, i32) #1

declare dso_local i32 @dasd_alias_add_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

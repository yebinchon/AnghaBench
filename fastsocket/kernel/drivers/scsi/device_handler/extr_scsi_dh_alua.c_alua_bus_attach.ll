; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__*, %struct.scsi_dh_data* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_dh_data = type { i64, i32* }
%struct.alua_dh_data = type { i32, i32, %struct.scsi_device*, i32, i32, i32, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: Attach failed\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@alua_dh = common dso_local global i32 0, align 4
@TPGS_MODE_UNINITIALIZED = common dso_local global i32 0, align 4
@TPGS_STATE_OPTIMIZED = common dso_local global i32 0, align 4
@ALUA_INQUIRY_SIZE = common dso_local global i32 0, align 4
@SCSI_DH_DEV_OFFLINED = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: Attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: not attached\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @alua_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_dh_data*, align 8
  %5 = alloca %struct.alua_dh_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.scsi_dh_data* @kzalloc(i32 56, i32 %9)
  store %struct.scsi_dh_data* %10, %struct.scsi_dh_data** %4, align 8
  %11 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %12 = icmp ne %struct.scsi_dh_data* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = load i32, i32* @ALUA_DH_NAME, align 4
  %17 = call i32 @sdev_printk(i32 %14, %struct.scsi_device* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %21, i32 0, i32 1
  store i32* @alua_dh, i32** %22, align 8
  %23 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.alua_dh_data*
  store %struct.alua_dh_data* %26, %struct.alua_dh_data** %5, align 8
  %27 = load i32, i32* @TPGS_MODE_UNINITIALIZED, align 4
  %28 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %29 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @TPGS_STATE_OPTIMIZED, align 4
  %31 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %32 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %34 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %36 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %38 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %41 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ALUA_INQUIRY_SIZE, align 4
  %43 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %44 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %46 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %47 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %46, i32 0, i32 2
  store %struct.scsi_device* %45, %struct.scsi_device** %47, align 8
  %48 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %49 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %50 = call i32 @alua_initialize(%struct.scsi_device* %48, %struct.alua_dh_data* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SCSI_DH_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %20
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SCSI_DH_DEV_OFFLINED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %86

59:                                               ; preds = %54, %20
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = call i32 @try_module_get(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %86

64:                                               ; preds = %59
  %65 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_lock_irqsave(i32 %69, i64 %70)
  %72 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %73 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %73, i32 0, i32 1
  store %struct.scsi_dh_data* %72, %struct.scsi_dh_data** %74, align 8
  %75 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32 %79, i64 %80)
  %82 = load i32, i32* @KERN_NOTICE, align 4
  %83 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %84 = load i32, i32* @ALUA_DH_NAME, align 4
  %85 = call i32 @sdev_printk(i32 %82, %struct.scsi_device* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  store i32 0, i32* %2, align 4
  br label %95

86:                                               ; preds = %63, %58
  %87 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %88 = call i32 @kfree(%struct.scsi_dh_data* %87)
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %91 = load i32, i32* @ALUA_DH_NAME, align 4
  %92 = call i32 @sdev_printk(i32 %89, %struct.scsi_device* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %86, %64, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.scsi_dh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @alua_initialize(%struct.scsi_device*, %struct.alua_dh_data*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @kfree(%struct.scsi_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

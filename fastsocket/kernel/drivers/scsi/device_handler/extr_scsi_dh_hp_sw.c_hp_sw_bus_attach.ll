; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__*, %struct.scsi_dh_data* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_dh_data = type { i64, i32* }
%struct.hp_sw_dh_data = type { i64, %struct.scsi_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: Attach Failed\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@hp_sw_dh = common dso_local global i32 0, align 4
@HP_SW_PATH_UNINITIALIZED = common dso_local global i64 0, align 8
@HP_SW_RETRIES = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: attached to %s path\0A\00", align 1
@HP_SW_PATH_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: not attached\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @hp_sw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_dh_data*, align 8
  %5 = alloca %struct.hp_sw_dh_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.scsi_dh_data* @kzalloc(i32 40, i32 %8)
  store %struct.scsi_dh_data* %9, %struct.scsi_dh_data** %4, align 8
  %10 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %11 = icmp ne %struct.scsi_dh_data* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = load i32, i32* @HP_SW_NAME, align 4
  %16 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %13, %struct.scsi_device* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %18, i32 0, i32 1
  store i32* @hp_sw_dh, i32** %19, align 8
  %20 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hp_sw_dh_data*
  store %struct.hp_sw_dh_data* %23, %struct.hp_sw_dh_data** %5, align 8
  %24 = load i64, i64* @HP_SW_PATH_UNINITIALIZED, align 8
  %25 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %26 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @HP_SW_RETRIES, align 4
  %28 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %29 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %32 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %31, i32 0, i32 1
  store %struct.scsi_device* %30, %struct.scsi_device** %32, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %35 = call i32 @hp_sw_tur(%struct.scsi_device* %33, %struct.hp_sw_dh_data* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SCSI_DH_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %17
  %40 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %41 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HP_SW_PATH_UNINITIALIZED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %17
  br label %80

46:                                               ; preds = %39
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = call i32 @try_module_get(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %80

51:                                               ; preds = %46
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_lock_irqsave(i32 %56, i64 %57)
  %59 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 1
  store %struct.scsi_dh_data* %59, %struct.scsi_dh_data** %61, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32 %66, i64 %67)
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %71 = load i32, i32* @HP_SW_NAME, align 4
  %72 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %73 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HP_SW_PATH_ACTIVE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %79 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %69, %struct.scsi_device* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %78)
  store i32 0, i32* %2, align 4
  br label %89

80:                                               ; preds = %50, %45
  %81 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %82 = call i32 @kfree(%struct.scsi_dh_data* %81)
  %83 = load i32, i32* @KERN_ERR, align 4
  %84 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %85 = load i32, i32* @HP_SW_NAME, align 4
  %86 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %83, %struct.scsi_device* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %80, %51, %12
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.scsi_dh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @hp_sw_tur(%struct.scsi_device*, %struct.hp_sw_dh_data*) #1

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

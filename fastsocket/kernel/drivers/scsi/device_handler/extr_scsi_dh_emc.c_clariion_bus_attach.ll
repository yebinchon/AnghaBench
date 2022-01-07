; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_bus_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__*, %struct.scsi_dh_data* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_dh_data = type { i64, i32* }
%struct.clariion_dh_data = type { i64, i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: Attach failed\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clariion_dh = common dso_local global i32 0, align 4
@CLARIION_LUN_UNINITIALIZED = common dso_local global i64 0, align 8
@CLARIION_UNBOUND_LU = common dso_local global i8* null, align 8
@SCSI_DH_OK = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: connected to SP %c Port %d (%s, default SP %c)\0A\00", align 1
@lun_state = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: not attached\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @clariion_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_dh_data*, align 8
  %5 = alloca %struct.clariion_dh_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.scsi_dh_data* @kzalloc(i32 48, i32 %8)
  store %struct.scsi_dh_data* %9, %struct.scsi_dh_data** %4, align 8
  %10 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %11 = icmp ne %struct.scsi_dh_data* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = load i32, i32* @CLARIION_NAME, align 4
  %16 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %13, %struct.scsi_device* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %103

19:                                               ; preds = %1
  %20 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %20, i32 0, i32 1
  store i32* @clariion_dh, i32** %21, align 8
  %22 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.clariion_dh_data*
  store %struct.clariion_dh_data* %25, %struct.clariion_dh_data** %5, align 8
  %26 = load i64, i64* @CLARIION_LUN_UNINITIALIZED, align 8
  %27 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %28 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** @CLARIION_UNBOUND_LU, align 8
  %30 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %31 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @CLARIION_UNBOUND_LU, align 8
  %33 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %34 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %37 = call i32 @clariion_std_inquiry(%struct.scsi_device* %35, %struct.clariion_dh_data* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SCSI_DH_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %94

42:                                               ; preds = %19
  %43 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %44 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %45 = call i32 @clariion_send_inquiry(%struct.scsi_device* %43, %struct.clariion_dh_data* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SCSI_DH_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %94

50:                                               ; preds = %42
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = call i32 @try_module_get(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %94

55:                                               ; preds = %50
  %56 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_lock_irqsave(i32 %60, i64 %61)
  %63 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 1
  store %struct.scsi_dh_data* %63, %struct.scsi_dh_data** %65, align 8
  %66 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32 %70, i64 %71)
  %73 = load i32, i32* @KERN_INFO, align 4
  %74 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %75 = load i32, i32* @CLARIION_NAME, align 4
  %76 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %77 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr i8, i8* %78, i64 65
  %80 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %81 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** @lun_state, align 8
  %84 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %85 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %90 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr i8, i8* %91, i64 65
  %93 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %73, %struct.scsi_device* %74, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %75, i8* %79, i32 %82, i32 %88, i8* %92)
  store i32 0, i32* %2, align 4
  br label %103

94:                                               ; preds = %54, %49, %41
  %95 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %96 = call i32 @kfree(%struct.scsi_dh_data* %95)
  %97 = load i32, i32* @KERN_ERR, align 4
  %98 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %99 = load i32, i32* @CLARIION_NAME, align 4
  %100 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %97, %struct.scsi_device* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %94, %55, %12
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.scsi_dh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @clariion_std_inquiry(%struct.scsi_device*, %struct.clariion_dh_data*) #1

declare dso_local i32 @clariion_send_inquiry(%struct.scsi_device*, %struct.clariion_dh_data*) #1

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

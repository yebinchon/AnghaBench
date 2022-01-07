; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__*, %struct.scsi_dh_data* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_dh_data = type { i64 }
%struct.alua_dh_data = type { i64, i64 }

@THIS_MODULE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: Detached\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @alua_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alua_bus_detach(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.scsi_dh_data*, align 8
  %4 = alloca %struct.alua_dh_data*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 1
  %15 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %14, align 8
  store %struct.scsi_dh_data* %15, %struct.scsi_dh_data** %3, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  store %struct.scsi_dh_data* null, %struct.scsi_dh_data** %17, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32 %22, i64 %23)
  %25 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.alua_dh_data*
  store %struct.alua_dh_data* %28, %struct.alua_dh_data** %4, align 8
  %29 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %30 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %1
  %34 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %35 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %38 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %43 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.scsi_dh_data*
  %46 = call i32 @kfree(%struct.scsi_dh_data* %45)
  br label %47

47:                                               ; preds = %41, %33, %1
  %48 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %3, align 8
  %49 = call i32 @kfree(%struct.scsi_dh_data* %48)
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = call i32 @module_put(i32 %50)
  %52 = load i32, i32* @KERN_NOTICE, align 4
  %53 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %54 = load i32, i32* @ALUA_DH_NAME, align 4
  %55 = call i32 @sdev_printk(i32 %52, %struct.scsi_device* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %54)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @kfree(%struct.scsi_dh_data*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

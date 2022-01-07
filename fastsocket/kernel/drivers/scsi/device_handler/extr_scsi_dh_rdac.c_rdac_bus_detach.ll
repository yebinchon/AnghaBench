; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_3__*, %struct.scsi_dh_data* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_dh_data = type { i64 }
%struct.rdac_dh_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@kmpath_rdacd = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@release_controller = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: Detached\0A\00", align 1
@RDAC_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @rdac_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdac_bus_detach(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.scsi_dh_data*, align 8
  %4 = alloca %struct.rdac_dh_data*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1
  %8 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %7, align 8
  store %struct.scsi_dh_data* %8, %struct.scsi_dh_data** %3, align 8
  %9 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rdac_dh_data*
  store %struct.rdac_dh_data* %12, %struct.rdac_dh_data** %4, align 8
  %13 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %14 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %19 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @kmpath_rdacd, align 4
  %26 = call i32 @flush_workqueue(i32 %25)
  br label %27

27:                                               ; preds = %24, %17, %1
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 1
  store %struct.scsi_dh_data* null, %struct.scsi_dh_data** %36, align 8
  %37 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32 %41, i64 %42)
  %44 = call i32 @spin_lock(i32* @list_lock)
  %45 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %46 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %27
  %50 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %51 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* @release_controller, align 4
  %55 = call i32 @kref_put(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %27
  %57 = call i32 @spin_unlock(i32* @list_lock)
  %58 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %3, align 8
  %59 = call i32 @kfree(%struct.scsi_dh_data* %58)
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = call i32 @module_put(i32 %60)
  %62 = load i32, i32* @KERN_NOTICE, align 4
  %63 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %64 = load i32, i32* @RDAC_NAME, align 4
  %65 = call i32 @sdev_printk(i32 %62, %struct.scsi_device* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %64)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.scsi_dh_data*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

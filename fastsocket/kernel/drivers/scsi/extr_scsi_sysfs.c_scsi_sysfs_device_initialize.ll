; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_sysfs_device_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_sysfs_device_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.Scsi_Host*, %struct.TYPE_5__, %struct.scsi_target* }
%struct.Scsi_Host = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32*, i32* }
%struct.scsi_target = type { i32, i32 }

@scsi_bus_type = common dso_local global i32 0, align 4
@scsi_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d:%d:%d:%d\00", align 1
@sdev_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sysfs_device_initialize(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 7
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %4, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 9
  %11 = load %struct.scsi_target*, %struct.scsi_target** %10, align 8
  store %struct.scsi_target* %11, %struct.scsi_target** %5, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 2
  %14 = call i32 @device_initialize(%struct.TYPE_5__* %13)
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32* @scsi_bus_type, i32** %17, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32* @scsi_dev_type, i32** %20, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  %23 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 7
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %24, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_set_name(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 8
  %40 = call i32 @device_initialize(%struct.TYPE_5__* %39)
  %41 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 2
  %43 = call i32 @get_device(%struct.TYPE_5__* %42)
  %44 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32* @sdev_class, i32** %49, align 8
  %50 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 7
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %53, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_set_name(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %73 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 2
  %74 = call i32 @transport_setup_device(%struct.TYPE_5__* %73)
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @spin_lock_irqsave(i32 %77, i64 %78)
  %80 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 1
  %82 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %82, i32 0, i32 0
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  %85 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %85, i32 0, i32 0
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 1
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32 %92, i64 %93)
  ret void
}

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_device(%struct.TYPE_5__*) #1

declare dso_local i32 @transport_setup_device(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

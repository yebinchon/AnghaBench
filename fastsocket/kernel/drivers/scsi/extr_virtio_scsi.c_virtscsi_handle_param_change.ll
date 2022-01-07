; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_param_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_param_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_event = type { i32*, i32 }
%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"SCSI device %d 0 %d %d not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi*, %struct.virtio_scsi_event*)* @virtscsi_handle_param_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_handle_param_change(%struct.virtio_scsi* %0, %struct.virtio_scsi_event* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca %struct.virtio_scsi_event*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store %struct.virtio_scsi_event* %1, %struct.virtio_scsi_event** %4, align 8
  %11 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.Scsi_Host* @virtio_scsi_host(i32 %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %16 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %21 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %25, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %33 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 255
  store i32 %35, i32* %9, align 4
  %36 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %37 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %40, i32 0, i32 %41, i32 %42)
  store %struct.scsi_device* %43, %struct.scsi_device** %5, align 8
  %44 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %45 = icmp ne %struct.scsi_device* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %2
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  br label %72

53:                                               ; preds = %2
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 42
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %59, %56
  %66 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %66, i32 0, i32 0
  %68 = call i32 @scsi_rescan_device(i32* %67)
  br label %69

69:                                               ; preds = %65, %62, %53
  %70 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %71 = call i32 @scsi_device_put(%struct.scsi_device* %70)
  br label %72

72:                                               ; preds = %69, %46
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_rescan_device(i32*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_transport_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_transport_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_event = type { i32*, i32 }
%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"SCSI device %d 0 %d %d not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unsupport virtio scsi event reason %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi*, %struct.virtio_scsi_event*)* @virtscsi_handle_transport_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_handle_transport_reset(%struct.virtio_scsi* %0, %struct.virtio_scsi_event* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca %struct.virtio_scsi_event*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store %struct.virtio_scsi_event* %1, %struct.virtio_scsi_event** %4, align 8
  %9 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.Scsi_Host* @virtio_scsi_host(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %19 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %25 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %23, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %31 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %58 [
    i32 128, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %2
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @scsi_add_device(%struct.Scsi_Host* %34, i32 0, i32 %35, i32 %36)
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %39, i32 0, i32 %40, i32 %41)
  store %struct.scsi_device* %42, %struct.scsi_device** %5, align 8
  %43 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %44 = icmp ne %struct.scsi_device* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %47 = call i32 @scsi_remove_device(%struct.scsi_device* %46)
  %48 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %49 = call i32 @scsi_device_put(%struct.scsi_device* %48)
  br label %57

50:                                               ; preds = %38
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %45
  br label %63

58:                                               ; preds = %2
  %59 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %60 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %57, %33
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(i32) #1

declare dso_local i32 @scsi_add_device(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

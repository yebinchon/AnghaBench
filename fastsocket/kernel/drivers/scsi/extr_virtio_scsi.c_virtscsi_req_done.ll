; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_req_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.virtio_scsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@virtscsi_complete_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtscsi_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_req_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.virtio_scsi*, align 8
  %5 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %6 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.Scsi_Host* @virtio_scsi_host(i32 %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = call %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.virtio_scsi* %11, %struct.virtio_scsi** %4, align 8
  %12 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %13 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = load i32, i32* @virtscsi_complete_cmd, align 4
  %19 = call i32 @virtscsi_vq_done(%struct.virtqueue* %17, i32 %18)
  %20 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %21 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(i32) #1

declare dso_local %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtscsi_vq_done(%struct.virtqueue*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

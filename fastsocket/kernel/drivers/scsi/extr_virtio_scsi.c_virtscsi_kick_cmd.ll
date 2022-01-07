; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_kick_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_kick_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi_target_state = type { i32, i32 }
%struct.virtio_scsi_vq = type { i32, i32 }
%struct.virtio_scsi_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_scsi_target_state*, %struct.virtio_scsi_vq*, %struct.virtio_scsi_cmd*, i64, i64)* @virtscsi_kick_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtscsi_kick_cmd(%struct.virtio_scsi_target_state* %0, %struct.virtio_scsi_vq* %1, %struct.virtio_scsi_cmd* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.virtio_scsi_target_state*, align 8
  %7 = alloca %struct.virtio_scsi_vq*, align 8
  %8 = alloca %struct.virtio_scsi_cmd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.virtio_scsi_target_state* %0, %struct.virtio_scsi_target_state** %6, align 8
  store %struct.virtio_scsi_vq* %1, %struct.virtio_scsi_vq** %7, align 8
  store %struct.virtio_scsi_cmd* %2, %struct.virtio_scsi_cmd** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.virtio_scsi_target_state*, %struct.virtio_scsi_target_state** %6, align 8
  %16 = getelementptr inbounds %struct.virtio_scsi_target_state, %struct.virtio_scsi_target_state* %15, i32 0, i32 0
  %17 = load i64, i64* %13, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.virtio_scsi_target_state*, %struct.virtio_scsi_target_state** %6, align 8
  %20 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @virtscsi_map_cmd(%struct.virtio_scsi_target_state* %19, %struct.virtio_scsi_cmd* %20, i32* %11, i32* %12, i64 %21, i64 %22)
  %24 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %25 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %28 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.virtio_scsi_target_state*, %struct.virtio_scsi_target_state** %6, align 8
  %31 = getelementptr inbounds %struct.virtio_scsi_target_state, %struct.virtio_scsi_target_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %36 = call i32 @virtqueue_add_buf(i32 %29, i32 %32, i32 %33, i32 %34, %struct.virtio_scsi_cmd* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.virtio_scsi_target_state*, %struct.virtio_scsi_target_state** %6, align 8
  %38 = getelementptr inbounds %struct.virtio_scsi_target_state, %struct.virtio_scsi_target_state* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %14, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %5
  %43 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %44 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @virtqueue_kick_prepare(i32 %45)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %42, %5
  %48 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %49 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %48, i32 0, i32 1
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %56 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @virtqueue_notify(i32 %57)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, i32* %14, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtscsi_map_cmd(%struct.virtio_scsi_target_state*, %struct.virtio_scsi_cmd*, i32*, i32*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @virtqueue_add_buf(i32, i32, i32, i32, %struct.virtio_scsi_cmd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @virtqueue_kick_prepare(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @virtqueue_notify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

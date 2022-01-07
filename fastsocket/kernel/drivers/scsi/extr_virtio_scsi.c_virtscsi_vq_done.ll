; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_vq_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_vq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, void (i8*)*)* @virtscsi_vq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_vq_done(%struct.virtqueue* %0, void (i8*)* %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %9 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %8)
  br label %10

10:                                               ; preds = %14, %7
  %11 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %12 = call i8* @virtqueue_get_buf(%struct.virtqueue* %11, i32* %6)
  store i8* %12, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load void (i8*)*, void (i8*)** %4, align 8
  %16 = load i8*, i8** %5, align 8
  call void %15(i8* %16)
  br label %10

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %20 = call i32 @virtqueue_enable_cb(%struct.virtqueue* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %7, label %23

23:                                               ; preds = %18
  ret void
}

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i8* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @virtqueue_enable_cb(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

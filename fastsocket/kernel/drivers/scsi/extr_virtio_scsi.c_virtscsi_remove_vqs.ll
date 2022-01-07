; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_remove_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_remove_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)* }
%struct.Scsi_Host = type { i64 }
%struct.virtio_scsi = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtscsi_remove_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_remove_vqs(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.virtio_scsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = call %struct.Scsi_Host* @virtio_scsi_host(%struct.virtio_device* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = call %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.virtio_scsi* %10, %struct.virtio_scsi** %4, align 8
  %11 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %14, align 8
  %16 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %17 = call i32 %15(%struct.virtio_device* %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %34 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %43 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %45, align 8
  %47 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %48 = call i32 %46(%struct.virtio_device* %47)
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(%struct.virtio_device*) #1

declare dso_local %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

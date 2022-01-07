; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.scsi_disk = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @sd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca [4 x i32], align 16
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %9 = load %struct.block_device*, %struct.block_device** %3, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.scsi_disk* @scsi_disk(i32 %11)
  store %struct.scsi_disk* %12, %struct.scsi_disk** %5, align 8
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %13, i32 0, i32 1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  store %struct.scsi_device* %15, %struct.scsi_device** %6, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %7, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 64, i32* %19, align 16
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 32, i32* %20, align 4
  %21 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 11
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %24, i32* %25, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)*, i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)** %29, align 8
  %31 = icmp ne i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)*, i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)** %36, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %39 = load %struct.block_device*, %struct.block_device** %3, align 8
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %44 = call i32 %37(%struct.scsi_device* %38, %struct.block_device* %39, i32 %42, i32* %43)
  br label %52

45:                                               ; preds = %2
  %46 = load %struct.block_device*, %struct.block_device** %3, align 8
  %47 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %51 = call i32 @scsicam_bios_param(%struct.block_device* %46, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %45, %32
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %56 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %60 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %64 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  ret i32 0
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @scsicam_bios_param(%struct.block_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

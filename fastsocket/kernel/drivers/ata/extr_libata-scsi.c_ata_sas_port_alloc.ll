; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_sas_port_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_sas_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, i32, i32, i32, i32*, i64 }
%struct.ata_host = type { i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@ATA_CBL_SATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_port* @ata_sas_port_alloc(%struct.ata_host* %0, %struct.ata_port_info* %1, %struct.Scsi_Host* %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca %struct.ata_port_info*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.ata_port*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %5, align 8
  store %struct.ata_port_info* %1, %struct.ata_port_info** %6, align 8
  store %struct.Scsi_Host* %2, %struct.Scsi_Host** %7, align 8
  %9 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %10 = call %struct.ata_port* @ata_port_alloc(%struct.ata_host* %9)
  store %struct.ata_port* %10, %struct.ata_port** %8, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %12 = icmp ne %struct.ata_port* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ata_port* null, %struct.ata_port** %4, align 8
  br label %52

14:                                               ; preds = %3
  %15 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 0
  %19 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %22 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %27 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %32 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %37 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.ata_port_info*, %struct.ata_port_info** %6, align 8
  %44 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ATA_CBL_SATA, align 4
  %49 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %51, %struct.ata_port** %4, align 8
  br label %52

52:                                               ; preds = %14, %13
  %53 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  ret %struct.ata_port* %53
}

declare dso_local %struct.ata_port* @ata_port_alloc(%struct.ata_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sis.c_sis_100_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sis.c_sis_100_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@__const.sis_100_set_piomode.actrec = private unnamed_addr constant [5 x i32] [i32 0, i32 103, i32 68, i32 51, i32 49], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sis_100_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_100_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = call i32 @sis_old_port_base(%struct.ata_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XFER_PIO_0, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([5 x i32]* @__const.sis_100_set_piomode.actrec to i8*), i64 20, i1 false)
  %23 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = call i32 @sis_set_fifo(%struct.ata_port* %23, %struct.ata_device* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %26, i32 %27, i32 %31)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @sis_old_port_base(%struct.ata_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sis_set_fifo(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

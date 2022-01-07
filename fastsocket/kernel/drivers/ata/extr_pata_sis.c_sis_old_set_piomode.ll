; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sis.c_sis_old_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sis.c_sis_old_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@__const.sis_old_set_piomode.active = private unnamed_addr constant [5 x i32] [i32 0, i32 7, i32 4, i32 3, i32 1], align 16
@__const.sis_old_set_piomode.recovery = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 3, i32 3], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sis_old_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_old_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca [5 x i32], align 16
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = call i32 @sis_old_port_base(%struct.ata_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XFER_PIO_0, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([5 x i32]* @__const.sis_old_set_piomode.active to i8*), i64 20, i1 false)
  %26 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([5 x i32]* @__const.sis_old_set_piomode.recovery to i8*), i64 20, i1 false)
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = call i32 @sis_set_fifo(%struct.ata_port* %27, %struct.ata_device* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %31, i32* %7)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 %35, i32* %8)
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, -16
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, -8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pci_write_config_byte(%struct.pci_dev* %57, i32 %59, i32 %60)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @sis_old_port_base(%struct.ata_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sis_set_fifo(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

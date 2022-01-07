; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_artop.c_artop6210_pre_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_artop.c_artop6210_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@__const.artop6210_pre_reset.artop_enable_bits = private unnamed_addr constant [2 x %struct.pci_bits] [%struct.pci_bits { i32 74, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 74, i32 1, i32 4, i32 4 }], align 16
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @artop6210_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artop6210_pre_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca [2 x %struct.pci_bits], align 16
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %10 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %9, i32 0, i32 0
  %11 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  store %struct.ata_port* %11, %struct.ata_port** %6, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  %18 = bitcast [2 x %struct.pci_bits]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([2 x %struct.pci_bits]* @__const.artop6210_pre_reset.artop_enable_bits to i8*), i64 32, i1 false)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [2 x %struct.pci_bits], [2 x %struct.pci_bits]* %8, i64 0, i64 %22
  %24 = call i32 @pci_test_config_bits(%struct.pci_dev* %19, %struct.pci_bits* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @ata_sff_prereset(%struct.ata_link* %30, i64 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pci_test_config_bits(%struct.pci_dev*, %struct.pci_bits*) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

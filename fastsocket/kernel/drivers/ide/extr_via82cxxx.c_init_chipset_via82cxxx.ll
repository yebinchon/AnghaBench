; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_via82cxxx.c_init_chipset_via82cxxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_via82cxxx.c_init_chipset_via82cxxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.via82cxxx_dev* }
%struct.via82cxxx_dev = type { %struct.via_isa_bridge* }
%struct.via_isa_bridge = type { i64, i32 }

@VIA_UDMA_TIMING = common dso_local global i32 0, align 4
@ATA_UDMA4 = common dso_local global i64 0, align 8
@VIA_BAD_CLK66 = common dso_local global i32 0, align 4
@VIA_IDE_ENABLE = common dso_local global i32 0, align 4
@VIA_FIFO_CONFIG = common dso_local global i32 0, align 4
@VIA_BAD_PREQ = common dso_local global i32 0, align 4
@VIA_SET_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @init_chipset_via82cxxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chipset_via82cxxx(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca %struct.via82cxxx_dev*, align 8
  %5 = alloca %struct.via_isa_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.ide_host* %10, %struct.ide_host** %3, align 8
  %11 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %12 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %11, i32 0, i32 0
  %13 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %12, align 8
  store %struct.via82cxxx_dev* %13, %struct.via82cxxx_dev** %4, align 8
  %14 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %4, align 8
  %15 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %14, i32 0, i32 0
  %16 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %15, align 8
  store %struct.via_isa_bridge* %16, %struct.via_isa_bridge** %5, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* @VIA_UDMA_TIMING, align 4
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 %18, i32* %8)
  %20 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @via_cable_detect(%struct.via82cxxx_dev* %20, i32 %21)
  %23 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %5, align 8
  %24 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ATA_UDMA4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* @VIA_UDMA_TIMING, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 524296
  %33 = call i32 @pci_write_config_dword(%struct.pci_dev* %29, i32 %30, i32 %32)
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %5, align 8
  %36 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VIA_BAD_CLK66, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load i32, i32* @VIA_UDMA_TIMING, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, -524297
  %46 = call i32 @pci_write_config_dword(%struct.pci_dev* %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* @VIA_IDE_ENABLE, align 4
  %51 = call i32 @pci_read_config_byte(%struct.pci_dev* %49, i32 %50, i32* %7)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = load i32, i32* @VIA_FIFO_CONFIG, align 4
  %54 = call i32 @pci_read_config_byte(%struct.pci_dev* %52, i32 %53, i32* %6)
  %55 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %5, align 8
  %56 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VIA_BAD_PREQ, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 127
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %48
  %65 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %5, align 8
  %66 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VIA_SET_FIFO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 159
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 3
  switch i32 %77, label %86 [
    i32 2, label %78
    i32 1, label %80
    i32 3, label %83
  ]

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %6, align 4
  br label %86

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, 96
  store i32 %82, i32* %6, align 4
  br label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, 32
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %71, %83, %80, %78
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %89 = load i32, i32* @VIA_FIFO_CONFIG, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 %89, i32 %90)
  ret i32 0
}

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @via_cable_detect(%struct.via82cxxx_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

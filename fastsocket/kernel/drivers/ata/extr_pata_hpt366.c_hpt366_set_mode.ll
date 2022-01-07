; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt366.c_hpt366_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt366.c_hpt366_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hpt_clock* }
%struct.hpt_clock = type { i32, i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @hpt366_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt366_set_mode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpt_clock*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.hpt_clock*, %struct.hpt_clock** %17, align 8
  store %struct.hpt_clock* %18, %struct.hpt_clock** %7, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %8, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %27, %31
  %33 = mul nsw i32 4, %32
  %34 = add nsw i32 64, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 4, %37
  %39 = add nsw i32 81, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @pci_read_config_byte(%struct.pci_dev* %40, i32 %41, i32* %13)
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %3
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, -129
  store i32 %48, i32* %13, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @pci_write_config_byte(%struct.pci_dev* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %3
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @XFER_MW_DMA_0, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1040646145, i32* %11, align 4
  br label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @XFER_UDMA_0, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 808976639, i32* %11, align 4
  br label %64

63:                                               ; preds = %58
  store i32 805765120, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %78, %65
  %67 = load %struct.hpt_clock*, %struct.hpt_clock** %7, align 8
  %68 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.hpt_clock*, %struct.hpt_clock** %7, align 8
  %73 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %81

78:                                               ; preds = %71
  %79 = load %struct.hpt_clock*, %struct.hpt_clock** %7, align 8
  %80 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %79, i32 1
  store %struct.hpt_clock* %80, %struct.hpt_clock** %7, align 8
  br label %66

81:                                               ; preds = %77, %66
  %82 = load %struct.hpt_clock*, %struct.hpt_clock** %7, align 8
  %83 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = call i32 (...) @BUG()
  br label %88

88:                                               ; preds = %86, %81
  %89 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @pci_read_config_dword(%struct.pci_dev* %89, i32 %90, i32* %12)
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = load %struct.hpt_clock*, %struct.hpt_clock** %7, align 8
  %97 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %98, %99
  %101 = or i32 %95, %100
  %102 = and i32 %101, 1073741823
  store i32 %102, i32* %12, align 4
  %103 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @pci_write_config_dword(%struct.pci_dev* %103, i32 %104, i32 %105)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_optidma.c_optiplus_mode_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_optidma.c_optiplus_mode_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i64)* @optiplus_mode_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optiplus_mode_setup(%struct.ata_port* %0, %struct.ata_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 2, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 2, %25
  %27 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @XFER_UDMA_0, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = call i32 @pci_read_config_byte(%struct.pci_dev* %35, i32 68, i64* %8)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @XFER_UDMA_0, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %48 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %49 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @optidma_mode_setup(%struct.ata_port* %47, %struct.ata_device* %48, i32 %51)
  br label %95

53:                                               ; preds = %3
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %53
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = call i32 @pci_read_config_byte(%struct.pci_dev* %64, i32 69, i64* %9)
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 3, %66
  %68 = xor i32 %67, -1
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @pci_write_config_byte(%struct.pci_dev* %78, i32 69, i64 %79)
  br label %94

81:                                               ; preds = %53
  %82 = load i32, i32* %10, align 4
  %83 = shl i32 48, %82
  %84 = xor i32 %83, -1
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %8, align 8
  %87 = and i64 %86, %85
  store i64 %87, i64* %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = shl i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %81, %63
  br label %95

95:                                               ; preds = %94, %40
  %96 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @pci_write_config_byte(%struct.pci_dev* %96, i32 68, i64 %97)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @optidma_mode_setup(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

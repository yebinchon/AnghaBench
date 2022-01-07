; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atp867x.c_atp867x_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atp867x.c_atp867x_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.atp867x_priv*, %struct.TYPE_2__* }
%struct.atp867x_priv = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i64 }

@XFER_UDMA_0 = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_UDMA_0 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ARTOP_ATP867B = common dso_local global i64 0, align 8
@ATP867X_IO_DMAMODE_UDMA_5 = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_SLAVE_MASK = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_SLAVE_SHIFT = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_MSTR_MASK = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_MSTR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @atp867x_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp867x_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.atp867x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load %struct.atp867x_priv*, %struct.atp867x_priv** %17, align 8
  store %struct.atp867x_priv* %18, %struct.atp867x_priv** %6, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XFER_UDMA_0, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %27 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ATP867X_IO_DMAMODE_UDMA_0, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI_DEVICE_ID_ARTOP_ATP867B, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ATP867X_IO_DMAMODE_UDMA_5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %40, %30, %2
  %48 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %49 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ioread8(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ATP867X_IO_DMAMODE_SLAVE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ATP867X_IO_DMAMODE_SLAVE_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  store i32 %65, i32* %8, align 4
  br label %75

66:                                               ; preds = %47
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ATP867X_IO_DMAMODE_MSTR_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @ATP867X_IO_DMAMODE_MSTR_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %66, %57
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %78 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iowrite8(i32 %76, i32 %79)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

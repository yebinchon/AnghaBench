; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atp867x.c_atp867x_set_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atp867x.c_atp867x_set_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.atp867x_priv*, %struct.TYPE_2__* }
%struct.atp867x_priv = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATP867X_IO_SYS_INFO_66MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @atp867x_set_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp867x_set_priv(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atp867x_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.atp867x_priv* @devm_kzalloc(i32* %17, i32 20, i32 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  store %struct.atp867x_priv* %19, %struct.atp867x_priv** %21, align 8
  store %struct.atp867x_priv* %19, %struct.atp867x_priv** %5, align 8
  %22 = load %struct.atp867x_priv*, %struct.atp867x_priv** %5, align 8
  %23 = icmp eq %struct.atp867x_priv* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %1
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ATP867X_IO_DMAMODE(%struct.ata_port* %28, i32 %29)
  %31 = load %struct.atp867x_priv*, %struct.atp867x_priv** %5, align 8
  %32 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ATP867X_IO_MSTRPIOSPD(%struct.ata_port* %33, i32 %34)
  %36 = load %struct.atp867x_priv*, %struct.atp867x_priv** %5, align 8
  %37 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ATP867X_IO_SLAVPIOSPD(%struct.ata_port* %38, i32 %39)
  %41 = load %struct.atp867x_priv*, %struct.atp867x_priv** %5, align 8
  %42 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ATP867X_IO_8BPIOSPD(%struct.ata_port* %43, i32 %44)
  %46 = load %struct.atp867x_priv*, %struct.atp867x_priv** %5, align 8
  %47 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %49 = call i32 @ATP867X_SYS_INFO(%struct.ata_port* %48)
  %50 = call i32 @ioread8(i32 %49)
  %51 = load i32, i32* @ATP867X_IO_SYS_INFO_66MHZ, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.atp867x_priv*, %struct.atp867x_priv** %5, align 8
  %54 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %27, %24
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.atp867x_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ATP867X_IO_DMAMODE(%struct.ata_port*, i32) #1

declare dso_local i32 @ATP867X_IO_MSTRPIOSPD(%struct.ata_port*, i32) #1

declare dso_local i32 @ATP867X_IO_SLAVPIOSPD(%struct.ata_port*, i32) #1

declare dso_local i32 @ATP867X_IO_8BPIOSPD(%struct.ata_port*, i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ATP867X_SYS_INFO(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

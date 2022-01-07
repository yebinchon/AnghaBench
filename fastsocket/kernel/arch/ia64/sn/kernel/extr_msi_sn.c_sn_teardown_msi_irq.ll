; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_msi_sn.c_sn_teardown_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_msi_sn.c_sn_teardown_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sn_irq_info*, i64 }
%struct.sn_irq_info = type { i64, i64 }
%struct.pci_dev = type { i32 }
%struct.pcidev_info = type { %struct.pci_dev* }
%struct.pcibus_bussoft = type { i32 }
%struct.sn_pcibus_provider = type { i32 (%struct.pci_dev.0*, i64, i32)* }
%struct.pci_dev.0 = type opaque

@sn_msi_info = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_teardown_msi_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pcidev_info*, align 8
  %7 = alloca %struct.sn_irq_info*, align 8
  %8 = alloca %struct.pcibus_bussoft*, align 8
  %9 = alloca %struct.sn_pcibus_provider*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sn_msi_info, align 8
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  store %struct.sn_irq_info* %15, %struct.sn_irq_info** %7, align 8
  %16 = load %struct.sn_irq_info*, %struct.sn_irq_info** %7, align 8
  %17 = icmp eq %struct.sn_irq_info* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.sn_irq_info*, %struct.sn_irq_info** %7, align 8
  %20 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  br label %84

24:                                               ; preds = %18
  %25 = load %struct.sn_irq_info*, %struct.sn_irq_info** %7, align 8
  %26 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.pcidev_info*
  store %struct.pcidev_info* %28, %struct.pcidev_info** %6, align 8
  %29 = load %struct.pcidev_info*, %struct.pcidev_info** %6, align 8
  %30 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %29, i32 0, i32 0
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %5, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call %struct.sn_pcibus_provider* @SN_PCIDEV_BUSPROVIDER(%struct.pci_dev* %32)
  store %struct.sn_pcibus_provider* %33, %struct.sn_pcibus_provider** %9, align 8
  %34 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %9, align 8
  %35 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %34, i32 0, i32 0
  %36 = load i32 (%struct.pci_dev.0*, i64, i32)*, i32 (%struct.pci_dev.0*, i64, i32)** %35, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = bitcast %struct.pci_dev* %37 to %struct.pci_dev.0*
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sn_msi_info, align 8
  %40 = load i32, i32* %2, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %46 = call i32 %36(%struct.pci_dev.0* %38, i64 %44, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sn_msi_info, align 8
  %48 = load i32, i32* %2, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = call %struct.pcibus_bussoft* @SN_PCIDEV_BUSSOFT(%struct.pci_dev* %52)
  store %struct.pcibus_bussoft* %53, %struct.pcibus_bussoft** %8, align 8
  %54 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %8, align 8
  %55 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @NASID_GET(i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %24
  %62 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %8, align 8
  %63 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @TIO_SWIN_WIDGETNUM(i32 %64)
  br label %71

66:                                               ; preds = %24
  %67 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %8, align 8
  %68 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SWIN_WIDGETNUM(i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i32 [ %65, %61 ], [ %70, %66 ]
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.sn_irq_info*, %struct.sn_irq_info** %7, align 8
  %76 = call i32 @sn_intr_free(i32 %73, i32 %74, %struct.sn_irq_info* %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sn_msi_info, align 8
  %78 = load i32, i32* %2, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %81, align 8
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @destroy_irq(i32 %82)
  br label %84

84:                                               ; preds = %71, %23
  ret void
}

declare dso_local %struct.sn_pcibus_provider* @SN_PCIDEV_BUSPROVIDER(%struct.pci_dev*) #1

declare dso_local %struct.pcibus_bussoft* @SN_PCIDEV_BUSSOFT(%struct.pci_dev*) #1

declare dso_local i32 @NASID_GET(i32) #1

declare dso_local i32 @TIO_SWIN_WIDGETNUM(i32) #1

declare dso_local i32 @SWIN_WIDGETNUM(i32) #1

declare dso_local i32 @sn_intr_free(i32, i32, %struct.sn_irq_info*) #1

declare dso_local i32 @destroy_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

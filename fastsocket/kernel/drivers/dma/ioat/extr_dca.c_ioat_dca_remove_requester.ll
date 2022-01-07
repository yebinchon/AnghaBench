; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dca.c_ioat_dca_remove_requester.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dca.c_ioat_dca_remove_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32* }
%struct.ioat_dca_priv = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dca_provider*, %struct.device*)* @ioat_dca_remove_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_dca_remove_requester(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ioat_dca_priv*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %10 = call %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider* %9)
  store %struct.ioat_dca_priv* %10, %struct.ioat_dca_priv** %6, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @pci_bus_type
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.pci_dev* @to_pci_dev(%struct.device* %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %67, %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.pci_dev*, %struct.pci_dev** %34, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = icmp eq %struct.pci_dev* %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %27
  %39 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @writew(i32 0, i64 %45)
  %47 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.pci_dev* null, %struct.pci_dev** %53, align 8
  %54 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %62 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %27
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %21

70:                                               ; preds = %21
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %38, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

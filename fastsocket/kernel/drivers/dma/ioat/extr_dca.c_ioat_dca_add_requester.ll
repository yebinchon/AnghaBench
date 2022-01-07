; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dca.c_ioat_dca_add_requester.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dca.c_ioat_dca_add_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32* }
%struct.ioat_dca_priv = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dca_provider*, %struct.device*)* @ioat_dca_add_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_dca_add_requester(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ioat_dca_priv*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %11 = call %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider* %10)
  store %struct.ioat_dca_priv* %11, %struct.ioat_dca_priv** %6, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @pci_bus_type
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.pci_dev* @to_pci_dev(%struct.device* %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %7, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = call i32 @dcaid_from_pcidev(%struct.pci_dev* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %92, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %35
  %42 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.pci_dev*, %struct.pci_dev** %48, align 8
  %50 = icmp eq %struct.pci_dev* %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %41
  %52 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %57 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %58 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.pci_dev* %56, %struct.pci_dev** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %74 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @writew(i32 %72, i64 %79)
  %81 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %82 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = add nsw i64 %87, 2
  %89 = call i32 @writeb(i32 0, i64 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %98

91:                                               ; preds = %41
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %35

95:                                               ; preds = %35
  %96 = load i32, i32* @EFAULT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %51, %31, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @dcaid_from_pcidev(%struct.pci_dev*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

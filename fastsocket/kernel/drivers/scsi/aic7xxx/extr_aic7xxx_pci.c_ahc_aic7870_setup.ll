; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7870_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7870_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i8, i32, i32, i32, i32 }

@AHC_AIC7870 = common dso_local global i32 0, align 4
@AHC_AIC7870_FE = common dso_local global i32 0, align 4
@AHC_TMODE_WIDEODD_BUG = common dso_local global i32 0, align 4
@AHC_CACHETHEN_BUG = common dso_local global i32 0, align 4
@AHC_PCI_MWI_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aic7870_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aic7870_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %3, i32 0, i32 0
  store i8 65, i8* %4, align 4
  %5 = load i32, i32* @AHC_AIC7870, align 4
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @AHC_AIC7870_FE, align 4
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @AHC_TMODE_WIDEODD_BUG, align 4
  %12 = load i32, i32* @AHC_CACHETHEN_BUG, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AHC_PCI_MWI_BUG, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %20, i32 0, i32 2
  store i32 512, i32* %21, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7899_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7899_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i8, i32, i32, i32, i32, i32, i32 }

@AHC_AIC7899 = common dso_local global i32 0, align 4
@AHC_AIC7899_FE = common dso_local global i32 0, align 4
@AHC_NEWEEPROM_FMT = common dso_local global i32 0, align 4
@AHC_SCBCHAN_UPLOAD_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aic7899_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aic7899_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ahc_get_pci_function(i32 %7)
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 66, i32 65
  %12 = trunc i32 %11 to i8
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 0
  store i8 %12, i8* %14, align 4
  %15 = load i32, i32* @AHC_AIC7899, align 4
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @AHC_AIC7899_FE, align 4
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @AHC_NEWEEPROM_FMT, align 4
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @AHC_SCBCHAN_UPLOAD_BUG, align 4
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %31, i32 0, i32 1
  store i32 1024, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @ahc_get_pci_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

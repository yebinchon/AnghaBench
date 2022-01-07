; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_pci_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_pci_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DSCOMMAND0 = common dso_local global i32 0, align 4
@DSPCISTATUS = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@SFUNCT = common dso_local global i32 0, align 4
@ALT_MODE = common dso_local global i32 0, align 4
@OPTIONMODE = common dso_local global i32 0, align 4
@TARGCRCCNT = common dso_local global i32 0, align 4
@CRCCONTROL1 = common dso_local global i32 0, align 4
@AHC_MULTI_FUNC = common dso_local global i32 0, align 4
@SCBBADDR = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@DFF_THRSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_pci_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_pci_chip_init(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = load i32, i32* @DSCOMMAND0, align 4
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ahc_outb(%struct.ahc_softc* %4, i32 %5, i32 %10)
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = load i32, i32* @DSPCISTATUS, align 4
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ahc_outb(%struct.ahc_softc* %12, i32 %13, i32 %18)
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AHC_DT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %1
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load i32, i32* @SFUNCT, align 4
  %29 = call i32 @ahc_inb(%struct.ahc_softc* %27, i32 %28)
  %30 = load i32, i32* @ALT_MODE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %3, align 4
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %34 = load i32, i32* @SFUNCT, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ALT_MODE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ahc_outb(%struct.ahc_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %40 = load i32, i32* @OPTIONMODE, align 4
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ahc_outb(%struct.ahc_softc* %39, i32 %40, i32 %45)
  %47 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %48 = load i32, i32* @TARGCRCCNT, align 4
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ahc_outw(%struct.ahc_softc* %47, i32 %48, i32 %53)
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %56 = load i32, i32* @SFUNCT, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @ahc_outb(%struct.ahc_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %60 = load i32, i32* @CRCCONTROL1, align 4
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %62 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ahc_outb(%struct.ahc_softc* %59, i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %26, %1
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AHC_MULTI_FUNC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %76 = load i32, i32* @SCBBADDR, align 4
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ahc_outb(%struct.ahc_softc* %75, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %74, %67
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AHC_ULTRA2, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = load i32, i32* @DFF_THRSH, align 4
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ahc_outb(%struct.ahc_softc* %91, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %90, %83
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %101 = call i32 @ahc_chip_init(%struct.ahc_softc* %100)
  ret i32 %101
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outw(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_chip_init(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AHC_LINUX_NOIRQ = common dso_local global i32 0, align 4
@aic7xxx_seltime = common dso_local global i32 0, align 4
@aic7xxx_pci_parity = common dso_local global i64 0, align 8
@AHC_DISABLE_PCI_PERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_platform_alloc(%struct.ahc_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i8*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @M_DEVBUF, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = call %struct.TYPE_3__* @malloc(i32 4, i32 %6, i32 %7)
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 3
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %10, align 8
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @memset(%struct.TYPE_3__* %20, i32 0, i32 4)
  %22 = load i32, i32* @AHC_LINUX_NOIRQ, align 4
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %28 = call i32 @ahc_lockinit(%struct.ahc_softc* %27)
  %29 = load i32, i32* @aic7xxx_seltime, align 4
  %30 = and i32 %29, 3
  %31 = shl i32 %30, 4
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @aic7xxx_seltime, align 4
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 4
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @aic7xxx_pci_parity, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %17
  %42 = load i32, i32* @AHC_DISABLE_PCI_PERR, align 4
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %17
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ahc_lockinit(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

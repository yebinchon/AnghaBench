; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_probe_scbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_probe_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@AHC_SCB_MAX = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@SCB_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_probe_scbs(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AHC_SCB_MAX, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %10 = load i32, i32* @SCBPTR, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ahc_outb(%struct.ahc_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = load i32, i32* @SCB_BASE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ahc_outb(%struct.ahc_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = load i32, i32* @SCB_BASE, align 4
  %19 = call i32 @ahc_inb(%struct.ahc_softc* %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  br label %36

23:                                               ; preds = %8
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = load i32, i32* @SCBPTR, align 4
  %26 = call i32 @ahc_outb(%struct.ahc_softc* %24, i32 %25, i32 0)
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load i32, i32* @SCB_BASE, align 4
  %29 = call i32 @ahc_inb(%struct.ahc_softc* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %31, %22, %4
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

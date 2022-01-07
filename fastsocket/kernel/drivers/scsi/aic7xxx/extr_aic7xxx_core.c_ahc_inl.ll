; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_inl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_inl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_inl(%struct.ahc_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @ahc_inb(%struct.ahc_softc* %5, i64 %6)
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @ahc_inb(%struct.ahc_softc* %8, i64 %10)
  %12 = shl i32 %11, 8
  %13 = or i32 %7, %12
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, 2
  %17 = call i32 @ahc_inb(%struct.ahc_softc* %14, i64 %16)
  %18 = shl i32 %17, 16
  %19 = or i32 %13, %18
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, 3
  %23 = call i32 @ahc_inb(%struct.ahc_softc* %20, i64 %22)
  %24 = shl i32 %23, 24
  %25 = or i32 %19, %24
  ret i32 %25
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

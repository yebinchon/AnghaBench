; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_outb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_outb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BUS_SPACE_MEMIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_outb(%struct.ahc_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BUS_SPACE_MEMIO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writeb(i32 %13, i64 %19)
  br label %30

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %22, i64 %28)
  br label %30

30:                                               ; preds = %21, %12
  %31 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

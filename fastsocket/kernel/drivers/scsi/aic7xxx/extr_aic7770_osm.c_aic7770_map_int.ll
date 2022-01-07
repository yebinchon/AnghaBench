; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_map_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_map_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AHC_EDGE_INTERRUPT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ahc_linux_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"aic7xxx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aic7770_map_int(%struct.ahc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AHC_EDGE_INTERRUPT, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ahc_linux_isr, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %20 = call i32 @request_irq(i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.ahc_softc* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 0, %30
  ret i32 %31
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

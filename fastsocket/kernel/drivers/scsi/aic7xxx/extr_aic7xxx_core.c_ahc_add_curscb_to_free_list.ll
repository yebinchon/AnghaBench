; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_add_curscb_to_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_add_curscb_to_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@SCB_TAG = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@AHC_PAGESCBS = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@FREE_SCBH = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_add_curscb_to_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_add_curscb_to_free_list(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %4 = load i32, i32* @SCB_TAG, align 4
  %5 = load i32, i32* @SCB_LIST_NULL, align 4
  %6 = call i32 @ahc_outb(%struct.ahc_softc* %3, i32 %4, i32 %5)
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AHC_PAGESCBS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = load i32, i32* @SCB_NEXT, align 4
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = load i32, i32* @FREE_SCBH, align 4
  %18 = call i32 @ahc_inb(%struct.ahc_softc* %16, i32 %17)
  %19 = call i32 @ahc_outb(%struct.ahc_softc* %14, i32 %15, i32 %18)
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %21 = load i32, i32* @FREE_SCBH, align 4
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = load i32, i32* @SCBPTR, align 4
  %24 = call i32 @ahc_inb(%struct.ahc_softc* %22, i32 %23)
  %25 = call i32 @ahc_outb(%struct.ahc_softc* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

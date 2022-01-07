; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_clear_msg_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_clear_msg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i64, i64 }

@MSG_TYPE_NONE = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@ATNI = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRATNO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_NOOP = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@TARGET_MSG_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_clear_msg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_clear_msg_state(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @MSG_TYPE_NONE, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = load i32, i32* @SCSISIGI, align 4
  %12 = call i32 @ahc_inb(%struct.ahc_softc* %10, i32 %11)
  %13 = load i32, i32* @ATNI, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = load i32, i32* @CLRSINT1, align 4
  %19 = load i32, i32* @CLRATNO, align 4
  %20 = call i32 @ahc_outb(%struct.ahc_softc* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = load i32, i32* @MSG_OUT, align 4
  %24 = load i32, i32* @MSG_NOOP, align 4
  %25 = call i32 @ahc_outb(%struct.ahc_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %27 = load i32, i32* @SEQ_FLAGS2, align 4
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %29 = load i32, i32* @SEQ_FLAGS2, align 4
  %30 = call i32 @ahc_inb(%struct.ahc_softc* %28, i32 %29)
  %31 = load i32, i32* @TARGET_MSG_PENDING, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @ahc_outb(%struct.ahc_softc* %26, i32 %27, i32 %33)
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

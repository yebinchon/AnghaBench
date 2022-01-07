; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isurf.c_ISurf_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isurf.c_ISurf_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ISURF_RESET = common dso_local global i32 0, align 4
@ISAR_IRQBIT = common dso_local global i64 0, align 8
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @ISurf_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ISurf_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %65 [
    i32 129, label %10
    i32 130, label %22
    i32 131, label %25
    i32 128, label %64
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = load i32, i32* @ISURF_RESET, align 4
  %17 = call i32 @reset_isurf(%struct.IsdnCardState* %15, i32 %16)
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %24 = call i32 @release_io_isurf(%struct.IsdnCardState* %23)
  store i32 0, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @spin_lock_irqsave(i32* %27, i32 %28)
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = load i32, i32* @ISURF_RESET, align 4
  %32 = call i32 @reset_isurf(%struct.IsdnCardState* %30, i32 %31)
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %33)
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ISAR_IRQBIT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writeb(i32 0, i64 %41)
  %43 = call i32 (...) @mb()
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %45 = call i32 @initisac(%struct.IsdnCardState* %44)
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %47 = call i32 @initisar(%struct.IsdnCardState* %46)
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %49 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %48, i32 0, i32 1
  %50 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %49, align 8
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %52 = load i32, i32* @ISAC_MASK, align 4
  %53 = call i32 %50(%struct.IsdnCardState* %51, i32 %52, i32 0)
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 1
  %56 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %55, align 8
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %58 = load i32, i32* @ISAC_CMDR, align 4
  %59 = call i32 %56(%struct.IsdnCardState* %57, i32 %58, i32 65)
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %66

64:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

65:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64, %25, %22, %10
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_isurf(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_isurf(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @initisar(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

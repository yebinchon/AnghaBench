; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teleint.c_TeleInt_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teleint.c_TeleInt_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_5__, i32, i32 (%struct.IsdnCardState*, i32, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @TeleInt_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TeleInt_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %74 [
    i32 129, label %11
    i32 130, label %22
    i32 131, label %25
    i32 128, label %73
  ]

11:                                               ; preds = %3
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 1
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = call i32 @reset_TeleInt(%struct.IsdnCardState* %16)
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %75

22:                                               ; preds = %3
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %24 = call i32 @release_io_TeleInt(%struct.IsdnCardState* %23)
  store i32 0, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 1
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @spin_lock_irqsave(i32* %27, i32 %28)
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = call i32 @reset_TeleInt(%struct.IsdnCardState* %30)
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %33 = call i32 @inithfc(%struct.IsdnCardState* %32)
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %35 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %34)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = call i32 @initisac(%struct.IsdnCardState* %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 2
  %40 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %39, align 8
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %42 = load i32, i32* @ISAC_MASK, align 4
  %43 = call i32 %40(%struct.IsdnCardState* %41, i32 %42, i32 0)
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 2
  %46 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %45, align 8
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = load i32, i32* @ISAC_CMDR, align 4
  %49 = call i32 %46(%struct.IsdnCardState* %47, i32 %48, i32 65)
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 1
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i32 %52)
  %54 = load i32, i32* @HZ, align 4
  %55 = sdiv i32 %54, 100
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* @jiffies, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %69 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @add_timer(%struct.TYPE_6__* %71)
  store i32 0, i32* %4, align 4
  br label %75

73:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

74:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %73, %59, %22, %11
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_TeleInt(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_TeleInt(%struct.IsdnCardState*) #1

declare dso_local i32 @inithfc(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

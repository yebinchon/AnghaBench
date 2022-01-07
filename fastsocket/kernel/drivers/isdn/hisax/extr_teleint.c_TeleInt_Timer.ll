; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teleint.c_TeleInt_Timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teleint.c_TeleInt_Timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_6__, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @TeleInt_Timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TeleInt_Timer(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @spin_lock_irqsave(i32* %6, i32 %7)
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 0
  %23 = call i32 @main_irq_hfc(%struct.TYPE_7__* %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 2
  store i32 %34, i32* %3, align 4
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 1
  %39 = call i32 @main_irq_hfc(%struct.TYPE_7__* %38)
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 1
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i32 %43)
  %45 = load i32, i32* @HZ, align 4
  %46 = sdiv i32 %45, 100
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i64 %54, i64* %59, align 8
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @add_timer(%struct.TYPE_8__* %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @main_irq_hfc(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_release_tei.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_release_tei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.PStack* }
%struct.PStack = type { %struct.PStack*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_tei(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca %struct.PStack*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 0
  %6 = load %struct.PStack*, %struct.PStack** %5, align 8
  store %struct.PStack* %6, %struct.PStack** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = icmp ne %struct.PStack* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.PStack*, %struct.PStack** %3, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @FsmDelTimer(i32* %13, i32 1)
  %15 = load %struct.PStack*, %struct.PStack** %3, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = load %struct.PStack*, %struct.PStack** %16, align 8
  store %struct.PStack* %17, %struct.PStack** %3, align 8
  br label %7

18:                                               ; preds = %7
  ret void
}

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

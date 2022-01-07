; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_HiSax_rmlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_HiSax_rmlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.PStack* }
%struct.PStack = type { %struct.PStack*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HiSax_rmlist(%struct.IsdnCardState* %0, %struct.PStack* %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca %struct.PStack*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store %struct.PStack* %1, %struct.PStack** %4, align 8
  %6 = load %struct.PStack*, %struct.PStack** %4, align 8
  %7 = getelementptr inbounds %struct.PStack, %struct.PStack* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @FsmDelTimer(i32* %8, i32 0)
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = load %struct.PStack*, %struct.PStack** %11, align 8
  %13 = load %struct.PStack*, %struct.PStack** %4, align 8
  %14 = icmp eq %struct.PStack* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.PStack*, %struct.PStack** %4, align 8
  %17 = getelementptr inbounds %struct.PStack, %struct.PStack* %16, i32 0, i32 0
  %18 = load %struct.PStack*, %struct.PStack** %17, align 8
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  store %struct.PStack* %18, %struct.PStack** %20, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load %struct.PStack*, %struct.PStack** %23, align 8
  store %struct.PStack* %24, %struct.PStack** %5, align 8
  br label %25

25:                                               ; preds = %44, %21
  %26 = load %struct.PStack*, %struct.PStack** %5, align 8
  %27 = icmp ne %struct.PStack* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.PStack*, %struct.PStack** %5, align 8
  %30 = getelementptr inbounds %struct.PStack, %struct.PStack* %29, i32 0, i32 0
  %31 = load %struct.PStack*, %struct.PStack** %30, align 8
  %32 = load %struct.PStack*, %struct.PStack** %4, align 8
  %33 = icmp eq %struct.PStack* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.PStack*, %struct.PStack** %4, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = load %struct.PStack*, %struct.PStack** %36, align 8
  %38 = load %struct.PStack*, %struct.PStack** %5, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 0
  store %struct.PStack* %37, %struct.PStack** %39, align 8
  br label %46

40:                                               ; preds = %28
  %41 = load %struct.PStack*, %struct.PStack** %5, align 8
  %42 = getelementptr inbounds %struct.PStack, %struct.PStack* %41, i32 0, i32 0
  %43 = load %struct.PStack*, %struct.PStack** %42, align 8
  store %struct.PStack* %43, %struct.PStack** %5, align 8
  br label %44

44:                                               ; preds = %40
  br label %25

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %34, %45, %15
  ret void
}

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

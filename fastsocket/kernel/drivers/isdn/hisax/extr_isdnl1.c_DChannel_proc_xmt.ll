; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_DChannel_proc_xmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_DChannel_proc_xmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.PStack*, i64 }
%struct.PStack = type { %struct.PStack*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32 }
%struct.PStack.0 = type opaque

@FLG_L1_PULL_REQ = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DChannel_proc_xmt(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca %struct.PStack*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = load %struct.PStack*, %struct.PStack** %11, align 8
  store %struct.PStack* %12, %struct.PStack** %3, align 8
  br label %13

13:                                               ; preds = %38, %9
  %14 = load %struct.PStack*, %struct.PStack** %3, align 8
  %15 = icmp ne %struct.PStack* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i32, i32* @FLG_L1_PULL_REQ, align 4
  %18 = load %struct.PStack*, %struct.PStack** %3, align 8
  %19 = getelementptr inbounds %struct.PStack, %struct.PStack* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i64 @test_and_clear_bit(i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.PStack*, %struct.PStack** %3, align 8
  %25 = getelementptr inbounds %struct.PStack, %struct.PStack* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %26, align 8
  %28 = load %struct.PStack*, %struct.PStack** %3, align 8
  %29 = bitcast %struct.PStack* %28 to %struct.PStack.0*
  %30 = load i32, i32* @PH_PULL, align 4
  %31 = load i32, i32* @CONFIRM, align 4
  %32 = or i32 %30, %31
  %33 = call i32 %27(%struct.PStack.0* %29, i32 %32, i32* null)
  br label %39

34:                                               ; preds = %16
  %35 = load %struct.PStack*, %struct.PStack** %3, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = load %struct.PStack*, %struct.PStack** %36, align 8
  store %struct.PStack* %37, %struct.PStack** %3, align 8
  br label %38

38:                                               ; preds = %34
  br label %13

39:                                               ; preds = %8, %23, %13
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

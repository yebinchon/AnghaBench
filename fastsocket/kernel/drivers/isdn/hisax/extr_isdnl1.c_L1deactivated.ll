; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_L1deactivated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_L1deactivated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.PStack* }
%struct.PStack = type { %struct.PStack*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)* }
%struct.PStack.0 = type opaque

@FLG_L1_DBUSY = common dso_local global i32 0, align 4
@PH_PAUSE = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @L1deactivated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @L1deactivated(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca %struct.PStack*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 1
  %6 = load %struct.PStack*, %struct.PStack** %5, align 8
  store %struct.PStack* %6, %struct.PStack** %3, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = icmp ne %struct.PStack* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = load i32, i32* @FLG_L1_DBUSY, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.PStack*, %struct.PStack** %3, align 8
  %18 = getelementptr inbounds %struct.PStack, %struct.PStack* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %19, align 8
  %21 = load %struct.PStack*, %struct.PStack** %3, align 8
  %22 = bitcast %struct.PStack* %21 to %struct.PStack.0*
  %23 = load i32, i32* @PH_PAUSE, align 4
  %24 = load i32, i32* @CONFIRM, align 4
  %25 = or i32 %23, %24
  %26 = call i32 %20(%struct.PStack.0* %22, i32 %25, i32* null)
  br label %27

27:                                               ; preds = %16, %10
  %28 = load %struct.PStack*, %struct.PStack** %3, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %30, align 8
  %32 = load %struct.PStack*, %struct.PStack** %3, align 8
  %33 = bitcast %struct.PStack* %32 to %struct.PStack.0*
  %34 = load i32, i32* @PH_DEACTIVATE, align 4
  %35 = load i32, i32* @INDICATION, align 4
  %36 = or i32 %34, %35
  %37 = call i32 %31(%struct.PStack.0* %33, i32 %36, i32* null)
  %38 = load %struct.PStack*, %struct.PStack** %3, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 0
  %40 = load %struct.PStack*, %struct.PStack** %39, align 8
  store %struct.PStack* %40, %struct.PStack** %3, align 8
  br label %7

41:                                               ; preds = %7
  %42 = load i32, i32* @FLG_L1_DBUSY, align 4
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 0
  %45 = call i32 @test_and_clear_bit(i32 %42, i32* %44)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_L1activated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_L1activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.PStack* }
%struct.PStack = type { %struct.PStack*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32 }
%struct.PStack.0 = type opaque

@FLG_L1_ACTIVATING = common dso_local global i32 0, align 4
@PH_ACTIVATE = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @L1activated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @L1activated(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca %struct.PStack*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 0
  %6 = load %struct.PStack*, %struct.PStack** %5, align 8
  store %struct.PStack* %6, %struct.PStack** %3, align 8
  br label %7

7:                                                ; preds = %39, %1
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = icmp ne %struct.PStack* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i32, i32* @FLG_L1_ACTIVATING, align 4
  %12 = load %struct.PStack*, %struct.PStack** %3, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i64 @test_and_clear_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.PStack*, %struct.PStack** %3, align 8
  %19 = getelementptr inbounds %struct.PStack, %struct.PStack* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %20, align 8
  %22 = load %struct.PStack*, %struct.PStack** %3, align 8
  %23 = bitcast %struct.PStack* %22 to %struct.PStack.0*
  %24 = load i32, i32* @PH_ACTIVATE, align 4
  %25 = load i32, i32* @CONFIRM, align 4
  %26 = or i32 %24, %25
  %27 = call i32 %21(%struct.PStack.0* %23, i32 %26, i32* null)
  br label %39

28:                                               ; preds = %10
  %29 = load %struct.PStack*, %struct.PStack** %3, align 8
  %30 = getelementptr inbounds %struct.PStack, %struct.PStack* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %31, align 8
  %33 = load %struct.PStack*, %struct.PStack** %3, align 8
  %34 = bitcast %struct.PStack* %33 to %struct.PStack.0*
  %35 = load i32, i32* @PH_ACTIVATE, align 4
  %36 = load i32, i32* @INDICATION, align 4
  %37 = or i32 %35, %36
  %38 = call i32 %32(%struct.PStack.0* %34, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %28, %17
  %40 = load %struct.PStack*, %struct.PStack** %3, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = load %struct.PStack*, %struct.PStack** %41, align 8
  store %struct.PStack* %42, %struct.PStack** %3, align 8
  br label %7

43:                                               ; preds = %7
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

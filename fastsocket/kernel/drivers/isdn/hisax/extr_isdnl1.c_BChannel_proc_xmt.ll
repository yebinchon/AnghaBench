; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_BChannel_proc_xmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_BChannel_proc_xmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i32, i32, %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.PStack.0*, i32, i32*)* }
%struct.PStack.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.PStack.1*, i32, i32*)*, i32 }
%struct.PStack.1 = type opaque

@BC_FLG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"BC_BUSY Error\00", align 1
@FLG_L1_PULL_REQ = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@BC_FLG_ACTIV = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @BChannel_proc_xmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BChannel_proc_xmt(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.PStack*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %4 = load %struct.BCState*, %struct.BCState** %2, align 8
  %5 = getelementptr inbounds %struct.BCState, %struct.BCState* %4, i32 0, i32 3
  %6 = load %struct.PStack*, %struct.PStack** %5, align 8
  store %struct.PStack* %6, %struct.PStack** %3, align 8
  %7 = load i32, i32* @BC_FLG_BUSY, align 4
  %8 = load %struct.BCState*, %struct.BCState** %2, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.BCState*, %struct.BCState** %2, align 8
  %14 = getelementptr inbounds %struct.BCState, %struct.BCState* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @debugl1(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %64

17:                                               ; preds = %1
  %18 = load i32, i32* @FLG_L1_PULL_REQ, align 4
  %19 = load %struct.PStack*, %struct.PStack** %3, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i64 @test_and_clear_bit(i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.PStack*, %struct.PStack** %3, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.PStack.1*, i32, i32*)*, i32 (%struct.PStack.1*, i32, i32*)** %27, align 8
  %29 = load %struct.PStack*, %struct.PStack** %3, align 8
  %30 = bitcast %struct.PStack* %29 to %struct.PStack.1*
  %31 = load i32, i32* @PH_PULL, align 4
  %32 = load i32, i32* @CONFIRM, align 4
  %33 = or i32 %31, %32
  %34 = call i32 %28(%struct.PStack.1* %30, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %24, %17
  %36 = load i32, i32* @BC_FLG_ACTIV, align 4
  %37 = load %struct.BCState*, %struct.BCState** %2, align 8
  %38 = getelementptr inbounds %struct.BCState, %struct.BCState* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @BC_FLG_BUSY, align 4
  %43 = load %struct.BCState*, %struct.BCState** %2, align 8
  %44 = getelementptr inbounds %struct.BCState, %struct.BCState* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %41
  %48 = load %struct.BCState*, %struct.BCState** %2, align 8
  %49 = getelementptr inbounds %struct.BCState, %struct.BCState* %48, i32 0, i32 0
  %50 = call i64 @skb_queue_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.PStack*, %struct.PStack** %3, align 8
  %54 = getelementptr inbounds %struct.PStack, %struct.PStack* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %55, align 8
  %57 = load %struct.PStack*, %struct.PStack** %3, align 8
  %58 = bitcast %struct.PStack* %57 to %struct.PStack.0*
  %59 = load i32, i32* @PH_DEACTIVATE, align 4
  %60 = load i32, i32* @CONFIRM, align 4
  %61 = or i32 %59, %60
  %62 = call i32 %56(%struct.PStack.0* %58, i32 %61, i32* null)
  br label %63

63:                                               ; preds = %52, %47, %41
  br label %64

64:                                               ; preds = %12, %63, %35
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @debugl1(i32, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

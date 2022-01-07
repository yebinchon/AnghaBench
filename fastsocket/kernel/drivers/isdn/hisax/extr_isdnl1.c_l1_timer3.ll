; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_l1_timer3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl1.c_l1_timer3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.PStack.0*, i32, i32*)*, %struct.TYPE_3__, i32, i32 }
%struct.PStack.0 = type opaque
%struct.TYPE_3__ = type { i64 }

@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@FLG_L1_ACTIVATING = common dso_local global i32 0, align 4
@ST_L1_F6 = common dso_local global i64 0, align 8
@ST_L1_F3 = common dso_local global i32 0, align 4
@HW_ENABLE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@FLG_L1_UINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_timer3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_timer3(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.PStack*, %struct.PStack** %9, align 8
  store %struct.PStack* %10, %struct.PStack** %7, align 8
  %11 = load i32, i32* @FLG_L1_T3RUN, align 4
  %12 = load %struct.PStack*, %struct.PStack** %7, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = call i64 @test_and_clear_bit(i32 %11, i32* %14)
  %16 = load i32, i32* @FLG_L1_ACTIVATING, align 4
  %17 = load %struct.PStack*, %struct.PStack** %7, align 8
  %18 = getelementptr inbounds %struct.PStack, %struct.PStack* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = call i64 @test_and_clear_bit(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.PStack*, %struct.PStack** %7, align 8
  %24 = getelementptr inbounds %struct.PStack, %struct.PStack* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @L1deactivated(i32 %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.PStack*, %struct.PStack** %7, align 8
  %30 = getelementptr inbounds %struct.PStack, %struct.PStack* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ST_L1_F6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %38 = load i32, i32* @ST_L1_F3, align 4
  %39 = call i32 @FsmChangeState(%struct.FsmInst* %37, i32 %38)
  %40 = load %struct.PStack*, %struct.PStack** %7, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %42, align 8
  %44 = load %struct.PStack*, %struct.PStack** %7, align 8
  %45 = bitcast %struct.PStack* %44 to %struct.PStack.0*
  %46 = load i32, i32* @HW_ENABLE, align 4
  %47 = load i32, i32* @REQUEST, align 4
  %48 = or i32 %46, %47
  %49 = call i32 %43(%struct.PStack.0* %45, i32 %48, i32* null)
  br label %50

50:                                               ; preds = %36, %28
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @L1deactivated(i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

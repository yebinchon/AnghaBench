; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_info4_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_info4_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer1* }
%struct.layer1 = type { i32, i32, i32, i32 (i32, i32)* }

@ST_L1_F7 = common dso_local global i32 0, align 4
@INFO3_P8 = common dso_local global i32 0, align 4
@FLG_L1_DEACTTIMER = common dso_local global i32 0, align 4
@FLG_L1_ACTIVATED = common dso_local global i32 0, align 4
@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@EV_TIMER_ACT = common dso_local global i32 0, align 4
@FLG_L1_ACTTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_info4_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_info4_ind(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer1*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.layer1*, %struct.layer1** %9, align 8
  store %struct.layer1* %10, %struct.layer1** %7, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = load i32, i32* @ST_L1_F7, align 4
  %13 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %11, i32 %12)
  %14 = load %struct.layer1*, %struct.layer1** %7, align 8
  %15 = getelementptr inbounds %struct.layer1, %struct.layer1* %14, i32 0, i32 3
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.layer1*, %struct.layer1** %7, align 8
  %18 = getelementptr inbounds %struct.layer1, %struct.layer1* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @INFO3_P8, align 4
  %21 = call i32 %16(i32 %19, i32 %20)
  %22 = load i32, i32* @FLG_L1_DEACTTIMER, align 4
  %23 = load %struct.layer1*, %struct.layer1** %7, align 8
  %24 = getelementptr inbounds %struct.layer1, %struct.layer1* %23, i32 0, i32 0
  %25 = call i64 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.layer1*, %struct.layer1** %7, align 8
  %29 = getelementptr inbounds %struct.layer1, %struct.layer1* %28, i32 0, i32 1
  %30 = call i32 @mISDN_FsmDelTimer(i32* %29, i32 4)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32, i32* @FLG_L1_ACTIVATED, align 4
  %33 = load %struct.layer1*, %struct.layer1** %7, align 8
  %34 = getelementptr inbounds %struct.layer1, %struct.layer1* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @FLG_L1_T3RUN, align 4
  %39 = load %struct.layer1*, %struct.layer1** %7, align 8
  %40 = getelementptr inbounds %struct.layer1, %struct.layer1* %39, i32 0, i32 0
  %41 = call i64 @test_and_clear_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.layer1*, %struct.layer1** %7, align 8
  %45 = getelementptr inbounds %struct.layer1, %struct.layer1* %44, i32 0, i32 1
  %46 = call i32 @mISDN_FsmDelTimer(i32* %45, i32 3)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.layer1*, %struct.layer1** %7, align 8
  %49 = getelementptr inbounds %struct.layer1, %struct.layer1* %48, i32 0, i32 1
  %50 = load i32, i32* @EV_TIMER_ACT, align 4
  %51 = call i32 @mISDN_FsmRestartTimer(i32* %49, i32 110, i32 %50, i32* null, i32 2)
  %52 = load i32, i32* @FLG_L1_ACTTIMER, align 4
  %53 = load %struct.layer1*, %struct.layer1** %7, align 8
  %54 = getelementptr inbounds %struct.layer1, %struct.layer1* %53, i32 0, i32 0
  %55 = call i32 @test_and_set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %47, %31
  ret void
}

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

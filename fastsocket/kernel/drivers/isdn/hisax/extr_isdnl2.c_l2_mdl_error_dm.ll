; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_mdl_error_dm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_mdl_error_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.PStack.0*, i32, i8*)* }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32 }

@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_mdl_error_dm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_mdl_error_dm(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.PStack*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sk_buff*
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %11, i32 0, i32 0
  %13 = load %struct.PStack*, %struct.PStack** %12, align 8
  store %struct.PStack* %13, %struct.PStack** %8, align 8
  %14 = load %struct.PStack*, %struct.PStack** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i64 @get_PollFlagFree(%struct.PStack* %14, %struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.PStack*, %struct.PStack** %8, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.PStack.0*, i32, i8*)*, i32 (%struct.PStack.0*, i32, i8*)** %21, align 8
  %23 = load %struct.PStack*, %struct.PStack** %8, align 8
  %24 = bitcast %struct.PStack* %23 to %struct.PStack.0*
  %25 = load i32, i32* @MDL_ERROR, align 4
  %26 = load i32, i32* @INDICATION, align 4
  %27 = or i32 %25, %26
  %28 = call i32 %22(%struct.PStack.0* %24, i32 %27, i8* inttoptr (i64 66 to i8*))
  br label %47

29:                                               ; preds = %3
  %30 = load %struct.PStack*, %struct.PStack** %8, align 8
  %31 = getelementptr inbounds %struct.PStack, %struct.PStack* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.PStack.0*, i32, i8*)*, i32 (%struct.PStack.0*, i32, i8*)** %32, align 8
  %34 = load %struct.PStack*, %struct.PStack** %8, align 8
  %35 = bitcast %struct.PStack* %34 to %struct.PStack.0*
  %36 = load i32, i32* @MDL_ERROR, align 4
  %37 = load i32, i32* @INDICATION, align 4
  %38 = or i32 %36, %37
  %39 = call i32 %33(%struct.PStack.0* %35, i32 %38, i8* inttoptr (i64 69 to i8*))
  %40 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %41 = call i32 @establishlink(%struct.FsmInst* %40)
  %42 = load i32, i32* @FLG_L3_INIT, align 4
  %43 = load %struct.PStack*, %struct.PStack** %8, align 8
  %44 = getelementptr inbounds %struct.PStack, %struct.PStack* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @test_and_clear_bit(i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %29, %18
  ret void
}

declare dso_local i64 @get_PollFlagFree(%struct.PStack*, %struct.sk_buff*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

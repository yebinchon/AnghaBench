; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_release_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_release_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32, i64 }
%struct.PStack.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@FLG_L2BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lc_release_req: l2 blocked\00", align 1
@DREL_TIMER_VALUE = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@ST_L3_LC_REL_WAIT = common dso_local global i32 0, align 4
@DL_RELEASE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lc_release_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lc_release_req(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %11 = load i32, i32* @FLG_L2BLOCK, align 4
  %12 = load %struct.PStack*, %struct.PStack** %7, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.PStack*, %struct.PStack** %7, align 8
  %19 = getelementptr inbounds %struct.PStack, %struct.PStack* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.PStack*, %struct.PStack** %7, align 8
  %25 = call i32 @l3_debug(%struct.PStack* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.PStack*, %struct.PStack** %7, align 8
  %28 = getelementptr inbounds %struct.PStack, %struct.PStack* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* @DREL_TIMER_VALUE, align 4
  %31 = load i32, i32* @EV_TIMEOUT, align 4
  %32 = call i32 @FsmAddTimer(i32* %29, i32 %30, i32 %31, i32* null, i32 51)
  br label %47

33:                                               ; preds = %3
  %34 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %35 = load i32, i32* @ST_L3_LC_REL_WAIT, align 4
  %36 = call i32 @FsmChangeState(%struct.FsmInst* %34, i32 %35)
  %37 = load %struct.PStack*, %struct.PStack** %7, align 8
  %38 = getelementptr inbounds %struct.PStack, %struct.PStack* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %39, align 8
  %41 = load %struct.PStack*, %struct.PStack** %7, align 8
  %42 = bitcast %struct.PStack* %41 to %struct.PStack.0*
  %43 = load i32, i32* @DL_RELEASE, align 4
  %44 = load i32, i32* @REQUEST, align 4
  %45 = or i32 %43, %44
  %46 = call i32 %40(%struct.PStack.0* %42, i32 %45, i32* null)
  br label %47

47:                                               ; preds = %33, %26
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

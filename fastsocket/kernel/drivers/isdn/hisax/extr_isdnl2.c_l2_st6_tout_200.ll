; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st6_tout_200.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st6_tout_200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.PStack.0*, i32, i8*)* }
%struct.PStack.0 = type opaque

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_DCHAN_BUSY = common dso_local global i32 0, align 4
@EV_L2_T200 = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@FLG_T200_RUN = common dso_local global i32 0, align 4
@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@DISC = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st6_tout_200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st6_tout_200(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %11 = load i32, i32* @FLG_LAPD, align 4
  %12 = load %struct.PStack*, %struct.PStack** %7, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* @FLG_DCHAN_BUSY, align 4
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = call i64 @test_bit(i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EV_L2_T200, align 4
  %33 = call i32 @FsmAddTimer(i32* %27, i32 %31, i32 %32, i32* null, i32 9)
  br label %87

34:                                               ; preds = %17, %3
  %35 = load %struct.PStack*, %struct.PStack** %7, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.PStack*, %struct.PStack** %7, align 8
  %40 = getelementptr inbounds %struct.PStack, %struct.PStack* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %34
  %45 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %46 = load i32, i32* @ST_L2_4, align 4
  %47 = call i32 @FsmChangeState(%struct.FsmInst* %45, i32 %46)
  %48 = load i32, i32* @FLG_T200_RUN, align 4
  %49 = load %struct.PStack*, %struct.PStack** %7, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = call i32 @test_and_clear_bit(i32 %48, i32* %51)
  %53 = load %struct.PStack*, %struct.PStack** %7, align 8
  %54 = getelementptr inbounds %struct.PStack, %struct.PStack* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.PStack.0*, i32, i8*)*, i32 (%struct.PStack.0*, i32, i8*)** %55, align 8
  %57 = load %struct.PStack*, %struct.PStack** %7, align 8
  %58 = bitcast %struct.PStack* %57 to %struct.PStack.0*
  %59 = load i32, i32* @MDL_ERROR, align 4
  %60 = load i32, i32* @INDICATION, align 4
  %61 = or i32 %59, %60
  %62 = call i32 %56(%struct.PStack.0* %58, i32 %61, i8* inttoptr (i64 72 to i8*))
  %63 = load %struct.PStack*, %struct.PStack** %7, align 8
  %64 = load i32, i32* @CONFIRM, align 4
  %65 = call i32 @lapb_dl_release_l2l3(%struct.PStack* %63, i32 %64)
  br label %86

66:                                               ; preds = %34
  %67 = load %struct.PStack*, %struct.PStack** %7, align 8
  %68 = getelementptr inbounds %struct.PStack, %struct.PStack* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.PStack*, %struct.PStack** %7, align 8
  %73 = getelementptr inbounds %struct.PStack, %struct.PStack* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load %struct.PStack*, %struct.PStack** %7, align 8
  %76 = getelementptr inbounds %struct.PStack, %struct.PStack* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EV_L2_T200, align 4
  %80 = call i32 @FsmAddTimer(i32* %74, i32 %78, i32 %79, i32* null, i32 9)
  %81 = load %struct.PStack*, %struct.PStack** %7, align 8
  %82 = load i32, i32* @DISC, align 4
  %83 = or i32 %82, 16
  %84 = load i32, i32* @CMD, align 4
  %85 = call i32 @send_uframe(%struct.PStack* %81, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %66, %44
  br label %87

87:                                               ; preds = %86, %24
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @lapb_dl_release_l2l3(%struct.PStack*, i32) #1

declare dso_local i32 @send_uframe(%struct.PStack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st8_tout_200.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st8_tout_200.c"
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
@FLG_T200_RUN = common dso_local global i32 0, align 4
@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st8_tout_200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st8_tout_200(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* @FLG_DCHAN_BUSY, align 4
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EV_L2_T200, align 4
  %33 = call i32 @FsmAddTimer(i32* %27, i32 %31, i32 %32, i32* null, i32 9)
  br label %75

34:                                               ; preds = %17, %3
  %35 = load i32, i32* @FLG_T200_RUN, align 4
  %36 = load %struct.PStack*, %struct.PStack** %7, align 8
  %37 = getelementptr inbounds %struct.PStack, %struct.PStack* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = call i32 @test_and_clear_bit(i32 %35, i32* %38)
  %40 = load %struct.PStack*, %struct.PStack** %7, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.PStack*, %struct.PStack** %7, align 8
  %45 = getelementptr inbounds %struct.PStack, %struct.PStack* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %34
  %50 = load %struct.PStack*, %struct.PStack** %7, align 8
  %51 = getelementptr inbounds %struct.PStack, %struct.PStack* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.PStack.0*, i32, i8*)*, i32 (%struct.PStack.0*, i32, i8*)** %52, align 8
  %54 = load %struct.PStack*, %struct.PStack** %7, align 8
  %55 = bitcast %struct.PStack* %54 to %struct.PStack.0*
  %56 = load i32, i32* @MDL_ERROR, align 4
  %57 = load i32, i32* @INDICATION, align 4
  %58 = or i32 %56, %57
  %59 = call i32 %53(%struct.PStack.0* %55, i32 %58, i8* inttoptr (i64 73 to i8*))
  %60 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %61 = call i32 @establishlink(%struct.FsmInst* %60)
  %62 = load i32, i32* @FLG_L3_INIT, align 4
  %63 = load %struct.PStack*, %struct.PStack** %7, align 8
  %64 = getelementptr inbounds %struct.PStack, %struct.PStack* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @test_and_clear_bit(i32 %62, i32* %65)
  br label %75

67:                                               ; preds = %34
  %68 = load %struct.PStack*, %struct.PStack** %7, align 8
  %69 = call i32 @transmit_enquiry(%struct.PStack* %68)
  %70 = load %struct.PStack*, %struct.PStack** %7, align 8
  %71 = getelementptr inbounds %struct.PStack, %struct.PStack* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %24, %67, %49
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @transmit_enquiry(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

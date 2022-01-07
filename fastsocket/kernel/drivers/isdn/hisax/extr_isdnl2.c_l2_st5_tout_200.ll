; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st5_tout_200.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st5_tout_200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32 (%struct.PStack.0*, i32, i32*)*, i32 }
%struct.PStack.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.PStack.1*, i32, i8*)* }
%struct.PStack.1 = type opaque

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_DCHAN_BUSY = common dso_local global i32 0, align 4
@EV_L2_T200 = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@FLG_T200_RUN = common dso_local global i32 0, align 4
@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@FLG_LAPB = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@SABME = common dso_local global i32 0, align 4
@SABM = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st5_tout_200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st5_tout_200(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  br label %119

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
  br i1 %43, label %44, label %87

44:                                               ; preds = %34
  %45 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %46 = load i32, i32* @ST_L2_4, align 4
  %47 = call i32 @FsmChangeState(%struct.FsmInst* %45, i32 %46)
  %48 = load i32, i32* @FLG_T200_RUN, align 4
  %49 = load %struct.PStack*, %struct.PStack** %7, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = call i32 @test_and_clear_bit(i32 %48, i32* %51)
  %53 = load %struct.PStack*, %struct.PStack** %7, align 8
  %54 = getelementptr inbounds %struct.PStack, %struct.PStack* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = call i32 @skb_queue_purge(i32* %55)
  %57 = load %struct.PStack*, %struct.PStack** %7, align 8
  %58 = getelementptr inbounds %struct.PStack, %struct.PStack* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.PStack.1*, i32, i8*)*, i32 (%struct.PStack.1*, i32, i8*)** %59, align 8
  %61 = load %struct.PStack*, %struct.PStack** %7, align 8
  %62 = bitcast %struct.PStack* %61 to %struct.PStack.1*
  %63 = load i32, i32* @MDL_ERROR, align 4
  %64 = load i32, i32* @INDICATION, align 4
  %65 = or i32 %63, %64
  %66 = call i32 %60(%struct.PStack.1* %62, i32 %65, i8* inttoptr (i64 71 to i8*))
  %67 = load i32, i32* @FLG_LAPB, align 4
  %68 = load %struct.PStack*, %struct.PStack** %7, align 8
  %69 = getelementptr inbounds %struct.PStack, %struct.PStack* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = call i64 @test_bit(i32 %67, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %44
  %74 = load %struct.PStack*, %struct.PStack** %7, align 8
  %75 = getelementptr inbounds %struct.PStack, %struct.PStack* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %76, align 8
  %78 = load %struct.PStack*, %struct.PStack** %7, align 8
  %79 = bitcast %struct.PStack* %78 to %struct.PStack.0*
  %80 = load i32, i32* @PH_DEACTIVATE, align 4
  %81 = load i32, i32* @REQUEST, align 4
  %82 = or i32 %80, %81
  %83 = call i32 %77(%struct.PStack.0* %79, i32 %82, i32* null)
  br label %84

84:                                               ; preds = %73, %44
  %85 = load %struct.PStack*, %struct.PStack** %7, align 8
  %86 = call i32 @st5_dl_release_l2l3(%struct.PStack* %85)
  br label %118

87:                                               ; preds = %34
  %88 = load %struct.PStack*, %struct.PStack** %7, align 8
  %89 = getelementptr inbounds %struct.PStack, %struct.PStack* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.PStack*, %struct.PStack** %7, align 8
  %94 = getelementptr inbounds %struct.PStack, %struct.PStack* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load %struct.PStack*, %struct.PStack** %7, align 8
  %97 = getelementptr inbounds %struct.PStack, %struct.PStack* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @EV_L2_T200, align 4
  %101 = call i32 @FsmAddTimer(i32* %95, i32 %99, i32 %100, i32* null, i32 9)
  %102 = load %struct.PStack*, %struct.PStack** %7, align 8
  %103 = load i32, i32* @FLG_MOD128, align 4
  %104 = load %struct.PStack*, %struct.PStack** %7, align 8
  %105 = getelementptr inbounds %struct.PStack, %struct.PStack* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i64 @test_bit(i32 %103, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %87
  %110 = load i32, i32* @SABME, align 4
  br label %113

111:                                              ; preds = %87
  %112 = load i32, i32* @SABM, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = or i32 %114, 16
  %116 = load i32, i32* @CMD, align 4
  %117 = call i32 @send_uframe(%struct.PStack* %102, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %84
  br label %119

119:                                              ; preds = %118, %24
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @st5_dl_release_l2l3(%struct.PStack*) #1

declare dso_local i32 @send_uframe(%struct.PStack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

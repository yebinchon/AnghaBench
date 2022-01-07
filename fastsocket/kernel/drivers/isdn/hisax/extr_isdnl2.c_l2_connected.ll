; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_connected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.PStack.0*, i32, i32*)*, i32, i32 (%struct.PStack.1*, i32, i32*)*, i32, i32, i64, i64, i32 }
%struct.PStack.0 = type opaque
%struct.PStack.1 = type opaque
%struct.sk_buff = type { i32 }

@FLG_PEND_REL = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@DL_ESTABLISH = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_connected(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.PStack*, %struct.PStack** %11, align 8
  store %struct.PStack* %12, %struct.PStack** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call i32 @get_PollFlag(%struct.PStack* %15, %struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @l2_mdl_error_ua(%struct.FsmInst* %20, i32 %21, i8* %22)
  br label %127

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* @FLG_PEND_REL, align 4
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  %31 = call i64 @test_and_clear_bit(i32 %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @l2_disconnect(%struct.FsmInst* %34, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i32, i32* @FLG_L3_INIT, align 4
  %40 = load %struct.PStack*, %struct.PStack** %7, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 9
  %43 = call i64 @test_and_clear_bit(i32 %39, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @DL_ESTABLISH, align 4
  %47 = load i32, i32* @CONFIRM, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %9, align 4
  br label %68

49:                                               ; preds = %38
  %50 = load %struct.PStack*, %struct.PStack** %7, align 8
  %51 = getelementptr inbounds %struct.PStack, %struct.PStack* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.PStack*, %struct.PStack** %7, align 8
  %55 = getelementptr inbounds %struct.PStack, %struct.PStack* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.PStack*, %struct.PStack** %7, align 8
  %61 = getelementptr inbounds %struct.PStack, %struct.PStack* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = call i32 @skb_queue_purge(i32* %62)
  %64 = load i32, i32* @DL_ESTABLISH, align 4
  %65 = load i32, i32* @INDICATION, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %59, %49
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.PStack*, %struct.PStack** %7, align 8
  %70 = call i32 @stop_t200(%struct.PStack* %69, i32 5)
  %71 = load %struct.PStack*, %struct.PStack** %7, align 8
  %72 = getelementptr inbounds %struct.PStack, %struct.PStack* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.PStack*, %struct.PStack** %7, align 8
  %75 = getelementptr inbounds %struct.PStack, %struct.PStack* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.PStack*, %struct.PStack** %7, align 8
  %78 = getelementptr inbounds %struct.PStack, %struct.PStack* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.PStack*, %struct.PStack** %7, align 8
  %81 = getelementptr inbounds %struct.PStack, %struct.PStack* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 7
  store i64 0, i64* %82, align 8
  %83 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %84 = load i32, i32* @ST_L2_7, align 4
  %85 = call i32 @FsmChangeState(%struct.FsmInst* %83, i32 %84)
  %86 = load %struct.PStack*, %struct.PStack** %7, align 8
  %87 = getelementptr inbounds %struct.PStack, %struct.PStack* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 6
  %89 = load %struct.PStack*, %struct.PStack** %7, align 8
  %90 = getelementptr inbounds %struct.PStack, %struct.PStack* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EV_L2_T203, align 4
  %94 = call i32 @FsmAddTimer(i32* %88, i32 %92, i32 %93, i32* null, i32 4)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %106

97:                                               ; preds = %68
  %98 = load %struct.PStack*, %struct.PStack** %7, align 8
  %99 = getelementptr inbounds %struct.PStack, %struct.PStack* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32 (%struct.PStack.1*, i32, i32*)*, i32 (%struct.PStack.1*, i32, i32*)** %100, align 8
  %102 = load %struct.PStack*, %struct.PStack** %7, align 8
  %103 = bitcast %struct.PStack* %102 to %struct.PStack.1*
  %104 = load i32, i32* %9, align 4
  %105 = call i32 %101(%struct.PStack.1* %103, i32 %104, i32* null)
  br label %106

106:                                              ; preds = %97, %68
  %107 = load %struct.PStack*, %struct.PStack** %7, align 8
  %108 = getelementptr inbounds %struct.PStack, %struct.PStack* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = call i32 @skb_queue_empty(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %106
  %113 = load %struct.PStack*, %struct.PStack** %7, align 8
  %114 = call i64 @cansend(%struct.PStack* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.PStack*, %struct.PStack** %7, align 8
  %118 = getelementptr inbounds %struct.PStack, %struct.PStack* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %119, align 8
  %121 = load %struct.PStack*, %struct.PStack** %7, align 8
  %122 = bitcast %struct.PStack* %121 to %struct.PStack.0*
  %123 = load i32, i32* @PH_PULL, align 4
  %124 = load i32, i32* @REQUEST, align 4
  %125 = or i32 %123, %124
  %126 = call i32 %120(%struct.PStack.0* %122, i32 %125, i32* null)
  br label %127

127:                                              ; preds = %19, %116, %112, %106
  ret void
}

declare dso_local i32 @get_PollFlag(%struct.PStack*, %struct.sk_buff*) #1

declare dso_local i32 @l2_mdl_error_ua(%struct.FsmInst*, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2_disconnect(%struct.FsmInst*, i32, i8*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @cansend(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

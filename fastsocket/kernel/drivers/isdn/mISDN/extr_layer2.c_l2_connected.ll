; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_connected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i64, i64, i32, i32, i32, i64, i64, i32 }
%struct.sk_buff = type { i32 }

@FLG_PEND_REL = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@DL_ESTABLISH_CNF = common dso_local global i32 0, align 4
@DL_ESTABLISH_IND = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@EV_L2_ACK_PULL = common dso_local global i32 0, align 4
@MDL_STATUS_UP_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_connected(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.layer2*, %struct.layer2** %11, align 8
  store %struct.layer2* %12, %struct.layer2** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load %struct.layer2*, %struct.layer2** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call i32 @get_PollFlag(%struct.layer2* %15, %struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @l2_mdl_error_ua(%struct.FsmInst* %20, i32 %21, i8* %22)
  br label %107

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* @FLG_PEND_REL, align 4
  %28 = load %struct.layer2*, %struct.layer2** %7, align 8
  %29 = getelementptr inbounds %struct.layer2, %struct.layer2* %28, i32 0, i32 8
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @l2_disconnect(%struct.FsmInst* %33, i32 %34, i32* null)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i32, i32* @FLG_L3_INIT, align 4
  %38 = load %struct.layer2*, %struct.layer2** %7, align 8
  %39 = getelementptr inbounds %struct.layer2, %struct.layer2* %38, i32 0, i32 8
  %40 = call i64 @test_and_clear_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @DL_ESTABLISH_CNF, align 4
  store i32 %43, i32* %9, align 4
  br label %58

44:                                               ; preds = %36
  %45 = load %struct.layer2*, %struct.layer2** %7, align 8
  %46 = getelementptr inbounds %struct.layer2, %struct.layer2* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.layer2*, %struct.layer2** %7, align 8
  %49 = getelementptr inbounds %struct.layer2, %struct.layer2* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.layer2*, %struct.layer2** %7, align 8
  %54 = getelementptr inbounds %struct.layer2, %struct.layer2* %53, i32 0, i32 3
  %55 = call i32 @skb_queue_purge(i32* %54)
  %56 = load i32, i32* @DL_ESTABLISH_IND, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %52, %44
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.layer2*, %struct.layer2** %7, align 8
  %60 = call i32 @stop_t200(%struct.layer2* %59, i32 5)
  %61 = load %struct.layer2*, %struct.layer2** %7, align 8
  %62 = getelementptr inbounds %struct.layer2, %struct.layer2* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.layer2*, %struct.layer2** %7, align 8
  %64 = getelementptr inbounds %struct.layer2, %struct.layer2* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.layer2*, %struct.layer2** %7, align 8
  %66 = getelementptr inbounds %struct.layer2, %struct.layer2* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.layer2*, %struct.layer2** %7, align 8
  %68 = getelementptr inbounds %struct.layer2, %struct.layer2* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %70 = load i32, i32* @ST_L2_7, align 4
  %71 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %69, i32 %70)
  %72 = load %struct.layer2*, %struct.layer2** %7, align 8
  %73 = getelementptr inbounds %struct.layer2, %struct.layer2* %72, i32 0, i32 5
  %74 = load %struct.layer2*, %struct.layer2** %7, align 8
  %75 = getelementptr inbounds %struct.layer2, %struct.layer2* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EV_L2_T203, align 4
  %78 = call i32 @mISDN_FsmAddTimer(i32* %73, i32 %76, i32 %77, i32* null, i32 4)
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %85

81:                                               ; preds = %58
  %82 = load %struct.layer2*, %struct.layer2** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @l2up_create(%struct.layer2* %82, i32 %83, i32 0, i32* null)
  br label %85

85:                                               ; preds = %81, %58
  %86 = load %struct.layer2*, %struct.layer2** %7, align 8
  %87 = getelementptr inbounds %struct.layer2, %struct.layer2* %86, i32 0, i32 3
  %88 = call i64 @skb_queue_len(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.layer2*, %struct.layer2** %7, align 8
  %92 = call i64 @cansend(%struct.layer2* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %96 = load i32, i32* @EV_L2_ACK_PULL, align 4
  %97 = call i32 @mISDN_FsmEvent(%struct.FsmInst* %95, i32 %96, i32* null)
  br label %98

98:                                               ; preds = %94, %90, %85
  %99 = load %struct.layer2*, %struct.layer2** %7, align 8
  %100 = getelementptr inbounds %struct.layer2, %struct.layer2* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.layer2*, %struct.layer2** %7, align 8
  %105 = load i32, i32* @MDL_STATUS_UP_IND, align 4
  %106 = call i32 @l2_tei(%struct.layer2* %104, i32 %105, i32 0)
  br label %107

107:                                              ; preds = %19, %103, %98
  ret void
}

declare dso_local i32 @get_PollFlag(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @l2_mdl_error_ua(%struct.FsmInst*, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2_disconnect(%struct.FsmInst*, i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @l2up_create(%struct.layer2*, i32, i32, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @cansend(%struct.layer2*) #1

declare dso_local i32 @mISDN_FsmEvent(%struct.FsmInst*, i32, i32*) #1

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

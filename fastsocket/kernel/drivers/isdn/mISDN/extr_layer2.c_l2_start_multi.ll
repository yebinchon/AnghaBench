; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_start_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_start_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i32, i32, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }

@UA = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@DL_ESTABLISH_IND = common dso_local global i32 0, align 4
@MDL_STATUS_UP_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_start_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_start_multi(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.layer2*, %struct.layer2** %10, align 8
  store %struct.layer2* %11, %struct.layer2** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.layer2*, %struct.layer2** %7, align 8
  %15 = getelementptr inbounds %struct.layer2, %struct.layer2* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.layer2*, %struct.layer2** %7, align 8
  %17 = getelementptr inbounds %struct.layer2, %struct.layer2* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.layer2*, %struct.layer2** %7, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.layer2*, %struct.layer2** %7, align 8
  %21 = getelementptr inbounds %struct.layer2, %struct.layer2* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.layer2*, %struct.layer2** %7, align 8
  %23 = call i32 @clear_exception(%struct.layer2* %22)
  %24 = load %struct.layer2*, %struct.layer2** %7, align 8
  %25 = load i32, i32* @UA, align 4
  %26 = load %struct.layer2*, %struct.layer2** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call i32 @get_PollFlag(%struct.layer2* %26, %struct.sk_buff* %27)
  %29 = or i32 %25, %28
  %30 = load i32, i32* @RSP, align 4
  %31 = call i32 @send_uframe(%struct.layer2* %24, i32* null, i32 %29, i32 %30)
  %32 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %33 = load i32, i32* @ST_L2_7, align 4
  %34 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %32, i32 %33)
  %35 = load %struct.layer2*, %struct.layer2** %7, align 8
  %36 = getelementptr inbounds %struct.layer2, %struct.layer2* %35, i32 0, i32 2
  %37 = load %struct.layer2*, %struct.layer2** %7, align 8
  %38 = getelementptr inbounds %struct.layer2, %struct.layer2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EV_L2_T203, align 4
  %41 = call i32 @mISDN_FsmAddTimer(i32* %36, i32 %39, i32 %40, i32* null, i32 3)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @skb_trim(%struct.sk_buff* %42, i32 0)
  %44 = load %struct.layer2*, %struct.layer2** %7, align 8
  %45 = load i32, i32* @DL_ESTABLISH_IND, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @l2up(%struct.layer2* %44, i32 %45, %struct.sk_buff* %46)
  %48 = load %struct.layer2*, %struct.layer2** %7, align 8
  %49 = getelementptr inbounds %struct.layer2, %struct.layer2* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %3
  %53 = load %struct.layer2*, %struct.layer2** %7, align 8
  %54 = load i32, i32* @MDL_STATUS_UP_IND, align 4
  %55 = call i32 @l2_tei(%struct.layer2* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52, %3
  ret void
}

declare dso_local i32 @clear_exception(%struct.layer2*) #1

declare dso_local i32 @send_uframe(%struct.layer2*, i32*, i32, i32) #1

declare dso_local i32 @get_PollFlag(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2up(%struct.layer2*, i32, %struct.sk_buff*) #1

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

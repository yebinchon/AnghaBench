; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_restart_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_restart_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i64, i32, i32, i32, i64, i64 }
%struct.sk_buff = type { i32 }

@UA = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@MDL_ERROR_IND = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@DL_ESTABLISH_IND = common dso_local global i32 0, align 4
@EV_L2_ACK_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_restart_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_restart_multi(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  store i32 0, i32* %9, align 4
  %15 = load %struct.layer2*, %struct.layer2** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* @UA, align 4
  %18 = load %struct.layer2*, %struct.layer2** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @get_PollFlag(%struct.layer2* %18, %struct.sk_buff* %19)
  %21 = or i32 %17, %20
  %22 = load i32, i32* @RSP, align 4
  %23 = call i32 @send_uframe(%struct.layer2* %15, %struct.sk_buff* %16, i32 %21, i32 %22)
  %24 = load %struct.layer2*, %struct.layer2** %7, align 8
  %25 = load i32, i32* @MDL_ERROR_IND, align 4
  %26 = call i32 @l2mgr(%struct.layer2* %24, i32 %25, i8* inttoptr (i64 70 to i8*))
  %27 = load %struct.layer2*, %struct.layer2** %7, align 8
  %28 = getelementptr inbounds %struct.layer2, %struct.layer2* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.layer2*, %struct.layer2** %7, align 8
  %31 = getelementptr inbounds %struct.layer2, %struct.layer2* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.layer2*, %struct.layer2** %7, align 8
  %36 = getelementptr inbounds %struct.layer2, %struct.layer2* %35, i32 0, i32 2
  %37 = call i32 @skb_queue_purge(i32* %36)
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %3
  %39 = load %struct.layer2*, %struct.layer2** %7, align 8
  %40 = call i32 @clear_exception(%struct.layer2* %39)
  %41 = load %struct.layer2*, %struct.layer2** %7, align 8
  %42 = getelementptr inbounds %struct.layer2, %struct.layer2* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.layer2*, %struct.layer2** %7, align 8
  %44 = getelementptr inbounds %struct.layer2, %struct.layer2* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.layer2*, %struct.layer2** %7, align 8
  %46 = getelementptr inbounds %struct.layer2, %struct.layer2* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.layer2*, %struct.layer2** %7, align 8
  %48 = getelementptr inbounds %struct.layer2, %struct.layer2* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %50 = load i32, i32* @ST_L2_7, align 4
  %51 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %49, i32 %50)
  %52 = load %struct.layer2*, %struct.layer2** %7, align 8
  %53 = call i32 @stop_t200(%struct.layer2* %52, i32 3)
  %54 = load %struct.layer2*, %struct.layer2** %7, align 8
  %55 = getelementptr inbounds %struct.layer2, %struct.layer2* %54, i32 0, i32 4
  %56 = load %struct.layer2*, %struct.layer2** %7, align 8
  %57 = getelementptr inbounds %struct.layer2, %struct.layer2* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EV_L2_T203, align 4
  %60 = call i32 @mISDN_FsmRestartTimer(i32* %55, i32 %58, i32 %59, i32* null, i32 3)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %38
  %64 = load %struct.layer2*, %struct.layer2** %7, align 8
  %65 = load i32, i32* @DL_ESTABLISH_IND, align 4
  %66 = call i32 @l2up_create(%struct.layer2* %64, i32 %65, i32 0, i32* null)
  br label %67

67:                                               ; preds = %63, %38
  %68 = load %struct.layer2*, %struct.layer2** %7, align 8
  %69 = getelementptr inbounds %struct.layer2, %struct.layer2* %68, i32 0, i32 2
  %70 = call i64 @skb_queue_len(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.layer2*, %struct.layer2** %7, align 8
  %74 = call i64 @cansend(%struct.layer2* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %78 = load i32, i32* @EV_L2_ACK_PULL, align 4
  %79 = call i32 @mISDN_FsmEvent(%struct.FsmInst* %77, i32 %78, i32* null)
  br label %80

80:                                               ; preds = %76, %72, %67
  ret void
}

declare dso_local i32 @send_uframe(%struct.layer2*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @get_PollFlag(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @clear_exception(%struct.layer2*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i32 @mISDN_FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @l2up_create(%struct.layer2*, i32, i32, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @cansend(%struct.layer2*) #1

declare dso_local i32 @mISDN_FsmEvent(%struct.FsmInst*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

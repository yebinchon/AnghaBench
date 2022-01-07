; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_mpa_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_mpa_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ietf_mpa_v1 = type { i32 }

@MAX_CM_BUFFER = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get a Free pkt\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPA_KEY_REPLY = common dso_local global i32 0, align 4
@IETF_MPA_FLAGS_REJECT = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@SET_FIN = common dso_local global i32 0, align 4
@NES_CM_STATE_FIN_WAIT1 = common dso_local global i32 0, align 4
@NES_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_node*)* @send_mpa_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mpa_reject(%struct.nes_cm_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nes_cm_node*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ietf_mpa_v1*, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* %5, i32** %6, align 8
  store i32** %6, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @MAX_CM_BUFFER, align 4
  %11 = call %struct.sk_buff* @dev_alloc_skb(i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @NES_DBG_CM, align 4
  %16 = call i32 @nes_debug(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32, i32* @MPA_KEY_REPLY, align 4
  %23 = call i32 @cm_build_mpa_frame(%struct.nes_cm_node* %20, i32** %21, i32* %8, i32* null, i32 %22)
  %24 = load i32**, i32*** %7, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.ietf_mpa_v1*
  store %struct.ietf_mpa_v1* %26, %struct.ietf_mpa_v1** %9, align 8
  %27 = load i32, i32* @IETF_MPA_FLAGS_REJECT, align 4
  %28 = load %struct.ietf_mpa_v1*, %struct.ietf_mpa_v1** %9, align 8
  %29 = getelementptr inbounds %struct.ietf_mpa_v1, %struct.ietf_mpa_v1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SET_ACK, align 4
  %38 = load i32, i32* @SET_FIN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @form_cm_frame(%struct.sk_buff* %32, %struct.nes_cm_node* %33, i32* null, i32 0, i32* %35, i32 %36, i32 %39)
  %41 = load i32, i32* @NES_CM_STATE_FIN_WAIT1, align 4
  %42 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %43 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @NES_TIMER_TYPE_SEND, align 4
  %47 = call i32 @schedule_nes_timer(%struct.nes_cm_node* %44, %struct.sk_buff* %45, i32 %46, i32 1, i32 0)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %19, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

declare dso_local i32 @cm_build_mpa_frame(%struct.nes_cm_node*, i32**, i32*, i32*, i32) #1

declare dso_local i32 @form_cm_frame(%struct.sk_buff*, %struct.nes_cm_node*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @schedule_nes_timer(%struct.nes_cm_node*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

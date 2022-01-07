; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32 }
%struct.sk_buff = type { i32 }

@SET_RST = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@MAX_CM_BUFFER = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get a Free pkt\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NES_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_node*, %struct.sk_buff*)* @send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_reset(%struct.nes_cm_node* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load i32, i32* @SET_RST, align 4
  %9 = load i32, i32* @SET_ACK, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MAX_CM_BUFFER, align 4
  %15 = call %struct.sk_buff* @dev_alloc_skb(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @NES_DBG_CM, align 4
  %21 = call i32 @nes_debug(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @form_cm_frame(%struct.sk_buff* %25, %struct.nes_cm_node* %26, i32* null, i32 0, i32* null, i32 0, i32 %27)
  %29 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @NES_TIMER_TYPE_SEND, align 4
  %32 = call i32 @schedule_nes_timer(%struct.nes_cm_node* %29, %struct.sk_buff* %30, i32 %31, i32 0, i32 1)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

declare dso_local i32 @form_cm_frame(%struct.sk_buff*, %struct.nes_cm_node*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @schedule_nes_timer(%struct.nes_cm_node*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

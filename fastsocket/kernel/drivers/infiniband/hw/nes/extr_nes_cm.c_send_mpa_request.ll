; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_mpa_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_mpa_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32 }
%struct.sk_buff = type { i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"skb set to NULL\0A\00", align 1
@MPA_KEY_REQUEST = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@NES_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_node*, %struct.sk_buff*)* @send_mpa_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mpa_request(%struct.nes_cm_node* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* %6, i32** %7, align 8
  store i32** %7, i32*** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @NES_DBG_CM, align 4
  %14 = call i32 @nes_debug(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32, i32* @MPA_KEY_REQUEST, align 4
  %19 = call i32 @cm_build_mpa_frame(%struct.nes_cm_node* %16, i32** %17, i32* %9, i32* null, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SET_ACK, align 4
  %26 = call i32 @form_cm_frame(%struct.sk_buff* %20, %struct.nes_cm_node* %21, i32* null, i32 0, i32* %23, i32 %24, i32 %25)
  %27 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @NES_TIMER_TYPE_SEND, align 4
  %30 = call i32 @schedule_nes_timer(%struct.nes_cm_node* %27, %struct.sk_buff* %28, i32 %29, i32 1, i32 0)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

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

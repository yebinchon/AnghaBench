; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_active_open_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_active_open_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32 }
%struct.sk_buff = type { i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ERROR active err called for cm_node=%p, state=%d\0A\00", align 1
@NES_CM_STATE_CLOSED = common dso_local global i32 0, align 4
@NES_CM_EVENT_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*, %struct.sk_buff*, i32)* @active_open_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @active_open_err(%struct.nes_cm_node* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %8 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %7)
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* @NES_DBG_CM, align 4
  %13 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %14 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %15 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nes_debug(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_node* %13, i32 %16)
  %18 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %19 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %18)
  %20 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @send_reset(%struct.nes_cm_node* %20, %struct.sk_buff* %21)
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %24)
  br label %26

26:                                               ; preds = %23, %11
  %27 = load i32, i32* @NES_CM_STATE_CLOSED, align 4
  %28 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %29 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %31 = load i32, i32* @NES_CM_EVENT_ABORTED, align 4
  %32 = call i32 @create_event(%struct.nes_cm_node* %30, i32 %31)
  ret void
}

declare dso_local i32 @cleanup_retrans_entry(%struct.nes_cm_node*) #1

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_cm_node*, i32) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @send_reset(%struct.nes_cm_node*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @create_event(%struct.nes_cm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_syn_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_syn_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"drop syn due to backlog pressure \0A\00", align 1
@cm_backlog_drops = common dso_local global i32 0, align 4
@NES_CM_STATE_SYN_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*)* @handle_syn_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_syn_pkt(%struct.nes_cm_node* %0, %struct.sk_buff* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  %10 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %11 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_trim(%struct.sk_buff* %17, i32 0)
  %19 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %24 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %94 [
    i32 130, label %26
    i32 131, label %26
    i32 133, label %30
    i32 139, label %85
    i32 129, label %93
    i32 137, label %93
    i32 136, label %93
    i32 135, label %93
    i32 132, label %93
    i32 134, label %93
    i32 138, label %93
    i32 128, label %93
  ]

26:                                               ; preds = %3, %3
  %27 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @active_open_err(%struct.nes_cm_node* %27, %struct.sk_buff* %28, i32 1)
  br label %97

30:                                               ; preds = %3
  %31 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %32 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %37 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load i32, i32* @NES_DBG_CM, align 4
  %44 = call i32 @nes_debug(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @cm_backlog_drops, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @cm_backlog_drops, align 4
  %47 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @passive_open_err(%struct.nes_cm_node* %47, %struct.sk_buff* %48, i32 0)
  br label %97

50:                                               ; preds = %30
  %51 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %52 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @handle_tcp_options(%struct.nes_cm_node* %51, %struct.tcphdr* %52, %struct.sk_buff* %53, i32 %54, i32 1)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @passive_open_err(%struct.nes_cm_node* %59, %struct.sk_buff* %60, i32 0)
  br label %97

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %66 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %69 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %73 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %75 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = load i32, i32* @NES_CM_STATE_SYN_RCVD, align 4
  %80 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %81 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @send_syn(%struct.nes_cm_node* %82, i32 1, %struct.sk_buff* %83)
  br label %97

85:                                               ; preds = %3
  %86 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %87 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %86)
  %88 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %89 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %88)
  %90 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @send_reset(%struct.nes_cm_node* %90, %struct.sk_buff* %91)
  br label %97

93:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %94

94:                                               ; preds = %3, %93
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @drop_packet(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %94, %85, %62, %58, %42, %26
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @active_open_err(%struct.nes_cm_node*, %struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

declare dso_local i32 @passive_open_err(%struct.nes_cm_node*, %struct.sk_buff*, i32) #1

declare dso_local i32 @handle_tcp_options(%struct.nes_cm_node*, %struct.tcphdr*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @send_syn(%struct.nes_cm_node*, i32, %struct.sk_buff*) #1

declare dso_local i32 @cleanup_retrans_entry(%struct.nes_cm_node*) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @send_reset(%struct.nes_cm_node*, %struct.sk_buff*) #1

declare dso_local i32 @drop_packet(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

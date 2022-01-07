; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_synack_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_synack_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8* }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cm_node=%p tcp_options failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*)* @handle_synack_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_synack_pkt(%struct.nes_cm_node* %0, %struct.sk_buff* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  %10 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %11 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_trim(%struct.sk_buff* %17, i32 0)
  %19 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @ntohl(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %24 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %103 [
    i32 130, label %26
    i32 132, label %68
    i32 133, label %72
    i32 139, label %87
    i32 137, label %102
    i32 136, label %102
    i32 135, label %102
    i32 134, label %102
    i32 129, label %102
    i32 138, label %102
    i32 128, label %102
    i32 131, label %102
  ]

26:                                               ; preds = %3
  %27 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %28 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %27)
  %29 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %30 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @check_syn(%struct.nes_cm_node* %29, %struct.tcphdr* %30, %struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %106

35:                                               ; preds = %26
  %36 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ntohl(i32 %38)
  %40 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %41 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %44 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @handle_tcp_options(%struct.nes_cm_node* %43, %struct.tcphdr* %44, %struct.sk_buff* %45, i32 %46, i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load i32, i32* @NES_DBG_CM, align 4
  %52 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %53 = call i32 @nes_debug(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_node* %52)
  br label %106

54:                                               ; preds = %35
  %55 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %56 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr i8, i8* %57, i64 1
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %61 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @send_mpa_request(%struct.nes_cm_node* %63, %struct.sk_buff* %64)
  %66 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %67 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %66, i32 0, i32 0
  store i32 131, i32* %67, align 8
  br label %106

68:                                               ; preds = %3
  %69 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @passive_open_err(%struct.nes_cm_node* %69, %struct.sk_buff* %70, i32 1)
  br label %106

72:                                               ; preds = %3
  %73 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %74 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ntohl(i32 %75)
  %77 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %78 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %81 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %80)
  %82 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %83 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %82, i32 0, i32 0
  store i32 139, i32* %83, align 8
  %84 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @send_reset(%struct.nes_cm_node* %84, %struct.sk_buff* %85)
  br label %106

87:                                               ; preds = %3
  %88 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %89 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ntohl(i32 %90)
  %92 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %93 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %96 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %95)
  %97 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %98 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %97)
  %99 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @send_reset(%struct.nes_cm_node* %99, %struct.sk_buff* %100)
  br label %106

102:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %103

103:                                              ; preds = %3, %102
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @drop_packet(%struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %34, %103, %87, %72, %68, %54, %50
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @cleanup_retrans_entry(%struct.nes_cm_node*) #1

declare dso_local i32 @check_syn(%struct.nes_cm_node*, %struct.tcphdr*, %struct.sk_buff*) #1

declare dso_local i32 @handle_tcp_options(%struct.nes_cm_node*, %struct.tcphdr*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_cm_node*) #1

declare dso_local i32 @send_mpa_request(%struct.nes_cm_node*, %struct.sk_buff*) #1

declare dso_local i32 @passive_open_err(%struct.nes_cm_node*, %struct.sk_buff*, i32) #1

declare dso_local i32 @send_reset(%struct.nes_cm_node*, %struct.sk_buff*) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @drop_packet(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

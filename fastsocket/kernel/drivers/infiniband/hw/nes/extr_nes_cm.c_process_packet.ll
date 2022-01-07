; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nes_cm_core = type { i32 }
%struct.tcphdr = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@NES_PKT_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"process_packet: cm_node=%p state =%d syn=%d ack=%d rst=%d fin=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*, %struct.sk_buff*, %struct.nes_cm_core*)* @process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_packet(%struct.nes_cm_node* %0, %struct.sk_buff* %1, %struct.nes_cm_core* %2) #0 {
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nes_cm_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.nes_cm_core* %2, %struct.nes_cm_core** %6, align 8
  %11 = load i32, i32* @NES_PKT_TYPE_UNKNOWN, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %12)
  store %struct.tcphdr* %13, %struct.tcphdr** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 2
  %20 = call i32 @skb_pull(%struct.sk_buff* %14, i32 %19)
  %21 = load i32, i32* @NES_DBG_CM, align 4
  %22 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %23 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %24 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @nes_debug(i32 %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_node* %22, i32 %25, i64 %28, i64 %31, i64 %34, i64 %37)
  %39 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 130, i32* %7, align 4
  br label %64

44:                                               ; preds = %3
  %45 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %46 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  store i32 129, i32* %7, align 4
  %50 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %51 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 128, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 131, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %101 [
    i32 129, label %72
    i32 128, label %77
    i32 131, label %82
    i32 130, label %96
  ]

72:                                               ; preds = %70
  %73 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %76 = call i32 @handle_syn_pkt(%struct.nes_cm_node* %73, %struct.sk_buff* %74, %struct.tcphdr* %75)
  br label %116

77:                                               ; preds = %70
  %78 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %81 = call i32 @handle_synack_pkt(%struct.nes_cm_node* %78, %struct.sk_buff* %79, %struct.tcphdr* %80)
  br label %116

82:                                               ; preds = %70
  %83 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %86 = call i32 @handle_ack_pkt(%struct.nes_cm_node* %83, %struct.sk_buff* %84, %struct.tcphdr* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %94 = call i32 @handle_fin_pkt(%struct.nes_cm_node* %93)
  br label %95

95:                                               ; preds = %92, %89, %82
  br label %116

96:                                               ; preds = %70
  %97 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %100 = call i32 @handle_rst_pkt(%struct.nes_cm_node* %97, %struct.sk_buff* %98, %struct.tcphdr* %99)
  br label %116

101:                                              ; preds = %70
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %106 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @check_seq(%struct.nes_cm_node* %105, %struct.tcphdr* %106, %struct.sk_buff* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %112 = call i32 @handle_fin_pkt(%struct.nes_cm_node* %111)
  br label %113

113:                                              ; preds = %110, %104, %101
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32 @drop_packet(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %113, %96, %95, %77, %72
  ret void
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nes_debug(i32, i8*, %struct.nes_cm_node*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @handle_syn_pkt(%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @handle_synack_pkt(%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @handle_ack_pkt(%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @handle_fin_pkt(%struct.nes_cm_node*) #1

declare dso_local i32 @handle_rst_pkt(%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @check_seq(%struct.nes_cm_node*, %struct.tcphdr*, %struct.sk_buff*) #1

declare dso_local i32 @drop_packet(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

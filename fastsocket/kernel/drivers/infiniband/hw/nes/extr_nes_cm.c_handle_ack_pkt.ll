; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_ack_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_ack_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_node*, %struct.sk_buff*, %struct.tcphdr*)* @handle_ack_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ack_pkt(%struct.nes_cm_node* %0, %struct.sk_buff* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nes_cm_node*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %13 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @check_seq(%struct.nes_cm_node* %19, %struct.tcphdr* %20, %struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %182

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 2
  %33 = call i32 @skb_pull(%struct.sk_buff* %28, i32 %32)
  %34 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ntohl(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %42 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %175 [
    i32 131, label %44
    i32 138, label %83
    i32 132, label %104
    i32 134, label %130
    i32 140, label %138
    i32 135, label %146
    i32 139, label %146
    i32 137, label %167
    i32 130, label %174
    i32 136, label %174
    i32 129, label %174
    i32 133, label %174
    i32 128, label %174
  ]

44:                                               ; preds = %27
  %45 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %46 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %45)
  %47 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %48 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @handle_tcp_options(%struct.nes_cm_node* %47, %struct.tcphdr* %48, %struct.sk_buff* %49, i32 %50, i32 1)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %180

55:                                               ; preds = %44
  %56 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ntohl(i32 %58)
  %60 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %61 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %64 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %63, i32 0, i32 0
  store i32 138, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %55
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %68, i64 %70
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %74 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @handle_rcv_mpa(%struct.nes_cm_node* %76, %struct.sk_buff* %77)
  br label %82

79:                                               ; preds = %55
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %79, %67
  br label %180

83:                                               ; preds = %27
  %84 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %85 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %89, i64 %91
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %95 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @handle_rcv_mpa(%struct.nes_cm_node* %97, %struct.sk_buff* %98)
  br label %103

100:                                              ; preds = %83
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i32 @drop_packet(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %100, %88
  br label %180

104:                                              ; preds = %27
  %105 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @ntohl(i32 %107)
  %109 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %110 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %104
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr i8, i8* %115, i64 %117
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %121 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i32 @handle_rcv_mpa(%struct.nes_cm_node* %123, %struct.sk_buff* %124)
  br label %129

126:                                              ; preds = %104
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %127)
  br label %129

129:                                              ; preds = %126, %114
  br label %180

130:                                              ; preds = %27
  %131 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %132 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %131)
  %133 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %134 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %133, i32 0, i32 0
  store i32 140, i32* %134, align 8
  %135 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = call i32 @send_reset(%struct.nes_cm_node* %135, %struct.sk_buff* %136)
  br label %180

138:                                              ; preds = %27
  %139 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %140 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %139)
  %141 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %142 = call i32 @add_ref_cm_node(%struct.nes_cm_node* %141)
  %143 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = call i32 @send_reset(%struct.nes_cm_node* %143, %struct.sk_buff* %144)
  br label %180

146:                                              ; preds = %27, %27
  %147 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %148 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %147)
  %149 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %150 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %149, i32 0, i32 0
  store i32 140, i32* %150, align 8
  %151 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %152 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %154, align 8
  %156 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %157 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = call i32 %155(%struct.TYPE_4__* %158)
  %160 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %161 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %164 = call i32 @rem_ref_cm_node(i32 %162, %struct.nes_cm_node* %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = call i32 @drop_packet(%struct.sk_buff* %165)
  br label %180

167:                                              ; preds = %27
  %168 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %169 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call i32 @drop_packet(%struct.sk_buff* %170)
  %172 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %173 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %172, i32 0, i32 0
  store i32 136, i32* %173, align 8
  br label %180

174:                                              ; preds = %27, %27, %27, %27, %27
  br label %175

175:                                              ; preds = %27, %174
  %176 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %177 = call i32 @cleanup_retrans_entry(%struct.nes_cm_node* %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = call i32 @drop_packet(%struct.sk_buff* %178)
  br label %180

180:                                              ; preds = %175, %167, %146, %138, %130, %129, %103, %82, %54
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %24
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @check_seq(%struct.nes_cm_node*, %struct.tcphdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @cleanup_retrans_entry(%struct.nes_cm_node*) #1

declare dso_local i32 @handle_tcp_options(%struct.nes_cm_node*, %struct.tcphdr*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @handle_rcv_mpa(%struct.nes_cm_node*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @drop_packet(%struct.sk_buff*) #1

declare dso_local i32 @send_reset(%struct.nes_cm_node*, %struct.sk_buff*) #1

declare dso_local i32 @add_ref_cm_node(%struct.nes_cm_node*) #1

declare dso_local i32 @rem_ref_cm_node(i32, %struct.nes_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

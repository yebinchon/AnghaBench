; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.fc_frame_header = type { i32* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fcoe_hdr = type { i32 }

@SKB_GSO_FCOE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Wrong gso type %d:expecting SKB_GSO_FCOE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_ORIS = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_SOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown sof = 0x%x\0A\00", align 1
@IXGBE_ADVTXD_FCOEF_EOF_N = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_ORIE = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_EOF_T = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_EOF_NI = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_EOF_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown eof = 0x%x\0A\00", align 1
@FC_FC_REL_OFF = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_PARINC = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_FCOE = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CC = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MSS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4
@IXGBE_ADVTXT_TUCMD_FCOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fso(%struct.ixgbe_ring* %0, %struct.ixgbe_tx_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_tx_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.fc_frame_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %struct.ixgbe_tx_buffer* %1, %struct.ixgbe_tx_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %15, i32 0, i32 3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @skb_is_gso(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SKB_GSO_FCOE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %216

39:                                               ; preds = %21, %3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @skb_set_network_header(%struct.sk_buff* %40, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 4
  %50 = call i32 @skb_set_transport_header(%struct.sk_buff* %45, i64 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = call i64 @skb_network_header(%struct.sk_buff* %51)
  %53 = inttoptr i64 %52 to %struct.fcoe_hdr*
  %54 = getelementptr inbounds %struct.fcoe_hdr, %struct.fcoe_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  switch i32 %56, label %66 [
    i32 131, label %57
    i32 130, label %59
    i32 129, label %63
    i32 128, label %64
  ]

57:                                               ; preds = %39
  %58 = load i32, i32* @IXGBE_ADVTXD_FCOEF_ORIS, align 4
  store i32 %58, i32* %11, align 4
  br label %74

59:                                               ; preds = %39
  %60 = load i32, i32* @IXGBE_ADVTXD_FCOEF_SOF, align 4
  %61 = load i32, i32* @IXGBE_ADVTXD_FCOEF_ORIS, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %11, align 4
  br label %74

63:                                               ; preds = %39
  br label %74

64:                                               ; preds = %39
  %65 = load i32, i32* @IXGBE_ADVTXD_FCOEF_SOF, align 4
  store i32 %65, i32* %11, align 4
  br label %74

66:                                               ; preds = %39
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %68 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @dev_warn(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %216

74:                                               ; preds = %64, %63, %59, %57
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 4
  %80 = call i32 @skb_copy_bits(%struct.sk_buff* %75, i32 %79, i32* %14, i32 1)
  %81 = load i32, i32* %14, align 4
  switch i32 %81, label %109 [
    i32 134, label %82
    i32 132, label %86
    i32 133, label %101
    i32 135, label %105
  ]

82:                                               ; preds = %74
  %83 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_N, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %117

86:                                               ; preds = %74
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = call i64 @skb_is_gso(%struct.sk_buff* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_N, align 4
  %92 = load i32, i32* @IXGBE_ADVTXD_FCOEF_ORIE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_T, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %90
  br label %117

101:                                              ; preds = %74
  %102 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_NI, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %117

105:                                              ; preds = %74
  %106 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_A, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %117

109:                                              ; preds = %74
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @dev_warn(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %216

117:                                              ; preds = %105, %101, %100, %82
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = call i64 @skb_transport_header(%struct.sk_buff* %118)
  %120 = inttoptr i64 %119 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %120, %struct.fc_frame_header** %9, align 8
  %121 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %122 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FC_FC_REL_OFF, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %117
  %130 = load i32, i32* @IXGBE_ADVTXD_FCOEF_PARINC, align 4
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %129, %117
  %134 = load i32*, i32** %7, align 8
  store i32 4, i32* %134, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = call i64 @skb_is_gso(%struct.sk_buff* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %177

138:                                              ; preds = %133
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = call i32 @skb_transport_offset(%struct.sk_buff* %139)
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, %142
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %150, %152
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @DIV_ROUND_UP(i32 %153, i32 %157)
  %159 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %160 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %162 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %164, %166
  %168 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %169 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @IXGBE_TX_FLAGS_TSO, align 4
  %173 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %174 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %138, %133
  %178 = load i32, i32* @IXGBE_TX_FLAGS_FCOE, align 4
  %179 = load i32, i32* @IXGBE_TX_FLAGS_CC, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %182 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %185)
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @IXGBE_ADVTXD_MSS_SHIFT, align 4
  %190 = shl i32 %188, %189
  store i32 %190, i32* %12, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %192 = call i32 @skb_transport_offset(%struct.sk_buff* %191)
  %193 = sext i32 %192 to i64
  %194 = add i64 %193, 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %10, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call i32 @skb_transport_offset(%struct.sk_buff* %196)
  %198 = sub nsw i32 %197, 4
  %199 = load i32, i32* @IXGBE_ADVTXD_MACLEN_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load i32, i32* %10, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %10, align 4
  %203 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %204 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_MASK, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* %10, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %10, align 4
  %210 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @IXGBE_ADVTXT_TUCMD_FCOE, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @ixgbe_tx_ctxtdesc(%struct.ixgbe_ring* %210, i32 %211, i32 %212, i32 %213, i32 %214)
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %177, %109, %66, %28
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ixgbe_tx_ctxtdesc(%struct.ixgbe_ring*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

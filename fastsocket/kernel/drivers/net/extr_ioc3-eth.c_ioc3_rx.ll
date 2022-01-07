; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, i32, i32, %struct.sk_buff**, %struct.TYPE_2__, i64, %struct.ioc3* }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ioc3 = type { i32 }
%struct.ioc3_erxbuf = type { i64, i64 }

@RX_OFFSET = common dso_local global i64 0, align 8
@ERXBUF_V = common dso_local global i32 0, align 4
@ERXBUF_GOODPKT = common dso_local global i32 0, align 4
@ERXBUF_BYTECNT_SHIFT = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IOC3_FLAG_RX_CHECKSUMS = common dso_local global i32 0, align 4
@ERXBUF_IPCKSUM_MASK = common dso_local global i32 0, align 4
@ERXBUF_CRCERR = common dso_local global i32 0, align 4
@ERXBUF_FRAMERR = common dso_local global i32 0, align 4
@ERPIR_ARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_rx(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ioc3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ioc3_erxbuf*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %13 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %14 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %13, i32 0, i32 6
  %15 = load %struct.ioc3*, %struct.ioc3** %14, align 8
  store %struct.ioc3* %15, %struct.ioc3** %5, align 8
  %16 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %17 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %10, align 8
  %20 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %21 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %24 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %27 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %26, i32 0, i32 3
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %28, i64 %30
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RX_OFFSET, align 8
  %37 = sub nsw i64 %35, %36
  %38 = inttoptr i64 %37 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %38, %struct.ioc3_erxbuf** %9, align 8
  %39 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %40 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @be32_to_cpu(i64 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %160, %1
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @ERXBUF_V, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %200

48:                                               ; preds = %43
  %49 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %50 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @be32_to_cpu(i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ERXBUF_GOODPKT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %130

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ERXBUF_BYTECNT_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = and i32 %60, 2047
  %62 = sub nsw i32 %61, 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @skb_trim(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %68 = call i32 @priv_netdev(%struct.ioc3_private* %67)
  %69 = call i32 @eth_type_trans(%struct.sk_buff* %66, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call %struct.sk_buff* @ioc3_alloc_skb(i32 %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %57
  %78 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %79 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %83, %struct.sk_buff** %4, align 8
  br label %160

84:                                               ; preds = %57
  %85 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %86 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IOC3_FLAG_RX_CHECKSUMS, align 4
  %89 = and i32 %87, %88
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @ERXBUF_IPCKSUM_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ioc3_tcpudp_checksum(%struct.sk_buff* %93, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %84
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @netif_rx(%struct.sk_buff* %100)
  %102 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %103 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %102, i32 0, i32 3
  %104 = load %struct.sk_buff**, %struct.sk_buff*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %104, i64 %106
  store %struct.sk_buff* null, %struct.sk_buff** %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load i64, i64* @RX_OFFSET, align 8
  %110 = add nsw i64 1664, %109
  %111 = call i32 @skb_put(%struct.sk_buff* %108, i64 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %115, %struct.ioc3_erxbuf** %9, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i64, i64* @RX_OFFSET, align 8
  %118 = call i32 @skb_reserve(%struct.sk_buff* %116, i64 %117)
  %119 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %120 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %126 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %137

130:                                              ; preds = %48
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %131, %struct.sk_buff** %4, align 8
  %132 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %133 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %130, %99
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @ERXBUF_CRCERR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %144 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %137
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @ERXBUF_FRAMERR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %155 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %159, %77
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %163 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %162, i32 0, i32 3
  %164 = load %struct.sk_buff**, %struct.sk_buff*** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %164, i64 %166
  store %struct.sk_buff* %161, %struct.sk_buff** %167, align 8
  %168 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %169 = call i32 @ioc3_map(%struct.ioc3_erxbuf* %168, i32 1)
  %170 = call i64 @cpu_to_be64(i32 %169)
  %171 = load i64*, i64** %10, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  store i64 %170, i64* %174, align 8
  %175 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %176 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  %179 = and i32 %178, 511
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  %182 = and i32 %181, 511
  store i32 %182, i32* %6, align 4
  %183 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %184 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %183, i32 0, i32 3
  %185 = load %struct.sk_buff**, %struct.sk_buff*** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %185, i64 %187
  %189 = load %struct.sk_buff*, %struct.sk_buff** %188, align 8
  store %struct.sk_buff* %189, %struct.sk_buff** %3, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @RX_OFFSET, align 8
  %194 = sub nsw i64 %192, %193
  %195 = inttoptr i64 %194 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %195, %struct.ioc3_erxbuf** %9, align 8
  %196 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %197 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @be32_to_cpu(i64 %198)
  store i32 %199, i32* %11, align 4
  br label %43

200:                                              ; preds = %43
  %201 = load i32, i32* %7, align 4
  %202 = shl i32 %201, 3
  %203 = load i32, i32* @ERPIR_ARM, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @ioc3_w_erpir(i32 %204)
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %208 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %211 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  ret void
}

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @priv_netdev(%struct.ioc3_private*) #1

declare dso_local %struct.sk_buff* @ioc3_alloc_skb(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ioc3_tcpudp_checksum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @ioc3_map(%struct.ioc3_erxbuf*, i32) #1

declare dso_local i32 @ioc3_w_erpir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

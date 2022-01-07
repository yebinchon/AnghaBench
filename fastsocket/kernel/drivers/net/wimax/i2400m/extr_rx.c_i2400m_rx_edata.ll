; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_edata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_edata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.i2400m_roq*, %struct.TYPE_3__ }
%struct.i2400m_roq = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.device = type { i32 }
%struct.i2400m_pl_edata_hdr = type { i32, i32 }
%struct.i2400m_roq_data = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"(i2400m %p skb_rx %p single %u payload %p size %zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"ERX: HW BUG? message with short header (%zu vs %zu bytes expected)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ERX: skb %p reusing\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ERX: no memory to clone skb\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"ERX: skb %p cloned from %p\0A\00", align 1
@I2400M_RO_NEEDED = common dso_local global i32 0, align 4
@I2400M_RO_TYPE_SHIFT = common dso_local global i32 0, align 4
@I2400M_RO_TYPE = common dso_local global i32 0, align 4
@I2400M_RO_CIN_SHIFT = common dso_local global i32 0, align 4
@I2400M_RO_CIN = common dso_local global i32 0, align 4
@I2400M_RO_SN_SHIFT = common dso_local global i32 0, align 4
@I2400M_RO_SN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"ERX: reorder needed: type %u cin %u [ws %u] sn %u/%u len %zuB\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"HW BUG? unknown reorder type %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"(i2400m %p skb_rx %p single %u payload %p size %zu) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.sk_buff*, i32, i8*, i64)* @i2400m_rx_edata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_edata(%struct.i2400m* %0, %struct.sk_buff* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.i2400m_pl_edata_hdr*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.i2400m_roq*, align 8
  %22 = alloca %struct.i2400m_roq_data*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %23 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %24 = call %struct.device* @i2400m_dev(%struct.i2400m* %23)
  store %struct.device* %24, %struct.device** %11, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.i2400m_pl_edata_hdr*
  store %struct.i2400m_pl_edata_hdr* %26, %struct.i2400m_pl_edata_hdr** %12, align 8
  %27 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %28 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %13, align 8
  %31 = load i32, i32* @ETH_HLEN, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 8
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUILD_BUG_ON(i32 %34)
  %36 = load %struct.device*, %struct.device** %11, align 8
  %37 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @d_fnstart(i32 2, %struct.device* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %37, %struct.sk_buff* %38, i32 %39, i8* %40, i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %45, label %49

45:                                               ; preds = %5
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 8)
  br label %198

49:                                               ; preds = %5
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %14, align 8
  %55 = load %struct.device*, %struct.device** %11, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %57 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %56)
  br label %77

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %14, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %63 = icmp eq %struct.sk_buff* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %11, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.net_device*, %struct.net_device** %13, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %197

72:                                               ; preds = %58
  %73 = load %struct.device*, %struct.device** %11, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %74, %struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %72, %52
  %78 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr i8, i8* %79, i64 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = ptrtoint i8* %80 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @skb_pull(%struct.sk_buff* %78, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %92 = call i64 @skb_end_pointer(%struct.sk_buff* %91)
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sub i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @skb_trim(%struct.sk_buff* %90, i32 %99)
  %101 = load %struct.i2400m_pl_edata_hdr*, %struct.i2400m_pl_edata_hdr** %12, align 8
  %102 = getelementptr inbounds %struct.i2400m_pl_edata_hdr, %struct.i2400m_pl_edata_hdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @I2400M_RO_NEEDED, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %17, align 4
  %108 = load %struct.i2400m_pl_edata_hdr*, %struct.i2400m_pl_edata_hdr** %12, align 8
  %109 = getelementptr inbounds %struct.i2400m_pl_edata_hdr, %struct.i2400m_pl_edata_hdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %191

113:                                              ; preds = %77
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @I2400M_RO_TYPE_SHIFT, align 4
  %116 = lshr i32 %114, %115
  %117 = load i32, i32* @I2400M_RO_TYPE, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @I2400M_RO_CIN_SHIFT, align 4
  %121 = lshr i32 %119, %120
  %122 = load i32, i32* @I2400M_RO_CIN, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @I2400M_RO_SN_SHIFT, align 4
  %126 = lshr i32 %124, %125
  %127 = load i32, i32* @I2400M_RO_SN, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %20, align 4
  %129 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %130 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %129, i32 0, i32 0
  %131 = load %struct.i2400m_roq*, %struct.i2400m_roq** %130, align 8
  %132 = load i32, i32* %19, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %131, i64 %133
  store %struct.i2400m_roq* %134, %struct.i2400m_roq** %21, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = bitcast i32* %136 to %struct.i2400m_roq_data*
  store %struct.i2400m_roq_data* %137, %struct.i2400m_roq_data** %22, align 8
  %138 = load i32, i32* %20, align 4
  %139 = load %struct.i2400m_roq_data*, %struct.i2400m_roq_data** %22, align 8
  %140 = getelementptr inbounds %struct.i2400m_roq_data, %struct.i2400m_roq_data* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.i2400m_roq_data*, %struct.i2400m_roq_data** %22, align 8
  %143 = getelementptr inbounds %struct.i2400m_roq_data, %struct.i2400m_roq_data* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.device*, %struct.device** %11, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %148 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @__i2400m_roq_nsn(%struct.i2400m_roq* %151, i32 %152)
  %154 = load i64, i64* %10, align 8
  %155 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %144, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %146, i32 %149, i32 %150, i32 %153, i64 %154)
  %156 = load %struct.device*, %struct.device** %11, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @d_dump(i32 2, %struct.device* %156, i8* %157, i64 %158)
  %160 = load i32, i32* %18, align 4
  switch i32 %160, label %186 [
    i32 129, label %161
    i32 131, label %167
    i32 128, label %173
    i32 130, label %180
  ]

161:                                              ; preds = %113
  %162 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %163 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %164 = call i32 @i2400m_roq_reset(%struct.i2400m* %162, %struct.i2400m_roq* %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %166 = call i32 @kfree_skb(%struct.sk_buff* %165)
  br label %190

167:                                              ; preds = %113
  %168 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %169 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %171 = load i32, i32* %20, align 4
  %172 = call i32 @i2400m_roq_queue(%struct.i2400m* %168, %struct.i2400m_roq* %169, %struct.sk_buff* %170, i32 %171)
  br label %190

173:                                              ; preds = %113
  %174 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %175 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %176 = load i32, i32* %20, align 4
  %177 = call i32 @i2400m_roq_update_ws(%struct.i2400m* %174, %struct.i2400m_roq* %175, i32 %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %179 = call i32 @kfree_skb(%struct.sk_buff* %178)
  br label %190

180:                                              ; preds = %113
  %181 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %182 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @i2400m_roq_queue_update_ws(%struct.i2400m* %181, %struct.i2400m_roq* %182, %struct.sk_buff* %183, i32 %184)
  br label %190

186:                                              ; preds = %113
  %187 = load %struct.device*, %struct.device** %11, align 8
  %188 = load i32, i32* %18, align 4
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %186, %180, %173, %167, %161
  br label %196

191:                                              ; preds = %77
  %192 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @i2400m_net_erx(%struct.i2400m* %192, %struct.sk_buff* %193, i32 %194)
  br label %196

196:                                              ; preds = %191, %190
  br label %197

197:                                              ; preds = %196, %64
  br label %198

198:                                              ; preds = %197, %45
  %199 = load %struct.device*, %struct.device** %11, align 8
  %200 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i8*, i8** %9, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @d_fnend(i32 2, %struct.device* %199, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), %struct.i2400m* %200, %struct.sk_buff* %201, i32 %202, i8* %203, i64 %204)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i8*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @__i2400m_roq_nsn(%struct.i2400m_roq*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i8*, i64) #1

declare dso_local i32 @i2400m_roq_reset(%struct.i2400m*, %struct.i2400m_roq*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @i2400m_roq_queue(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @i2400m_roq_update_ws(%struct.i2400m*, %struct.i2400m_roq*, i32) #1

declare dso_local i32 @i2400m_roq_queue_update_ws(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @i2400m_net_erx(%struct.i2400m*, %struct.sk_buff*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

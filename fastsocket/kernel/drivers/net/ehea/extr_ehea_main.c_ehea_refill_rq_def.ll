; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_refill_rq_def.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_refill_rq_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { %struct.ehea_qp*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.ehea_qp = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ehea_q_skb_arr = type { i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.ehea_rwqe = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@__EHEA_STOP_XFER = common dso_local global i32 0, align 4
@ehea_driver_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: rq%i ran dry - no mem for skb\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@EHEA_WR_ID_TYPE = common dso_local global i32 0, align 4
@EHEA_WR_ID_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port_res*, %struct.ehea_q_skb_arr*, i32, i32, i32, i32)* @ehea_refill_rq_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_refill_rq_def(%struct.ehea_port_res* %0, %struct.ehea_q_skb_arr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehea_port_res*, align 8
  %9 = alloca %struct.ehea_q_skb_arr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.ehea_qp*, align 8
  %16 = alloca %struct.sk_buff**, align 8
  %17 = alloca %struct.ehea_rwqe*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.sk_buff*, align 8
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %8, align 8
  store %struct.ehea_q_skb_arr* %1, %struct.ehea_q_skb_arr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %27 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %14, align 8
  %31 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %32 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %31, i32 0, i32 0
  %33 = load %struct.ehea_qp*, %struct.ehea_qp** %32, align 8
  store %struct.ehea_qp* %33, %struct.ehea_qp** %15, align 8
  %34 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %35 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %34, i32 0, i32 3
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  store %struct.sk_buff** %36, %struct.sk_buff*** %16, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %37 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %38 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %21, align 4
  %42 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %43 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @__EHEA_STOP_XFER, align 4
  %45 = call i32 @test_bit(i32 %44, i32* @ehea_driver_flags)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %6
  %49 = load i32, i32* %21, align 4
  %50 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %51 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %23, align 4
  store i32 %52, i32* %7, align 4
  br label %193

53:                                               ; preds = %6
  %54 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %55 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %19, align 4
  %57 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %58 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %164, %53
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %167

65:                                               ; preds = %61
  %66 = load %struct.net_device*, %struct.net_device** %14, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %25, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %98, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %18, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %76 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %78 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %81 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 2
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %71
  %86 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %87 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @ehea_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %23, align 4
  br label %97

97:                                               ; preds = %85, %71
  br label %167

98:                                               ; preds = %65
  %99 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %100 = load i32, i32* @NET_IP_ALIGN, align 4
  %101 = call i32 @skb_reserve(%struct.sk_buff* %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %103 = load %struct.sk_buff**, %struct.sk_buff*** %16, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %103, i64 %105
  store %struct.sk_buff* %102, %struct.sk_buff** %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ehea_map_vaddr(i32 %109)
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %24, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %121

113:                                              ; preds = %98
  %114 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %115 = call i32 @dev_kfree_skb(%struct.sk_buff* %114)
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %18, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %120 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %23, align 4
  br label %167

121:                                              ; preds = %98
  %122 = load %struct.ehea_qp*, %struct.ehea_qp** %15, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp* %122, i32 %123)
  store %struct.ehea_rwqe* %124, %struct.ehea_rwqe** %17, align 8
  %125 = load i32, i32* @EHEA_WR_ID_TYPE, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @EHEA_BMASK_SET(i32 %125, i32 %126)
  %128 = load i32, i32* @EHEA_WR_ID_INDEX, align 4
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @EHEA_BMASK_SET(i32 %128, i32 %129)
  %131 = or i32 %127, %130
  %132 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %133 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %135 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %139 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %24, align 4
  %144 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %145 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i32 %143, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %151 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 %149, i32* %154, align 4
  %155 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %156 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %19, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %22, align 4
  br label %164

164:                                              ; preds = %121
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %18, align 4
  br label %61

167:                                              ; preds = %113, %97, %61
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %170 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %22, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %191

174:                                              ; preds = %167
  %175 = call i32 (...) @iosync()
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %180 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %179, i32 0, i32 0
  %181 = load %struct.ehea_qp*, %struct.ehea_qp** %180, align 8
  %182 = load i32, i32* %22, align 4
  %183 = call i32 @ehea_update_rq2a(%struct.ehea_qp* %181, i32 %182)
  br label %190

184:                                              ; preds = %174
  %185 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %186 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %185, i32 0, i32 0
  %187 = load %struct.ehea_qp*, %struct.ehea_qp** %186, align 8
  %188 = load i32, i32* %22, align 4
  %189 = call i32 @ehea_update_rq3a(%struct.ehea_qp* %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* %23, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %48
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_info(i8*, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @ehea_map_vaddr(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp*, i32) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i32 @iosync(...) #1

declare dso_local i32 @ehea_update_rq2a(%struct.ehea_qp*, i32) #1

declare dso_local i32 @ehea_update_rq3a(%struct.ehea_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

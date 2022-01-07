; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_process_tx_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_process_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_cq = type { i64, i32, %struct.mlx4_cqe*, %struct.mlx4_cq }
%struct.mlx4_cqe = type { i32, i32 }
%struct.mlx4_cq = type { i32 }
%struct.mlx4_en_priv = type { i32, %struct.TYPE_4__, i32, %struct.mlx4_en_tx_ring* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.mlx4_en_cq*)* @mlx4_en_process_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_process_tx_cq(%struct.net_device* %0, %struct.mlx4_en_cq* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx4_en_cq*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_cq*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca %struct.mlx4_cqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx4_cqe*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.mlx4_en_priv* %22, %struct.mlx4_en_priv** %5, align 8
  %23 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %23, i32 0, i32 3
  store %struct.mlx4_cq* %24, %struct.mlx4_cq** %6, align 8
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 3
  %27 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %26, align 8
  %28 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %27, i64 %30
  store %struct.mlx4_en_tx_ring* %31, %struct.mlx4_en_tx_ring** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  %38 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %41, i32 0, i32 2
  %43 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %42, align 8
  store %struct.mlx4_cqe* %43, %struct.mlx4_cqe** %18, align 8
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %2
  br label %206

52:                                               ; preds = %2
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %18, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %19, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %56, i64 %62
  store %struct.mlx4_cqe* %63, %struct.mlx4_cqe** %8, align 8
  %64 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %17, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %158, %52
  %71 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = and i32 %76, %77
  %79 = call i64 @XNOR(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %172

81:                                               ; preds = %70
  %82 = call i32 (...) @rmb()
  %83 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %84 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be16_to_cpu(i32 %85)
  %87 = load i32, i32* %17, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %154, %81
  %90 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = load i32, i32* %17, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %11, align 4
  %102 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %102, i32 0, i32 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %89
  %112 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %113 = call i32 @mlx4_en_get_cqe_ts(%struct.mlx4_cqe* %112)
  store i32 %113, i32* %20, align 4
  br label %114

114:                                              ; preds = %111, %89
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %116 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %120, %121
  %123 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv* %115, %struct.mlx4_en_tx_ring* %116, i32 %117, i32 %130, i32 %131)
  %133 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %136 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %139 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 @mlx4_en_stamp_wqe(%struct.mlx4_en_priv* %135, %struct.mlx4_en_tx_ring* %136, i32 %137, i32 %150)
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %114
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %89, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %17, align 4
  %163 = and i32 %161, %162
  store i32 %163, i32* %9, align 4
  %164 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %18, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %19, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %164, i64 %170
  store %struct.mlx4_cqe* %171, %struct.mlx4_cqe** %8, align 8
  br label %70

172:                                              ; preds = %70
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %175 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %177 = call i32 @mlx4_cq_set_ci(%struct.mlx4_cq* %176)
  %178 = call i32 (...) @wmb()
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %181 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %186 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @netdev_get_tx_queue(%struct.net_device* %184, i64 %187)
  %189 = call i64 @netif_tx_queue_stopped(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %172
  %192 = load i32, i32* %13, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load %struct.net_device*, %struct.net_device** %3, align 8
  %196 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %197 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @netdev_get_tx_queue(%struct.net_device* %195, i64 %198)
  %200 = call i32 @netif_tx_wake_queue(i32 %199)
  %201 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %202 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %51, %194, %191, %172
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @XNOR(i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_en_get_cqe_ts(%struct.mlx4_cqe*) #1

declare dso_local i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32, i32) #1

declare dso_local i32 @mlx4_en_stamp_wqe(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32) #1

declare dso_local i32 @mlx4_cq_set_ci(%struct.mlx4_cq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

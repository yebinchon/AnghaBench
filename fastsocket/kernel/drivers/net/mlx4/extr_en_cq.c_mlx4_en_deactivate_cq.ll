; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_deactivate_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_deactivate_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_cq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_cq*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %4, align 8
  %5 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %6 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %10, i32 0, i32 1
  %12 = call i32 @napi_disable(i32* %11)
  %13 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %13, i32 0, i32 1
  %15 = call i32 @netif_napi_del(i32* %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %22, i32 0, i32 0
  %24 = call i32 @mlx4_cq_free(i32 %21, i32* %23)
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @mlx4_cq_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

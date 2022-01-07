; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_clock.c_mlx4_en_get_cqe_ts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_clock.c_mlx4_en_get_cqe_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cqe = type { i32 }
%struct.mlx4_ts_cqe = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_get_cqe_ts(%struct.mlx4_cqe* %0) #0 {
  %2 = alloca %struct.mlx4_cqe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ts_cqe*, align 8
  store %struct.mlx4_cqe* %0, %struct.mlx4_cqe** %2, align 8
  %6 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %2, align 8
  %7 = bitcast %struct.mlx4_cqe* %6 to %struct.mlx4_ts_cqe*
  store %struct.mlx4_ts_cqe* %7, %struct.mlx4_ts_cqe** %5, align 8
  %8 = load %struct.mlx4_ts_cqe*, %struct.mlx4_ts_cqe** %5, align 8
  %9 = getelementptr inbounds %struct.mlx4_ts_cqe, %struct.mlx4_ts_cqe* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be16_to_cpu(i32 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mlx4_ts_cqe*, %struct.mlx4_ts_cqe** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_ts_cqe, %struct.mlx4_ts_cqe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be32_to_cpu(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %17, %21
  %23 = shl i32 %22, 16
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  ret i32 %26
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

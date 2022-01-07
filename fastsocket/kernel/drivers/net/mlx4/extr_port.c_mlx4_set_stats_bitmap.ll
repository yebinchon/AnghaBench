; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_set_stats_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_set_stats_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@MLX4_STATS_TRAFFIC_COUNTERS_MASK = common dso_local global i32 0, align 4
@MLX4_STATS_TRAFFIC_DROPS_MASK = common dso_local global i32 0, align 4
@MLX4_STATS_PORT_COUNTERS_MASK = common dso_local global i32 0, align 4
@MLX4_STATS_ERROR_COUNTERS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_set_stats_bitmap(%struct.mlx4_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %6 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %25

10:                                               ; preds = %2
  %11 = load i32, i32* @MLX4_STATS_TRAFFIC_COUNTERS_MASK, align 4
  %12 = load i32, i32* @MLX4_STATS_TRAFFIC_DROPS_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MLX4_STATS_PORT_COUNTERS_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %18 = call i64 @mlx4_is_master(%struct.mlx4_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load i32, i32* @MLX4_STATS_ERROR_COUNTERS_MASK, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %8, %20, %10
  ret void
}

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

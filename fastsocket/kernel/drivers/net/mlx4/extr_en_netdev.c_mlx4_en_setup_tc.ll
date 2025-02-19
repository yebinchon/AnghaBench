; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_setup_tc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64 }

@MLX4_EN_NUM_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_setup_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MLX4_EN_NUM_UP, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %13, %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @netdev_set_num_tc(%struct.net_device* %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @netdev_set_tc_queue(%struct.net_device* %29, i32 %30, i64 %33, i32 %34)
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

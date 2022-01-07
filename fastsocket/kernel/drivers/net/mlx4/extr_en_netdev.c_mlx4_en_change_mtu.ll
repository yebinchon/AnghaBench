; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32, i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Change MTU called - current:%d new:%d\0A\00", align 1
@MLX4_EN_MIN_MTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad MTU size:%d.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Change MTU called with card down!?\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed restarting port:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx4_en_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 3
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @DRV, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %14, %struct.mlx4_en_priv* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MLX4_EN_MIN_MTU, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %2
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @en_err(%struct.mlx4_en_priv* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i64 @netif_running(%struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %36
  %44 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @DRV, align 4
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %54 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %52, %struct.mlx4_en_priv* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %75

55:                                               ; preds = %43
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @mlx4_en_stop_port(%struct.net_device* %56, i32 1)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @mlx4_en_start_port(%struct.net_device* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %64 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @en_err(%struct.mlx4_en_priv* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 2
  %73 = call i32 @queue_work(i32 %70, i32* %72)
  br label %74

74:                                               ; preds = %62, %55
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %36
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

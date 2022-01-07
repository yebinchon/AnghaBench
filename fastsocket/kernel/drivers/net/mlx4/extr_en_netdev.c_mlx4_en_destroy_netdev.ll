; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_destroy_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_destroy_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, i32, i32, i32, i32, i64, i64, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32**, i32, i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Destroying netdev on port:%d\0A\00", align 1
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.mlx4_en_priv* %6, %struct.mlx4_en_priv** %3, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 8
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %4, align 8
  %10 = load i32, i32* @DRV, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @en_dbg(i32 %10, %struct.mlx4_en_priv* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @unregister_netdev(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 5
  %34 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %35 = call i32 @mlx4_free_hwq_res(i32 %31, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 4
  %39 = call i32 @cancel_delayed_work(i32* %38)
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 3
  %42 = call i32 @cancel_delayed_work(i32* %41)
  %43 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @flush_workqueue(i32 %45)
  %47 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  store i32* null, i32** %56, align 8
  %57 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %61 = call i32 @mlx4_en_free_resources(%struct.mlx4_en_priv* %60)
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kfree(i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @free_netdev(%struct.net_device* %70)
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i64) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_en_free_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_catas.c_poll_catas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_catas.c_poll_catas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MLX4_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8
@MLX4_DEV_EVENT_CATASTROPHIC_ERROR = common dso_local global i32 0, align 4
@internal_err_reset = common dso_local global i64 0, align 8
@catas_lock = common dso_local global i32 0, align 4
@catas_list = common dso_local global i32 0, align 4
@mlx4_wq = common dso_local global i32 0, align 4
@catas_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @poll_catas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_catas(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.mlx4_dev*
  store %struct.mlx4_dev* %6, %struct.mlx4_dev** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %4, align 8
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @readl(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pci_channel_offline(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @round_jiffies(i64 %27)
  %29 = call i32 @mod_timer(i32* %24, i32 %28)
  br label %48

30:                                               ; preds = %15
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = call i32 @dump_err_buf(%struct.mlx4_dev* %31)
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %34 = load i32, i32* @MLX4_DEV_EVENT_CATASTROPHIC_ERROR, align 4
  %35 = call i32 @mlx4_dispatch_event(%struct.mlx4_dev* %33, i32 %34, i32 0)
  %36 = load i64, i64* @internal_err_reset, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = call i32 @spin_lock(i32* @catas_lock)
  %40 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @list_add(i32* %42, i32* @catas_list)
  %44 = call i32 @spin_unlock(i32* @catas_lock)
  %45 = load i32, i32* @mlx4_wq, align 4
  %46 = call i32 @queue_work(i32 %45, i32* @catas_work)
  br label %47

47:                                               ; preds = %38, %30
  br label %48

48:                                               ; preds = %47, %21
  br label %58

49:                                               ; preds = %1
  %50 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @round_jiffies(i64 %55)
  %57 = call i32 @mod_timer(i32* %52, i32 %56)
  br label %58

58:                                               ; preds = %49, %48
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @dump_err_buf(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dispatch_event(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cmd_cleanup(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %4 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %5 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %4)
  store %struct.mlx4_priv* %5, %struct.mlx4_priv** %3, align 8
  %6 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pci_pool_destroy(i32 %9)
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %12 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @iounmap(i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %22 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_coherent(i32* %28, i32 %29, i32* %33, i32 %37)
  br label %39

39:                                               ; preds = %24, %20
  %40 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_pool_destroy(i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

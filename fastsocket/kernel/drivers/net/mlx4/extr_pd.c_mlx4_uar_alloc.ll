; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_pd.c_mlx4_uar_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_pd.c_mlx4_uar_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_uar = type { i32, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_uar_alloc(%struct.mlx4_dev* %0, %struct.mlx4_uar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_uar*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_uar* %1, %struct.mlx4_uar** %5, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %8 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @mlx4_bitmap_alloc(i32* %10)
  %12 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pci_resource_len(i32 %31, i32 2)
  %33 = trunc i64 %32 to i32
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %33, %37
  %39 = srem i32 %28, %38
  store i32 %39, i32* %6, align 4
  br label %44

40:                                               ; preds = %21
  %41 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %25
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_resource_start(i32 %47, i32 2)
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mlx4_bitmap_alloc(i32*) #1

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_free_resource_tracker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_free_resource_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@RES_TR_FREE_STRUCTS_ONLY = common dso_local global i32 0, align 4
@RES_TR_FREE_ALL = common dso_local global i32 0, align 4
@RES_TR_FREE_SLAVES_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_free_resource_tracker(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %5, align 8
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RES_TR_FREE_STRUCTS_ONLY, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RES_TR_FREE_ALL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31, %27
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @mlx4_delete_all_resources_for_slave(%struct.mlx4_dev* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %21

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @RES_TR_FREE_SLAVES_ONLY, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %53 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %60 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %51, %47
  br label %65

65:                                               ; preds = %64, %2
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_delete_all_resources_for_slave(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

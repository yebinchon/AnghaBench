; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_catas.c_mlx4_start_catas_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_catas.c_mlx4_start_catas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@internal_err_reset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to map internal error buffer at 0x%llx\0A\00", align 1
@poll_catas = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLX4_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_start_catas_poll(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %8 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* @internal_err_reset, align 8
  br label %11

11:                                               ; preds = %10, %1
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @init_timer(%struct.TYPE_7__* %18)
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pci_resource_start(i32 %25, i32 %29)
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 4
  %42 = call i32* @ioremap(i64 %36, i32 %41)
  %43 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %11
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @mlx4_warn(%struct.mlx4_dev* %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %79

55:                                               ; preds = %11
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %57 = ptrtoint %struct.mlx4_dev* %56 to i64
  %58 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load i32, i32* @poll_catas, align 4
  %63 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @round_jiffies(i64 %69)
  %71 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 8
  %75 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %76 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @add_timer(%struct.TYPE_7__* %77)
  br label %79

79:                                               ; preds = %55, %51
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

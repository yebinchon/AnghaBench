; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_load_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't allocate FW area, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"MAP_FA command failed, aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"RUN_FW command failed, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_load_fw(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_HIGHUSER, align 4
  %14 = load i32, i32* @__GFP_NOWARN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @mlx4_alloc_icm(%struct.mlx4_dev* %8, i32 %12, i32 %15, i32 0)
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %27 = call i32 @mlx4_err(%struct.mlx4_dev* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlx4_MAP_FA(%struct.mlx4_dev* %31, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %41 = call i32 @mlx4_err(%struct.mlx4_dev* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %54

42:                                               ; preds = %30
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %44 = call i32 @mlx4_RUN_FW(%struct.mlx4_dev* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %49 = call i32 @mlx4_err(%struct.mlx4_dev* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %62

51:                                               ; preds = %47
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %53 = call i32 @mlx4_UNMAP_FA(%struct.mlx4_dev* %52)
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %56 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %55, i32 %59, i32 0)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %54, %50, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_alloc_icm(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_MAP_FA(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_RUN_FW(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_UNMAP_FA(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

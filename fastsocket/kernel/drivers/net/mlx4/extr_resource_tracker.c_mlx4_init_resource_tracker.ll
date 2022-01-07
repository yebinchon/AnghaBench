; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_init_resource_tracker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_init_resource_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NUM_OF_RESOURCE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Started init_resource_tracker: %ld slaves\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_resource_tracker(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %4, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_8__* @kzalloc(i32 %14, i32 %15)
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %109

32:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %75, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %65 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @mutex_init(i32* %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %33

78:                                               ; preds = %33
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mlx4_dbg(%struct.mlx4_dev* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %99, %78
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i32, i32* @RB_ROOT, align 4
  %90 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %89, i32* %98, align 4
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = call i32 @spin_lock_init(i32* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %102, %29
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

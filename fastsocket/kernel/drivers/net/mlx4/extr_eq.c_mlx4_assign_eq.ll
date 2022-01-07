; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_mlx4_assign_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_mlx4_assign_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.cpu_rmap = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }

@MLX4_IRQNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mlx4_msi_x_interrupt = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_assign_eq(%struct.mlx4_dev* %0, i8* %1, %struct.cpu_rmap* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpu_rmap*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cpu_rmap* %2, %struct.cpu_rmap** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %13)
  store %struct.mlx4_priv* %14, %struct.mlx4_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %117, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %23, %27
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %120

31:                                               ; preds = %29
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = xor i64 %35, -1
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %45
  store i64 %50, i64* %48, align 8
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @MLX4_IRQNAME_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* @MLX4_IRQNAME_SIZE, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @snprintf(i32* %66, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %71 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @mlx4_msi_x_interrupt, align 4
  %80 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = call i32 @request_irq(i32 %78, i32 %79, i32 0, i32* %87, %struct.TYPE_9__* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %42
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 1, %99
  %101 = sext i32 %100 to i64
  %102 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %103 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = xor i64 %105, %101
  store i64 %106, i64* %104, align 8
  store i32 0, i32* %10, align 4
  br label %117

107:                                              ; preds = %42
  %108 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %109 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %113
  %115 = call i32 @eq_set_ci(%struct.TYPE_9__* %114, i32 1)
  br label %116

116:                                              ; preds = %107, %31
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %19

120:                                              ; preds = %29
  %121 = load %struct.mlx4_priv*, %struct.mlx4_priv** %9, align 8
  %122 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  br label %145

130:                                              ; preds = %120
  %131 = load i32*, i32** %8, align 8
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %134 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i32, i32* @ENOSPC, align 4
  %140 = sub nsw i32 0, %139
  br label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %11, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %140, %138 ], [ %142, %141 ]
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %143, %127
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @eq_set_ci(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_qp_to_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_qp_to_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i32 }
%struct.mlx4_qp_context = type { i32 }
%struct.mlx4_qp = type { i32 }

@MLX4_QP_STATE_RST = common dso_local global i32 0, align 4
@MLX4_QP_STATE_INIT = common dso_local global i32 0, align 4
@MLX4_QP_STATE_RTR = common dso_local global i32 0, align 4
@MLX4_QP_STATE_RTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to bring QP to state: %d with error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_qp_to_ready(%struct.mlx4_dev* %0, %struct.mlx4_mtt* %1, %struct.mlx4_qp_context* %2, %struct.mlx4_qp* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.mlx4_mtt*, align 8
  %9 = alloca %struct.mlx4_qp_context*, align 8
  %10 = alloca %struct.mlx4_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store %struct.mlx4_mtt* %1, %struct.mlx4_mtt** %8, align 8
  store %struct.mlx4_qp_context* %2, %struct.mlx4_qp_context** %9, align 8
  store %struct.mlx4_qp* %3, %struct.mlx4_qp** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @MLX4_QP_STATE_INIT, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @MLX4_QP_STATE_RTR, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @MLX4_QP_STATE_RTS, align 4
  store i32 %22, i32* %21, align 4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %79, %5
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = call i32 @cpu_to_be32(i32 268435455)
  %31 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 28
  %41 = call i32 @cpu_to_be32(i32 %40)
  %42 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %9, align 8
  %43 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %47 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %9, align 8
  %58 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %59 = call i32 @mlx4_qp_modify(%struct.mlx4_dev* %46, %struct.mlx4_mtt* %47, i32 %51, i32 %56, %struct.mlx4_qp_context* %57, i32 0, i32 0, %struct.mlx4_qp* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %29
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mlx4_err(%struct.mlx4_dev* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %83

72:                                               ; preds = %29
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %23

82:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_qp_modify(%struct.mlx4_dev*, %struct.mlx4_mtt*, i32, i32, %struct.mlx4_qp_context*, i32, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

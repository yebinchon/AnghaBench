; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_ACCESS_MEM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_ACCESS_MEM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [82 x i8] c"Bad access mem params - slave_addr:0x%llx master_addr:0x%llx slave_id:%d size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX4_CMD_ACCESS_MEM = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32)* @mlx4_ACCESS_MEM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ACCESS_MEM(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = and i32 %16, 4095
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 4095
  %20 = or i32 %17, %19
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, -128
  %23 = or i32 %20, %22
  %24 = load i32, i32* %12, align 4
  %25 = and i32 %24, 255
  %26 = or i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @mlx4_err(%struct.mlx4_dev* %29, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %70

37:                                               ; preds = %6
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %15, align 4
  br label %62

51:                                               ; preds = %37
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %51, %40
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @MLX4_CMD_ACCESS_MEM, align 4
  %67 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %68 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %69 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %63, i32 %64, i32* %15, i32 %65, i32 0, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %62, %28
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

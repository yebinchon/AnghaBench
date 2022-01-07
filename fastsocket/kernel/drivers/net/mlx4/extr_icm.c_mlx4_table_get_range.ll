; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_icm.c_mlx4_table_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_icm.c_mlx4_table_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_icm_table = type { i32 }

@MLX4_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_table_get_range(%struct.mlx4_dev* %0, %struct.mlx4_icm_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_icm_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_icm_table* %1, %struct.mlx4_icm_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @MLX4_TABLE_CHUNK_SIZE, align 4
  %14 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_icm_table, %struct.mlx4_icm_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %32, %4
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %25 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %7, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @mlx4_table_get(%struct.mlx4_dev* %24, %struct.mlx4_icm_table* %25, i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %38

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %12, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %12, align 8
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %54

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %12, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %49 = load %struct.mlx4_icm_table*, %struct.mlx4_icm_table** %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @mlx4_table_put(%struct.mlx4_dev* %48, %struct.mlx4_icm_table* %49, i64 %50)
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @mlx4_table_get(%struct.mlx4_dev*, %struct.mlx4_icm_table*, i64) #1

declare dso_local i32 @mlx4_table_put(%struct.mlx4_dev*, %struct.mlx4_icm_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

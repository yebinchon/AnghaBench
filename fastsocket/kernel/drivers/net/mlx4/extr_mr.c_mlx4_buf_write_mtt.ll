; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_buf_write_mtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_buf_write_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i32 }
%struct.mlx4_buf = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_buf_write_mtt(%struct.mlx4_dev* %0, %struct.mlx4_mtt* %1, %struct.mlx4_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_mtt*, align 8
  %7 = alloca %struct.mlx4_buf*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_mtt* %1, %struct.mlx4_mtt** %6, align 8
  store %struct.mlx4_buf* %2, %struct.mlx4_buf** %7, align 8
  %11 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %12 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64* @kmalloc(i32 %16, i32 %17)
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %80

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %47, i64* %51, align 8
  br label %65

52:                                               ; preds = %31
  %53 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %52, %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %25

69:                                               ; preds = %25
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %71 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %6, align 8
  %72 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = call i32 @mlx4_write_mtt(%struct.mlx4_dev* %70, %struct.mlx4_mtt* %71, i32 0, i32 %74, i64* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i64*, i64** %8, align 8
  %78 = call i32 @kfree(i64* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %69, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_write_mtt(%struct.mlx4_dev*, %struct.mlx4_mtt*, i32, i32, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

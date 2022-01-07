; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_init_mr_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_init_mr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.mlx4_priv = type { i64, %struct.mlx4_mr_table }
%struct.mlx4_mr_table = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@log_mtts_per_seg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MTT table of order %u is too small.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_mr_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca %struct.mlx4_mr_table*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %4, align 8
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 1
  store %struct.mlx4_mr_table* %10, %struct.mlx4_mr_table** %5, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_power_of_2(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %98

25:                                               ; preds = %20
  %26 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %26, i32 0, i32 0
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mlx4_bitmap_init(i32* %27, i32 %31, i32 -1, i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %98

41:                                               ; preds = %25
  %42 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %5, align 8
  %43 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %42, i32 0, i32 1
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @log_mtts_per_seg, align 4
  %50 = shl i32 1, %49
  %51 = sdiv i32 %48, %50
  %52 = call i32 @ilog2(i32 %51)
  %53 = call i32 @mlx4_buddy_init(%struct.TYPE_5__* %43, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %93

57:                                               ; preds = %41
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @fls(i64 %69)
  %71 = call i64 @mlx4_alloc_mtt_range(%struct.mlx4_dev* %64, i32 %70)
  %72 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %75 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %80 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %5, align 8
  %81 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mlx4_warn(%struct.mlx4_dev* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %89

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %57
  store i32 0, i32* %2, align 4
  br label %98

89:                                               ; preds = %78
  %90 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %5, align 8
  %91 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %90, i32 0, i32 1
  %92 = call i32 @mlx4_buddy_cleanup(%struct.TYPE_5__* %91)
  br label %93

93:                                               ; preds = %89, %56
  %94 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %94, i32 0, i32 0
  %96 = call i32 @mlx4_bitmap_cleanup(i32* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %88, %39, %24, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_bitmap_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_buddy_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @mlx4_alloc_mtt_range(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_buddy_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @mlx4_bitmap_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

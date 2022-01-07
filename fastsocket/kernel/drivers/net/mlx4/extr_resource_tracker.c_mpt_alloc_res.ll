; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mpt_alloc_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mpt_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_mpt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i32 0, align 4
@RES_MPT_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @mpt_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.res_mpt*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %84 [
    i32 128, label %21
    i32 129, label %48
  ]

21:                                               ; preds = %6
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %23 = call i32 @__mlx4_mpt_reserve(%struct.mlx4_dev* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %84

27:                                               ; preds = %21
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %30 = call i32 @mpt_mask(%struct.mlx4_dev* %29)
  %31 = and i32 %28, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @RES_MPT, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @add_res_range(%struct.mlx4_dev* %32, i32 %33, i32 %34, i32 1, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @__mlx4_mpt_release(%struct.mlx4_dev* %41, i32 %42)
  br label %84

44:                                               ; preds = %27
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @set_param_l(i32* %45, i32 %46)
  br label %84

48:                                               ; preds = %6
  %49 = call i32 @get_param_l(i32* %12)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %52 = call i32 @mpt_mask(%struct.mlx4_dev* %51)
  %53 = and i32 %50, %52
  store i32 %53, i32* %16, align 4
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @RES_MPT_MAPPED, align 4
  %58 = call i32 @mr_res_start_move_to(%struct.mlx4_dev* %54, i32 %55, i32 %56, i32 %57, %struct.res_mpt** %17)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %7, align 4
  br label %86

63:                                               ; preds = %48
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %65 = load %struct.res_mpt*, %struct.res_mpt** %17, align 8
  %66 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__mlx4_mpt_alloc_icm(%struct.mlx4_dev* %64, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @RES_MPT, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @res_abort_move(%struct.mlx4_dev* %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %86

78:                                               ; preds = %63
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @RES_MPT, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @res_end_move(%struct.mlx4_dev* %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %6, %78, %44, %40, %26
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %71, %61
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @__mlx4_mpt_reserve(%struct.mlx4_dev*) #1

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_mpt_release(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @mr_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @__mlx4_mpt_alloc_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

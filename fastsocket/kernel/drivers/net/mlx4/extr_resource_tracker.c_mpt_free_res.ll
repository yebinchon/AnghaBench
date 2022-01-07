; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mpt_free_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mpt_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_mpt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i32 0, align 4
@RES_MPT_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32)* @mpt_free_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_free_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.res_mpt*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %81 [
    i32 128, label %19
    i32 129, label %54
  ]

19:                                               ; preds = %5
  %20 = call i32 @get_param_l(i32* %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %23 = call i32 @mpt_mask(%struct.mlx4_dev* %22)
  %24 = and i32 %21, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @RES_MPT, align 4
  %29 = call i32 @get_res(%struct.mlx4_dev* %25, i32 %26, i32 %27, i32 %28, %struct.res_mpt** %15)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %84

33:                                               ; preds = %19
  %34 = load %struct.res_mpt*, %struct.res_mpt** %15, align 8
  %35 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @RES_MPT, align 4
  %41 = call i32 @put_res(%struct.mlx4_dev* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @RES_MPT, align 4
  %46 = call i32 @rem_res_range(%struct.mlx4_dev* %42, i32 %43, i32 %44, i32 1, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %84

50:                                               ; preds = %33
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @__mlx4_mpt_release(%struct.mlx4_dev* %51, i32 %52)
  br label %84

54:                                               ; preds = %5
  %55 = call i32 @get_param_l(i32* %11)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %58 = call i32 @mpt_mask(%struct.mlx4_dev* %57)
  %59 = and i32 %56, %58
  store i32 %59, i32* %14, align 4
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @RES_MPT_RESERVED, align 4
  %64 = call i32 @mr_res_start_move_to(%struct.mlx4_dev* %60, i32 %61, i32 %62, i32 %63, %struct.res_mpt** %15)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %86

69:                                               ; preds = %54
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %71 = load %struct.res_mpt*, %struct.res_mpt** %15, align 8
  %72 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__mlx4_mpt_free_icm(%struct.mlx4_dev* %70, i32 %73)
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @RES_MPT, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @res_end_move(%struct.mlx4_dev* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %86

81:                                               ; preds = %5
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %81, %50, %49, %32
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %69, %67
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_mpt_release(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mr_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @__mlx4_mpt_free_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

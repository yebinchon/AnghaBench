; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_qp_alloc_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_qp_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_QP = common dso_local global i32 0, align 4
@RES_QP_MAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @qp_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %104 [
    i32 128, label %20
    i32 129, label %50
  ]

20:                                               ; preds = %6
  %21 = call i32 @get_param_l(i32* %12)
  store i32 %21, i32* %15, align 4
  %22 = call i32 @get_param_h(i32* %12)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev* %23, i32 %24, i32 %25, i32* %17)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %109

31:                                               ; preds = %20
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @RES_QP, align 4
  %37 = call i32 @add_res_range(%struct.mlx4_dev* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @__mlx4_qp_release_range(%struct.mlx4_dev* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %7, align 4
  br label %109

46:                                               ; preds = %31
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @set_param_l(i32* %47, i32 %48)
  br label %107

50:                                               ; preds = %6
  %51 = call i32 @get_param_l(i32* %12)
  %52 = and i32 %51, 8388607
  store i32 %52, i32* %18, align 4
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @valid_reserved(%struct.mlx4_dev* %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @RES_QP, align 4
  %63 = call i32 @add_res_range(%struct.mlx4_dev* %59, i32 %60, i32 %61, i32 1, i32 %62, i32 0)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %7, align 4
  br label %109

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @RES_QP_MAPPED, align 4
  %74 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %70, i32 %71, i32 %72, i32 %73, i32* null, i32 1)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %109

79:                                               ; preds = %69
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @fw_reserved(%struct.mlx4_dev* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %79
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @__mlx4_qp_alloc_icm(%struct.mlx4_dev* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RES_QP, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @res_abort_move(%struct.mlx4_dev* %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %7, align 4
  br label %109

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %79
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @RES_QP, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @res_end_move(%struct.mlx4_dev* %99, i32 %100, i32 %101, i32 %102)
  br label %107

104:                                              ; preds = %6
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %98, %46
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %90, %77, %66, %40, %29
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @get_param_h(i32*) #1

declare dso_local i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev*, i32, i32, i32*) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_qp_release_range(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @valid_reserved(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fw_reserved(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @__mlx4_qp_alloc_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { %struct.mlx4_ib_fast_reg_page_list* }
%struct.mlx4_ib_fast_reg_page_list = type { i32, %struct.ib_fast_reg_page_list, i32 }
%struct.ib_device = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLX4_MAX_FAST_REG_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fast_reg_page_list* @mlx4_ib_alloc_fast_reg_page_list(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_fast_reg_page_list*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx4_ib_dev* %10, %struct.mlx4_ib_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MLX4_MAX_FAST_REG_PAGES, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %20)
  store %struct.ib_fast_reg_page_list* %21, %struct.ib_fast_reg_page_list** %3, align 8
  br label %84

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 24, i32 %23)
  %25 = bitcast i8* %24 to %struct.mlx4_ib_fast_reg_page_list*
  store %struct.mlx4_ib_fast_reg_page_list* %25, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %26 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %27 = icmp ne %struct.mlx4_ib_fast_reg_page_list* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %30)
  store %struct.ib_fast_reg_page_list* %31, %struct.ib_fast_reg_page_list** %3, align 8
  br label %84

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  %36 = bitcast i8* %35 to %struct.mlx4_ib_fast_reg_page_list*
  %37 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %38, i32 0, i32 0
  store %struct.mlx4_ib_fast_reg_page_list* %36, %struct.mlx4_ib_fast_reg_page_list** %39, align 8
  %40 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %41, i32 0, i32 0
  %43 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %42, align 8
  %44 = icmp ne %struct.mlx4_ib_fast_reg_page_list* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %73

46:                                               ; preds = %32
  %47 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @dma_alloc_coherent(i32* %52, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %46
  br label %73

65:                                               ; preds = %46
  %66 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 63
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %71, i32 0, i32 1
  store %struct.ib_fast_reg_page_list* %72, %struct.ib_fast_reg_page_list** %3, align 8
  br label %84

73:                                               ; preds = %64, %45
  %74 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %75, i32 0, i32 0
  %77 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %76, align 8
  %78 = call i32 @kfree(%struct.mlx4_ib_fast_reg_page_list* %77)
  %79 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %7, align 8
  %80 = call i32 @kfree(%struct.mlx4_ib_fast_reg_page_list* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %82)
  store %struct.ib_fast_reg_page_list* %83, %struct.ib_fast_reg_page_list** %3, align 8
  br label %84

84:                                               ; preds = %73, %65, %28, %18
  %85 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %85
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_fast_reg_page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_query_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_query_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_smp = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PKEY_TABLE = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_ib_query_pkey(%struct.ib_device* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_smp*, align 8
  %12 = alloca %struct.ib_smp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.ib_smp* null, %struct.ib_smp** %11, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %12, align 8
  %15 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ib_smp* @kzalloc(i32 16, i32 %18)
  store %struct.ib_smp* %19, %struct.ib_smp** %11, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ib_smp* @kmalloc(i32 16, i32 %20)
  store %struct.ib_smp* %21, %struct.ib_smp** %12, align 8
  %22 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %23 = icmp ne %struct.ib_smp* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %26 = icmp ne %struct.ib_smp* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %5
  br label %75

28:                                               ; preds = %24
  %29 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %30 = call i32 @init_query_mad(%struct.ib_smp* %29)
  %31 = load i32, i32* @IB_SMP_ATTR_PKEY_TABLE, align 4
  %32 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %33 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 32
  %36 = call i32 @cpu_to_be32(i32 %35)
  %37 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %38 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %40 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @mlx4_is_mfunc(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %48, %45, %28
  %53 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %54 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %53)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %58 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %59 = call i32 @mlx4_MAD_IFC(%struct.TYPE_3__* %54, i32 %55, i32 %56, i32* null, i32* null, %struct.ib_smp* %57, %struct.ib_smp* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %75

63:                                               ; preds = %52
  %64 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %65 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %8, align 4
  %69 = srem i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be16_to_cpu(i32 %72)
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %63, %62, %27
  %76 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %77 = call i32 @kfree(%struct.ib_smp* %76)
  %78 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %79 = call i32 @kfree(%struct.ib_smp* %78)
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_is_mfunc(i32) #1

declare dso_local %struct.TYPE_3__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.TYPE_3__*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_query_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i64 }
%struct.ib_smp = type { i64, i8*, i32 }
%struct.mlx4_ib_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_ib_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3, i32 %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_smp*, align 8
  %12 = alloca %struct.ib_smp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_ib_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.ib_smp* null, %struct.ib_smp** %11, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %12, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %19)
  store %struct.mlx4_ib_dev* %20, %struct.mlx4_ib_dev** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ib_smp* @kzalloc(i32 24, i32 %22)
  store %struct.ib_smp* %23, %struct.ib_smp** %11, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ib_smp* @kmalloc(i32 24, i32 %24)
  store %struct.ib_smp* %25, %struct.ib_smp** %12, align 8
  %26 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %27 = icmp ne %struct.ib_smp* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %30 = icmp ne %struct.ib_smp* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %5
  br label %120

32:                                               ; preds = %28
  %33 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %34 = call i32 @init_query_mad(%struct.ib_smp* %33)
  %35 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %36 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %37 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %41 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @mlx4_is_mfunc(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %52 = load i32, i32* %16, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %50, %47, %32
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %59 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %60 = call i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %55, i32 %56, i32 %57, i32* null, i32* null, %struct.ib_smp* %58, %struct.ib_smp* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %120

64:                                               ; preds = %54
  %65 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %66 = bitcast %union.ib_gid* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %69 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 8
  %72 = call i32 @memcpy(i64 %67, i64 %71, i32 8)
  %73 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @mlx4_is_mfunc(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %120

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %78, %64
  %87 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %88 = call i32 @init_query_mad(%struct.ib_smp* %87)
  %89 = load i32, i32* @IB_SMP_ATTR_GUID_INFO, align 4
  %90 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %91 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sdiv i32 %92, 8
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %96 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %101 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %102 = call i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %97, i32 %98, i32 %99, i32* null, i32* null, %struct.ib_smp* %100, %struct.ib_smp* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  br label %120

106:                                              ; preds = %86
  %107 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %108 = bitcast %union.ib_gid* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 8
  %111 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %112 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = srem i32 %114, 8
  %116 = mul nsw i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = call i32 @memcpy(i64 %110, i64 %118, i32 8)
  br label %120

120:                                              ; preds = %106, %105, %84, %63, %31
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %125 = bitcast %union.ib_gid* %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 8
  %128 = call i32 @memset(i64 %127, i32 0, i32 8)
  br label %129

129:                                              ; preds = %123, %120
  %130 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %131 = call i32 @kfree(%struct.ib_smp* %130)
  %132 = load %struct.ib_smp*, %struct.ib_smp** %12, align 8
  %133 = call i32 @kfree(%struct.ib_smp* %132)
  %134 = load i32, i32* %13, align 4
  ret i32 %134
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

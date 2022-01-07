; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_handle_slaves_guid_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_handle_slaves_guid_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, i32 }
%struct.ib_smp = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to allocate memory for guid info mads\0A\00", align 1
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed in get GUID INFO MAD_IFC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32, i32, i32)* @handle_slaves_guid_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_slaves_guid_change(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx4_is_mfunc(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx4_is_master(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %4
  br label %118

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ib_smp* @kmalloc(i32 28, i32 %25)
  store %struct.ib_smp* %26, %struct.ib_smp** %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ib_smp* @kmalloc(i32 28, i32 %27)
  store %struct.ib_smp* %28, %struct.ib_smp** %10, align 8
  %29 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %30 = icmp ne %struct.ib_smp* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %33 = icmp ne %struct.ib_smp* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 0
  %37 = call i32 @mlx4_ib_warn(i32* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %113

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 4
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %109, %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %112

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 8, %49
  %51 = ashr i32 %48, %50
  %52 = and i32 %51, 255
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %109

55:                                               ; preds = %47, %44
  %56 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %57 = call i32 @memset(%struct.ib_smp* %56, i32 0, i32 28)
  %58 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %59 = call i32 @memset(%struct.ib_smp* %58, i32 0, i32 28)
  %60 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %61 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 4
  %63 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %64 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %68 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %69 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @IB_SMP_ATTR_GUID_INFO, align 4
  %71 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %72 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @cpu_to_be32(i32 %75)
  %77 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %78 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %80 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  %81 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %85 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %86 = call i64 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %79, i32 %82, i32 %83, i32* null, i32* null, %struct.ib_smp* %84, %struct.ib_smp* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %55
  %89 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %89, i32 0, i32 0
  %91 = call i32 @mlx4_ib_warn(i32* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %113

92:                                               ; preds = %55
  %93 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %99 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %98, i32 0, i32 2
  %100 = call i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev* %93, i32 %96, i32 %97, i32* %99)
  %101 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %107 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %106, i32 0, i32 2
  %108 = call i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev* %101, i32 %104, i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %92, %54
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %41

112:                                              ; preds = %41
  br label %113

113:                                              ; preds = %112, %88, %34
  %114 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %115 = call i32 @kfree(%struct.ib_smp* %114)
  %116 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %117 = call i32 @kfree(%struct.ib_smp* %116)
  br label %118

118:                                              ; preds = %113, %23
  ret void
}

declare dso_local i32 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_ib_warn(i32*, i8*) #1

declare dso_local i32 @memset(%struct.ib_smp*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_MAD_IFC(%struct.mlx4_ib_dev*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

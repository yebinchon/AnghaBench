; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_shared_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_shared_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mv_xor_platform_shared_data* }
%struct.mv_xor_platform_shared_data = type { i32* }
%struct.mv_xor_shared_private = type { i8*, i8* }
%struct.resource = type { i64, i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Marvell shared XOR driver\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv_xor_shared_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_shared_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mv_xor_platform_shared_data*, align 8
  %5 = alloca %struct.mv_xor_shared_private*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.mv_xor_platform_shared_data*, %struct.mv_xor_platform_shared_data** %9, align 8
  store %struct.mv_xor_platform_shared_data* %10, %struct.mv_xor_platform_shared_data** %4, align 8
  %11 = load i32, i32* @KERN_NOTICE, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_printk(i32 %11, %struct.TYPE_4__* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mv_xor_shared_private* @devm_kzalloc(%struct.TYPE_4__* %16, i32 16, i32 %17)
  store %struct.mv_xor_shared_private* %18, %struct.mv_xor_shared_private** %5, align 8
  %19 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %20 = icmp ne %struct.mv_xor_shared_private* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %108

33:                                               ; preds = %24
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = add nsw i64 %45, 1
  %47 = call i8* @devm_ioremap(%struct.TYPE_4__* %35, i64 %38, i64 %46)
  %48 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %49 = getelementptr inbounds %struct.mv_xor_shared_private, %struct.mv_xor_shared_private* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %51 = getelementptr inbounds %struct.mv_xor_shared_private, %struct.mv_xor_shared_private* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %33
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %108

57:                                               ; preds = %33
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 1)
  store %struct.resource* %60, %struct.resource** %6, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %108

66:                                               ; preds = %57
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = add nsw i64 %78, 1
  %80 = call i8* @devm_ioremap(%struct.TYPE_4__* %68, i64 %71, i64 %79)
  %81 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %82 = getelementptr inbounds %struct.mv_xor_shared_private, %struct.mv_xor_shared_private* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %84 = getelementptr inbounds %struct.mv_xor_shared_private, %struct.mv_xor_shared_private* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %66
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %108

90:                                               ; preds = %66
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.mv_xor_shared_private* %92)
  %94 = load %struct.mv_xor_platform_shared_data*, %struct.mv_xor_platform_shared_data** %4, align 8
  %95 = icmp ne %struct.mv_xor_platform_shared_data* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.mv_xor_platform_shared_data*, %struct.mv_xor_platform_shared_data** %4, align 8
  %98 = getelementptr inbounds %struct.mv_xor_platform_shared_data, %struct.mv_xor_platform_shared_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.mv_xor_shared_private*, %struct.mv_xor_shared_private** %5, align 8
  %103 = load %struct.mv_xor_platform_shared_data*, %struct.mv_xor_platform_shared_data** %4, align 8
  %104 = getelementptr inbounds %struct.mv_xor_platform_shared_data, %struct.mv_xor_platform_shared_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @mv_xor_conf_mbus_windows(%struct.mv_xor_shared_private* %102, i32* %105)
  br label %107

107:                                              ; preds = %101, %96, %90
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %87, %63, %54, %30, %21
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @dev_printk(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local %struct.mv_xor_shared_private* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mv_xor_shared_private*) #1

declare dso_local i32 @mv_xor_conf_mbus_windows(%struct.mv_xor_shared_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

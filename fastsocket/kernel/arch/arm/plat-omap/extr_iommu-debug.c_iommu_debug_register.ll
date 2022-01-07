; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu-debug.c_iommu_debug_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu-debug.c_iommu_debug_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.iommu = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@iommu_debug_root = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nr_tlb_entries\00", align 1
@ver = common dso_local global i32 0, align 4
@regs = common dso_local global i32 0, align 4
@tlb = common dso_local global i32 0, align 4
@pagetable = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @iommu_debug_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_debug_register(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.iommu*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = call %struct.iommu* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.iommu* %13, %struct.iommu** %7, align 8
  %14 = load %struct.iommu*, %struct.iommu** %7, align 8
  %15 = icmp ne %struct.iommu* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.iommu*, %struct.iommu** %7, align 8
  %18 = getelementptr inbounds %struct.iommu, %struct.iommu* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %16
  %25 = load %struct.iommu*, %struct.iommu** %7, align 8
  %26 = getelementptr inbounds %struct.iommu, %struct.iommu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @iommu_debug_root, align 4
  %29 = call %struct.dentry* @debugfs_create_dir(i32 %27, i32 %28)
  store %struct.dentry* %29, %struct.dentry** %8, align 8
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %24
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %36, %struct.dentry** %9, align 8
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = load %struct.iommu*, %struct.iommu** %7, align 8
  %39 = getelementptr inbounds %struct.iommu, %struct.iommu* %38, i32 0, i32 0
  %40 = call %struct.dentry* @debugfs_create_u8(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 400, %struct.dentry* %37, i32* %39)
  store %struct.dentry* %40, %struct.dentry** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = icmp ne %struct.dentry* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load i32, i32* @ver, align 4
  %48 = call i32 @DEBUG_ADD_FILE_RO(i32 %47)
  %49 = load i32, i32* @regs, align 4
  %50 = call i32 @DEBUG_ADD_FILE_RO(i32 %49)
  %51 = load i32, i32* @tlb, align 4
  %52 = call i32 @DEBUG_ADD_FILE_RO(i32 %51)
  %53 = load i32, i32* @pagetable, align 4
  %54 = call i32 @DEBUG_ADD_FILE(i32 %53)
  %55 = load i32, i32* @mmap, align 4
  %56 = call i32 @DEBUG_ADD_FILE_RO(i32 %55)
  %57 = load i32, i32* @mem, align 4
  %58 = call i32 @DEBUG_ADD_FILE(i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %46, %43, %32, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.iommu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local %struct.dentry* @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @DEBUG_ADD_FILE_RO(i32) #1

declare dso_local i32 @DEBUG_ADD_FILE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.stor_mem_pools*, i32 }
%struct.stor_mem_pools = type { i32, i32 }

@STORVSC_MIN_BUF_NR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@mempool_alloc_slab = common dso_local global i32 0, align 4
@mempool_free_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @storvsc_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_device_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.stor_mem_pools*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load i32, i32* @STORVSC_MIN_BUF_NR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.stor_mem_pools* @kzalloc(i32 8, i32 %7)
  store %struct.stor_mem_pools* %8, %struct.stor_mem_pools** %4, align 8
  %9 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %10 = icmp ne %struct.stor_mem_pools* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 1
  %17 = call i32 @dev_name(i32* %16)
  %18 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %19 = call i32 @kmem_cache_create(i32 %17, i32 4, i32 0, i32 %18, i32* null)
  %20 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %21 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %23 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %51

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @mempool_alloc_slab, align 4
  %30 = load i32, i32* @mempool_free_slab, align 4
  %31 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %32 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mempool_create(i32 %28, i32 %29, i32 %30, i32 %33)
  %35 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %36 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %38 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  %43 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  store %struct.stor_mem_pools* %43, %struct.stor_mem_pools** %45, align 8
  store i32 0, i32* %2, align 4
  br label %56

46:                                               ; preds = %41
  %47 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %48 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kmem_cache_destroy(i32 %49)
  br label %51

51:                                               ; preds = %46, %26
  %52 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %4, align 8
  %53 = call i32 @kfree(%struct.stor_mem_pools* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %42, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.stor_mem_pools* @kzalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mempool_create(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.stor_mem_pools*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

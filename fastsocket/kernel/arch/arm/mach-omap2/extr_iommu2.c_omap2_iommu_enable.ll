; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_iommu_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_iommu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32, i32, i64 }

@SZ_16K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMU_SYS_SOFTRESET = common dso_local global i32 0, align 4
@MMU_SYSCONFIG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MMU_SYSSTATUS = common dso_local global i32 0, align 4
@MMU_SYS_RESETDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't take mmu out of reset\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MMU_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: version %d.%d\0A\00", align 1
@MMU_SYS_IDLE_MASK = common dso_local global i32 0, align 4
@MMU_SYS_IDLE_SMART = common dso_local global i32 0, align 4
@MMU_SYS_AUTOIDLE = common dso_local global i32 0, align 4
@MMU_IRQ_MASK = common dso_local global i32 0, align 4
@MMU_IRQENABLE = common dso_local global i32 0, align 4
@MMU_TTB = common dso_local global i32 0, align 4
@MMU_CNTL = common dso_local global i32 0, align 4
@MMU_CNTL_MASK = common dso_local global i32 0, align 4
@MMU_CNTL_MMU_EN = common dso_local global i32 0, align 4
@MMU_CNTL_TWL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*)* @omap2_iommu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_iommu_enable(%struct.iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.iommu* %0, %struct.iommu** %3, align 8
  %7 = load %struct.iommu*, %struct.iommu** %3, align 8
  %8 = getelementptr inbounds %struct.iommu, %struct.iommu* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.iommu*, %struct.iommu** %3, align 8
  %13 = getelementptr inbounds %struct.iommu, %struct.iommu* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @SZ_16K, align 4
  %17 = call i32 @IS_ALIGNED(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %126

22:                                               ; preds = %11
  %23 = load %struct.iommu*, %struct.iommu** %3, align 8
  %24 = getelementptr inbounds %struct.iommu, %struct.iommu* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @virt_to_phys(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SZ_16K, align 4
  %29 = call i32 @IS_ALIGNED(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %126

34:                                               ; preds = %22
  %35 = load %struct.iommu*, %struct.iommu** %3, align 8
  %36 = load i32, i32* @MMU_SYS_SOFTRESET, align 4
  %37 = load i32, i32* @MMU_SYSCONFIG, align 4
  %38 = call i32 @iommu_write_reg(%struct.iommu* %35, i32 %36, i32 %37)
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @msecs_to_jiffies(i32 20)
  %41 = add i64 %39, %40
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %52, %34
  %43 = load %struct.iommu*, %struct.iommu** %3, align 8
  %44 = load i32, i32* @MMU_SYSSTATUS, align 4
  %45 = call i32 @iommu_read_reg(%struct.iommu* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MMU_SYS_RESETDONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %58

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @time_after(i64 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %42, label %58

58:                                               ; preds = %52, %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MMU_SYS_RESETDONE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load %struct.iommu*, %struct.iommu** %3, align 8
  %65 = getelementptr inbounds %struct.iommu, %struct.iommu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %126

70:                                               ; preds = %58
  %71 = load %struct.iommu*, %struct.iommu** %3, align 8
  %72 = load i32, i32* @MMU_REVISION, align 4
  %73 = call i32 @iommu_read_reg(%struct.iommu* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.iommu*, %struct.iommu** %3, align 8
  %75 = getelementptr inbounds %struct.iommu, %struct.iommu* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iommu*, %struct.iommu** %3, align 8
  %78 = getelementptr inbounds %struct.iommu, %struct.iommu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %80, 4
  %82 = and i32 %81, 15
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 15
  %85 = call i32 @dev_info(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %84)
  %86 = load %struct.iommu*, %struct.iommu** %3, align 8
  %87 = load i32, i32* @MMU_SYSCONFIG, align 4
  %88 = call i32 @iommu_read_reg(%struct.iommu* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @MMU_SYS_IDLE_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @MMU_SYS_IDLE_SMART, align 4
  %94 = load i32, i32* @MMU_SYS_AUTOIDLE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load %struct.iommu*, %struct.iommu** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @MMU_SYSCONFIG, align 4
  %101 = call i32 @iommu_write_reg(%struct.iommu* %98, i32 %99, i32 %100)
  %102 = load %struct.iommu*, %struct.iommu** %3, align 8
  %103 = load i32, i32* @MMU_IRQ_MASK, align 4
  %104 = load i32, i32* @MMU_IRQENABLE, align 4
  %105 = call i32 @iommu_write_reg(%struct.iommu* %102, i32 %103, i32 %104)
  %106 = load %struct.iommu*, %struct.iommu** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MMU_TTB, align 4
  %109 = call i32 @iommu_write_reg(%struct.iommu* %106, i32 %107, i32 %108)
  %110 = load %struct.iommu*, %struct.iommu** %3, align 8
  %111 = load i32, i32* @MMU_CNTL, align 4
  %112 = call i32 @iommu_read_reg(%struct.iommu* %110, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* @MMU_CNTL_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %4, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @MMU_CNTL_MMU_EN, align 4
  %118 = load i32, i32* @MMU_CNTL_TWL_EN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load %struct.iommu*, %struct.iommu** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @MMU_CNTL, align 4
  %125 = call i32 @iommu_write_reg(%struct.iommu* %122, i32 %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %70, %63, %31, %19
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @iommu_write_reg(%struct.iommu*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iommu_read_reg(%struct.iommu*, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

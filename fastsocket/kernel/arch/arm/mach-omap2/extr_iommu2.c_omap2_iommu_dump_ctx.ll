; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_iommu_dump_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_iommu_dump_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }

@REVISION = common dso_local global i32 0, align 4
@SYSCONFIG = common dso_local global i32 0, align 4
@SYSSTATUS = common dso_local global i32 0, align 4
@IRQSTATUS = common dso_local global i32 0, align 4
@IRQENABLE = common dso_local global i32 0, align 4
@WALKING_ST = common dso_local global i32 0, align 4
@CNTL = common dso_local global i32 0, align 4
@FAULT_AD = common dso_local global i32 0, align 4
@TTB = common dso_local global i32 0, align 4
@LOCK = common dso_local global i32 0, align 4
@LD_TLB = common dso_local global i32 0, align 4
@CAM = common dso_local global i32 0, align 4
@RAM = common dso_local global i32 0, align 4
@GFLUSH = common dso_local global i32 0, align 4
@FLUSH_ENTRY = common dso_local global i32 0, align 4
@READ_CAM = common dso_local global i32 0, align 4
@READ_RAM = common dso_local global i32 0, align 4
@EMU_FAULT_AD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*, i8*, i32)* @omap2_iommu_dump_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_iommu_dump_ctx(%struct.iommu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.iommu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.iommu* %0, %struct.iommu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* @REVISION, align 4
  %10 = call i32 @pr_reg(i32 %9)
  %11 = load i32, i32* @SYSCONFIG, align 4
  %12 = call i32 @pr_reg(i32 %11)
  %13 = load i32, i32* @SYSSTATUS, align 4
  %14 = call i32 @pr_reg(i32 %13)
  %15 = load i32, i32* @IRQSTATUS, align 4
  %16 = call i32 @pr_reg(i32 %15)
  %17 = load i32, i32* @IRQENABLE, align 4
  %18 = call i32 @pr_reg(i32 %17)
  %19 = load i32, i32* @WALKING_ST, align 4
  %20 = call i32 @pr_reg(i32 %19)
  %21 = load i32, i32* @CNTL, align 4
  %22 = call i32 @pr_reg(i32 %21)
  %23 = load i32, i32* @FAULT_AD, align 4
  %24 = call i32 @pr_reg(i32 %23)
  %25 = load i32, i32* @TTB, align 4
  %26 = call i32 @pr_reg(i32 %25)
  %27 = load i32, i32* @LOCK, align 4
  %28 = call i32 @pr_reg(i32 %27)
  %29 = load i32, i32* @LD_TLB, align 4
  %30 = call i32 @pr_reg(i32 %29)
  %31 = load i32, i32* @CAM, align 4
  %32 = call i32 @pr_reg(i32 %31)
  %33 = load i32, i32* @RAM, align 4
  %34 = call i32 @pr_reg(i32 %33)
  %35 = load i32, i32* @GFLUSH, align 4
  %36 = call i32 @pr_reg(i32 %35)
  %37 = load i32, i32* @FLUSH_ENTRY, align 4
  %38 = call i32 @pr_reg(i32 %37)
  %39 = load i32, i32* @READ_CAM, align 4
  %40 = call i32 @pr_reg(i32 %39)
  %41 = load i32, i32* @READ_RAM, align 4
  %42 = call i32 @pr_reg(i32 %41)
  %43 = load i32, i32* @EMU_FAULT_AD, align 4
  %44 = call i32 @pr_reg(i32 %43)
  br label %45

45:                                               ; preds = %3
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  ret i32 %51
}

declare dso_local i32 @pr_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

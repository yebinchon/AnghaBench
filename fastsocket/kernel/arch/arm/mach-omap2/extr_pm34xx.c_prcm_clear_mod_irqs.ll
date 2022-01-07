; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c_prcm_clear_mod_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c_prcm_clear_mod_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP3430ES2_PM_WKST3 = common dso_local global i32 0, align 4
@PM_WKST1 = common dso_local global i32 0, align 4
@OMAP3430ES2_CM_FCLKEN3 = common dso_local global i32 0, align 4
@CM_FCLKEN1 = common dso_local global i32 0, align 4
@CM_ICLKEN3 = common dso_local global i32 0, align 4
@CM_ICLKEN1 = common dso_local global i32 0, align 4
@OMAP3430ES2_PM_MPUGRPSEL3 = common dso_local global i32 0, align 4
@OMAP3430_PM_MPUGRPSEL = common dso_local global i32 0, align 4
@OMAP3430ES2_USBHOST_MOD = common dso_local global i32 0, align 4
@OMAP3430ES2_EN_USBHOST2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @prcm_clear_mod_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prcm_clear_mod_irqs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @OMAP3430ES2_PM_WKST3, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @PM_WKST1, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @OMAP3430ES2_CM_FCLKEN3, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @CM_FCLKEN1, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @CM_ICLKEN3, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CM_ICLKEN1, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @OMAP3430ES2_PM_MPUGRPSEL3, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @OMAP3430_PM_MPUGRPSEL, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @prm_read_mod_reg(i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @prm_read_mod_reg(i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %44
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @cm_read_mod_reg(i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cm_read_mod_reg(i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %80, %56
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @cm_set_mod_reg_bits(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load i32, i32* @OMAP3430ES2_EN_USBHOST2_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %75, %66
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @cm_set_mod_reg_bits(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @prm_write_mod_reg(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @prm_read_mod_reg(i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %63

94:                                               ; preds = %63
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @cm_write_mod_reg(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @cm_write_mod_reg(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %44
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

declare dso_local i32 @prm_read_mod_reg(i32, i32) #1

declare dso_local i32 @cm_read_mod_reg(i32, i32) #1

declare dso_local i32 @cm_set_mod_reg_bits(i32, i32, i32) #1

declare dso_local i32 @prm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @cm_write_mod_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

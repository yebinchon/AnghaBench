; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_mpu_retention.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_mpu_retention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CORE_MOD = common dso_local global i32 0, align 4
@PM_WKST1 = common dso_local global i32 0, align 4
@OMAP24XX_PM_WKST2 = common dso_local global i32 0, align 4
@WKUP_MOD = common dso_local global i32 0, align 4
@PM_WKST = common dso_local global i32 0, align 4
@OMAP_POWERSTATE_SHIFT = common dso_local global i32 0, align 4
@OMAP_LOGICRETSTATE = common dso_local global i32 0, align 4
@MPU_MOD = common dso_local global i32 0, align 4
@PM_PWSTCTRL = common dso_local global i32 0, align 4
@omap2_pm_debug = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap2_enter_mpu_retention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_enter_mpu_retention() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 4
  store i32 0, i32* %1, align 4
  %7 = call i64 (...) @omap2_i2c_active()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %68

10:                                               ; preds = %0
  %11 = call i64 (...) @omap2_allow_mpu_retention()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* @CORE_MOD, align 4
  %15 = load i32, i32* @PM_WKST1, align 4
  %16 = call i32 @prm_write_mod_reg(i32 -1, i32 %14, i32 %15)
  %17 = load i32, i32* @CORE_MOD, align 4
  %18 = load i32, i32* @OMAP24XX_PM_WKST2, align 4
  %19 = call i32 @prm_write_mod_reg(i32 -1, i32 %17, i32 %18)
  %20 = load i32, i32* @WKUP_MOD, align 4
  %21 = load i32, i32* @PM_WKST, align 4
  %22 = call i32 @prm_write_mod_reg(i32 -1, i32 %20, i32 %21)
  %23 = load i32, i32* @OMAP_POWERSTATE_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* @OMAP_LOGICRETSTATE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MPU_MOD, align 4
  %28 = load i32, i32* @PM_PWSTCTRL, align 4
  %29 = call i32 @prm_write_mod_reg(i32 %26, i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %10
  %31 = load i32, i32* @OMAP_LOGICRETSTATE, align 4
  %32 = load i32, i32* @MPU_MOD, align 4
  %33 = load i32, i32* @PM_PWSTCTRL, align 4
  %34 = call i32 @prm_write_mod_reg(i32 %31, i32 %32, i32 %33)
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %30, %13
  %36 = load i64, i64* @omap2_pm_debug, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  %43 = call i32 @omap2_pm_dump(i32 %42, i32 0, i64 0)
  %44 = call i32 @getnstimeofday(%struct.timespec* %2)
  br label %45

45:                                               ; preds = %38, %35
  %46 = call i32 (...) @omap2_sram_idle()
  %47 = load i64, i64* @omap2_pm_debug, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = call i32 @getnstimeofday(%struct.timespec* %3)
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @timespec_sub(i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.timespec* %4 to i8*
  %58 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = call i64 @timespec_to_ns(%struct.timespec* %4)
  %60 = load i64, i64* @NSEC_PER_USEC, align 8
  %61 = mul i64 %59, %60
  store i64 %61, i64* %5, align 8
  %62 = load i32, i32* %1, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 1
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @omap2_pm_dump(i32 %65, i32 1, i64 %66)
  br label %68

68:                                               ; preds = %9, %49, %45
  ret void
}

declare dso_local i64 @omap2_i2c_active(...) #1

declare dso_local i64 @omap2_allow_mpu_retention(...) #1

declare dso_local i32 @prm_write_mod_reg(i32, i32, i32) #1

declare dso_local i32 @omap2_pm_dump(i32, i32, i64) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i32 @omap2_sram_idle(...) #1

declare dso_local i32 @timespec_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

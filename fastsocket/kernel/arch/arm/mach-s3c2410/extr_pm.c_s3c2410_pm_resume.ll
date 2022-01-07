; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_pm.c_s3c2410_pm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_pm.c_s3c2410_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }

@S3C2410_GSTATUS2 = common dso_local global i32 0, align 4
@S3C2410_GSTATUS2_OFFRESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @s3c2410_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_pm_resume(%struct.sys_device* %0) #0 {
  %2 = alloca %struct.sys_device*, align 8
  %3 = alloca i64, align 8
  store %struct.sys_device* %0, %struct.sys_device** %2, align 8
  %4 = load i32, i32* @S3C2410_GSTATUS2, align 4
  %5 = call i64 @__raw_readl(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @S3C2410_GSTATUS2_OFFRESET, align 8
  %7 = load i64, i64* %3, align 8
  %8 = and i64 %7, %6
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @S3C2410_GSTATUS2, align 4
  %11 = call i32 @__raw_writel(i64 %9, i32 %10)
  %12 = call i64 (...) @machine_is_aml_m5900()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @S3C2410_GPF(i32 2)
  %16 = call i32 @s3c2410_gpio_setpin(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  ret i32 0
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i64 @machine_is_aml_m5900(...) #1

declare dso_local i32 @s3c2410_gpio_setpin(i32, i32) #1

declare dso_local i32 @S3C2410_GPF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

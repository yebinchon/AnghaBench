; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq-pm.c_s3c24xx_irq_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq-pm.c_s3c24xx_irq_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }

@save_extint = common dso_local global i32* null, align 8
@S3C24XX_EXTINT0 = common dso_local global i64 0, align 8
@save_eintflt = common dso_local global i32* null, align 8
@S3C24XX_EINFLT0 = common dso_local global i64 0, align 8
@irq_save = common dso_local global i32* null, align 8
@save_eintmask = common dso_local global i32 0, align 4
@S3C24XX_EINTMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c24xx_irq_resume(%struct.sys_device* %0) #0 {
  %2 = alloca %struct.sys_device*, align 8
  %3 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @save_extint, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32*, i32** @save_extint, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @S3C24XX_EXTINT0, align 8
  %16 = load i32, i32* %3, align 4
  %17 = mul i32 %16, 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i32 @__raw_writel(i32 %14, i64 %19)
  br label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** @save_eintflt, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** @save_eintflt, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @S3C24XX_EINFLT0, align 8
  %37 = load i32, i32* %3, align 4
  %38 = mul i32 %37, 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 @__raw_writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load i32*, i32** @irq_save, align 8
  %47 = load i32*, i32** @irq_save, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = call i32 @s3c_pm_do_restore(i32* %46, i32 %48)
  %50 = load i32, i32* @save_eintmask, align 4
  %51 = load i64, i64* @S3C24XX_EINTMASK, align 8
  %52 = call i32 @__raw_writel(i32 %50, i64 %51)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @s3c_pm_do_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

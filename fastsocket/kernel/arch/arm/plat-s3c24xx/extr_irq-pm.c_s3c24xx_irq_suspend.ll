; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq-pm.c_s3c24xx_irq_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq-pm.c_s3c24xx_irq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }

@save_extint = common dso_local global i8** null, align 8
@S3C24XX_EXTINT0 = common dso_local global i64 0, align 8
@save_eintflt = common dso_local global i8** null, align 8
@S3C24XX_EINFLT0 = common dso_local global i64 0, align 8
@irq_save = common dso_local global i8** null, align 8
@S3C24XX_EINTMASK = common dso_local global i64 0, align 8
@save_eintmask = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c24xx_irq_suspend(%struct.sys_device* %0, i32 %1) #0 {
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i8**, i8*** @save_extint, align 8
  %9 = call i32 @ARRAY_SIZE(i8** %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load i64, i64* @S3C24XX_EXTINT0, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul i32 %13, 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i8* @__raw_readl(i64 %16)
  %18 = load i8**, i8*** @save_extint, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %17, i8** %21, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i8**, i8*** @save_eintflt, align 8
  %29 = call i32 @ARRAY_SIZE(i8** %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i64, i64* @S3C24XX_EINFLT0, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul i32 %33, 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i8* @__raw_readl(i64 %36)
  %38 = load i8**, i8*** @save_eintflt, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i8**, i8*** @irq_save, align 8
  %47 = load i8**, i8*** @irq_save, align 8
  %48 = call i32 @ARRAY_SIZE(i8** %47)
  %49 = call i32 @s3c_pm_do_save(i8** %46, i32 %48)
  %50 = load i64, i64* @S3C24XX_EINTMASK, align 8
  %51 = call i8* @__raw_readl(i64 %50)
  store i8* %51, i8** @save_eintmask, align 8
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @__raw_readl(i64) #1

declare dso_local i32 @s3c_pm_do_save(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

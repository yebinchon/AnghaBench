; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_pm.c_s3c_pm_configure_extint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_pm.c_s3c_pm_configure_extint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_pm_configure_extint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @S3C2410_GPF(i32 0)
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @S3C2410_GPF(i32 7)
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @S3C2410_GPF(i32 0)
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @s3c_pm_check_resume_pin(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %3

16:                                               ; preds = %3
  %17 = call i32 @S3C2410_GPG(i32 0)
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %29, %16
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @S3C2410_GPG(i32 7)
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @S3C2410_GPG(i32 0)
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 8
  %28 = call i32 @s3c_pm_check_resume_pin(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %18

32:                                               ; preds = %18
  ret void
}

declare dso_local i32 @S3C2410_GPF(i32) #1

declare dso_local i32 @s3c_pm_check_resume_pin(i32, i32) #1

declare dso_local i32 @S3C2410_GPG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

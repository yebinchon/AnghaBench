; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_pm.c_s3c2410_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_pm.c_s3c2410_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s3c_cpu_resume = common dso_local global i32 0, align 4
@S3C2410_GSTATUS3 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"GSTATUS3 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GSTATUS4 0x%08x\0A\00", align 1
@S3C2410_GSTATUS4 = common dso_local global i8* null, align 8
@H1940_SUSPEND_CHECK = common dso_local global i32 0, align 4
@H1940_SUSPEND_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c2410_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_pm_prepare() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @s3c_cpu_resume, align 4
  %8 = call i64 @virt_to_phys(i32 %7)
  %9 = load i8*, i8** @S3C2410_GSTATUS3, align 8
  %10 = call i32 @__raw_writel(i64 %8, i8* %9)
  %11 = load i8*, i8** @S3C2410_GSTATUS3, align 8
  %12 = call i64 @__raw_readl(i8* %11)
  %13 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i8*, i8** @S3C2410_GSTATUS4, align 8
  %15 = call i64 @__raw_readl(i8* %14)
  %16 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = call i64 (...) @machine_is_h1940()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %0
  %20 = load i32, i32* @H1940_SUSPEND_CHECK, align 4
  %21 = call i8* @phys_to_virt(i32 %20)
  store i8* %21, i8** %1, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %2, align 8
  br label %22

22:                                               ; preds = %32, %19
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %23, 262144
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %1, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = call i64 @__raw_readl(i8* %28)
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 1024
  store i64 %34, i64* %2, align 8
  br label %22

35:                                               ; preds = %22
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* @H1940_SUSPEND_CHECKSUM, align 4
  %38 = call i8* @phys_to_virt(i32 %37)
  %39 = call i32 @__raw_writel(i64 %36, i8* %38)
  br label %40

40:                                               ; preds = %35, %0
  %41 = call i64 (...) @machine_is_rx3715()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* @H1940_SUSPEND_CHECK, align 4
  %45 = call i8* @phys_to_virt(i32 %44)
  store i8* %45, i8** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %56, %43
  %47 = load i64, i64* %5, align 8
  %48 = icmp ult i64 %47, 262144
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = call i64 @__raw_readl(i8* %52)
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %5, align 8
  br label %46

59:                                               ; preds = %46
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @H1940_SUSPEND_CHECKSUM, align 4
  %62 = call i8* @phys_to_virt(i32 %61)
  %63 = call i32 @__raw_writel(i64 %60, i8* %62)
  br label %64

64:                                               ; preds = %59, %40
  %65 = call i64 (...) @machine_is_aml_m5900()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @S3C2410_GPF(i32 2)
  %69 = call i32 @s3c2410_gpio_setpin(i32 %68, i32 1)
  br label %70

70:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @__raw_writel(i64, i8*) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @S3C_PMDBG(i8*, i64) #1

declare dso_local i64 @__raw_readl(i8*) #1

declare dso_local i64 @machine_is_h1940(...) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i64 @machine_is_rx3715(...) #1

declare dso_local i64 @machine_is_aml_m5900(...) #1

declare dso_local i32 @s3c2410_gpio_setpin(i32, i32) #1

declare dso_local i32 @S3C2410_GPF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_cpcmd.c_cpcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_cpcmd.c_cpcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"The cpcmd kernel function failed to allocate a response buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cpcmd_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpcmd(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @virt_to_phys(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = lshr i64 %23, 31
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %18, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @GFP_DMA, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @kmalloc(i32 %27, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = call i32 @pr_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %26
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @cpcmd_lock, i64 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @__cpcmd(i8* %41, i8* %42, i32 %43, i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @cpcmd_lock, i64 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @kfree(i8* %52)
  br label %64

54:                                               ; preds = %18
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @spin_lock_irqsave(i32* @cpcmd_lock, i64 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @__cpcmd(i8* %57, i8* %58, i32 %59, i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* @cpcmd_lock, i64 %62)
  br label %64

64:                                               ; preds = %54, %38
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %34
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

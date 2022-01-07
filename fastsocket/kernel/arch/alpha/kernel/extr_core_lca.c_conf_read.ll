; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_conf_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_conf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCA_IOC_STAT0 = common dso_local global i64 0, align 8
@LCA_IOC_STAT0_ERR = common dso_local global i64 0, align 8
@LCA_IOC_STAT0_CODE_SHIFT = common dso_local global i64 0, align 8
@LCA_IOC_STAT0_CODE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"lca.c:conf_read: got stat0=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @conf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_read(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i64, i64* @LCA_IOC_STAT0, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @LCA_IOC_STAT0, align 8
  %14 = inttoptr i64 %13 to i64*
  store i64 %12, i64* %14, align 8
  %15 = call i32 (...) @mb()
  %16 = load i64, i64* %2, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @draina()
  %20 = load i64, i64* @LCA_IOC_STAT0, align 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @LCA_IOC_STAT0_ERR, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @LCA_IOC_STAT0_CODE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = load i64, i64* @LCA_IOC_STAT0_CODE_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @LCA_IOC_STAT0, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 %39, i64* %41, align 8
  %42 = call i32 (...) @mb()
  %43 = call i32 @wrmces(i32 7)
  store i32 -1, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %1
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @draina(...) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @wrmces(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_diag224_get_name_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_diag224_get_name_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@diag224_cpu_names = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @diag224_get_name_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diag224_get_name_table() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PAGE_SIZE, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = load i32, i32* @GFP_DMA, align 4
  %5 = or i32 %3, %4
  %6 = call i32* @kmalloc(i32 %2, i32 %5)
  store i32* %6, i32** @diag224_cpu_names, align 8
  %7 = load i32*, i32** @diag224_cpu_names, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %29

12:                                               ; preds = %0
  %13 = load i32*, i32** @diag224_cpu_names, align 8
  %14 = call i64 @diag224(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32*, i32** @diag224_cpu_names, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load i32*, i32** @diag224_cpu_names, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 16
  %24 = load i32*, i32** @diag224_cpu_names, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = mul nsw i32 %26, 16
  %28 = call i32 @EBCASC(i32* %23, i32 %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %21, %16, %9
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @diag224(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @EBCASC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

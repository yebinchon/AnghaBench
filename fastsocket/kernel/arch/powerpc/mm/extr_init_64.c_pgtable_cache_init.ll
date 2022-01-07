; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_init_64.c_pgtable_cache_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_init_64.c_pgtable_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgtable_cache_name = common dso_local global i32* null, align 8
@PGD_TABLE_SIZE = common dso_local global i32 0, align 4
@SLAB_PANIC = common dso_local global i32 0, align 4
@pgd_ctor = common dso_local global i32 0, align 4
@pgtable_cache = common dso_local global i32* null, align 8
@PMD_TABLE_SIZE = common dso_local global i32 0, align 4
@pmd_ctor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgtable_cache_init() #0 {
  %1 = load i32*, i32** @pgtable_cache_name, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PGD_TABLE_SIZE, align 4
  %5 = load i32, i32* @PGD_TABLE_SIZE, align 4
  %6 = load i32, i32* @SLAB_PANIC, align 4
  %7 = load i32, i32* @pgd_ctor, align 4
  %8 = call i32 @kmem_cache_create(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  %9 = load i32*, i32** @pgtable_cache, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32*, i32** @pgtable_cache_name, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PMD_TABLE_SIZE, align 4
  %15 = load i32, i32* @PMD_TABLE_SIZE, align 4
  %16 = load i32, i32* @SLAB_PANIC, align 4
  %17 = load i32, i32* @pmd_ctor, align 4
  %18 = call i32 @kmem_cache_create(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32*, i32** @pgtable_cache, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

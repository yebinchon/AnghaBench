; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32* }

@PREALLOCATED_PMDS = common dso_local global i32 0, align 4
@PGALLOC_GFP = common dso_local global i32 0, align 4
@pgd_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pgd_alloc(%struct.mm_struct* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %8 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32*, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @PGALLOC_GFP, align 4
  %13 = call i64 @__get_free_page(i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %46

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = call i64 @preallocate_pmds(i32** %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %42

25:                                               ; preds = %18
  %26 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %27 = call i64 @paravirt_pgd_alloc(%struct.mm_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %40

30:                                               ; preds = %25
  %31 = call i32 @spin_lock(i32* @pgd_lock)
  %32 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @pgd_ctor(%struct.mm_struct* %32, i32* %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @pgd_prepopulate_pmd(%struct.mm_struct* %35, i32* %36, i32** %11)
  %38 = call i32 @spin_unlock(i32* @pgd_lock)
  %39 = load i32*, i32** %4, align 8
  store i32* %39, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

40:                                               ; preds = %29
  %41 = call i32 @free_pmds(i32** %11)
  br label %42

42:                                               ; preds = %40, %24
  %43 = load i32*, i32** %4, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = call i32 @free_page(i64 %44)
  br label %46

46:                                               ; preds = %42, %17
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @__get_free_page(i32) #2

declare dso_local i64 @preallocate_pmds(i32**) #2

declare dso_local i64 @paravirt_pgd_alloc(%struct.mm_struct*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @pgd_ctor(%struct.mm_struct*, i32*) #2

declare dso_local i32 @pgd_prepopulate_pmd(%struct.mm_struct*, i32*, i32**) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @free_pmds(i32**) #2

declare dso_local i32 @free_page(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

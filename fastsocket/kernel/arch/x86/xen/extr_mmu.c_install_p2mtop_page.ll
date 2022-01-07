; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_install_p2mtop_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_install_p2mtop_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p2m_top = common dso_local global i64** null, align 8
@p2m_top_mfn = common dso_local global i64* null, align 8
@P2M_ENTRIES_PER_PAGE = common dso_local global i32 0, align 4
@INVALID_P2M_ENTRY = common dso_local global i64 0, align 8
@p2m_missing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_p2mtop_page(i64 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @p2m_top_index(i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64**, i64*** @p2m_top, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64*, i64** %12, i64 %14
  store i64** %15, i64*** %7, align 8
  %16 = load i64*, i64** @p2m_top_mfn, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64* %19, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %30, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @P2M_ENTRIES_PER_PAGE, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* @INVALID_P2M_ENTRY, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %25, i64* %29, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i64**, i64*** %7, align 8
  %35 = load i64, i64* @p2m_missing, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = call i64 @cmpxchg(i64** %34, i64 %35, i64* %36)
  %38 = load i64, i64* @p2m_missing, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i64*, i64** %5, align 8
  %42 = call i64 @virt_to_mfn(i64* %41)
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @p2m_top_index(i64) #1

declare dso_local i64 @cmpxchg(i64**, i64, i64*) #1

declare dso_local i64 @virt_to_mfn(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

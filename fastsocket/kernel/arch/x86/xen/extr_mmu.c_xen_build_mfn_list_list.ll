; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_build_mfn_list_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_build_mfn_list_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DOMAIN_PAGES = common dso_local global i32 0, align 4
@p2m_top = common dso_local global i8*** null, align 8
@p2m_top_mfn = common dso_local global i8** null, align 8
@P2M_ENTRIES_PER_PAGE = common dso_local global i32 0, align 4
@p2m_top_mfn_list = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_build_mfn_list_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MAX_DOMAIN_PAGES, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @p2m_top_index(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i8***, i8**** @p2m_top, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8**, i8*** %12, i64 %14
  %16 = load i8**, i8*** %15, align 8
  %17 = call i8* @virt_to_mfn(i8** %16)
  %18 = load i8**, i8*** @p2m_top_mfn, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %17, i8** %21, align 8
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* @P2M_ENTRIES_PER_PAGE, align 4
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %1, align 4
  br label %5

26:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %2, align 4
  %29 = load i8**, i8*** @p2m_top_mfn_list, align 8
  %30 = call i32 @ARRAY_SIZE(i8** %29)
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @P2M_ENTRIES_PER_PAGE, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i8**, i8*** @p2m_top_mfn, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = call i8* @virt_to_mfn(i8** %39)
  %41 = load i8**, i8*** @p2m_top_mfn_list, align 8
  %42 = load i32, i32* %2, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %2, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %27

48:                                               ; preds = %27
  ret void
}

declare dso_local i32 @p2m_top_index(i32) #1

declare dso_local i8* @virt_to_mfn(i8**) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

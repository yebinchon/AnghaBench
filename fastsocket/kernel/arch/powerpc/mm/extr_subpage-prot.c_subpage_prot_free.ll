; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_subpage-prot.c_subpage_prot_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_subpage-prot.c_subpage_prot_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subpage_prot_table = type { i64, i32***, i32** }

@SBP_L2_COUNT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subpage_prot_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.subpage_prot_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.subpage_prot_table* @pgd_subpage_prot(i32* %8)
  store %struct.subpage_prot_table* %9, %struct.subpage_prot_table** %3, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %15 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %23 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = call i32 @free_page(i64 %28)
  %30 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %31 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %21, %13
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %10

39:                                               ; preds = %10
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %95, %39
  %41 = load i64, i64* %4, align 8
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  %44 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %45 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %44, i32 0, i32 1
  %46 = load i32***, i32**** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i32**, i32*** %46, i64 %47
  %49 = load i32**, i32*** %48, align 8
  store i32** %49, i32*** %7, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = icmp ne i32** %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %95

53:                                               ; preds = %43
  %54 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %55 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %54, i32 0, i32 1
  %56 = load i32***, i32**** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i32**, i32*** %56, i64 %57
  store i32** null, i32*** %58, align 8
  store i64 0, i64* %5, align 8
  br label %59

59:                                               ; preds = %85, %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @SBP_L2_COUNT, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %66 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %91

71:                                               ; preds = %69
  %72 = load i32**, i32*** %7, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32**, i32*** %7, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = call i32 @free_page(i64 %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %59

91:                                               ; preds = %69
  %92 = load i32**, i32*** %7, align 8
  %93 = ptrtoint i32** %92 to i64
  %94 = call i32 @free_page(i64 %93)
  br label %95

95:                                               ; preds = %91, %52
  %96 = load i64, i64* %4, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %4, align 8
  br label %40

98:                                               ; preds = %40
  %99 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %100 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  ret void
}

declare dso_local %struct.subpage_prot_table* @pgd_subpage_prot(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

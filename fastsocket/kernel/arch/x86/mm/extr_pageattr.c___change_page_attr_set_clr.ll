; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c___change_page_attr_set_clr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c___change_page_attr_set_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32, i32, i32*, i32 }

@CPA_ARRAY = common dso_local global i32 0, align 4
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@debug_pagealloc = common dso_local global i32 0, align 4
@cpa_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpa_data*, i32)* @__change_page_attr_set_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__change_page_attr_set_clr(%struct.cpa_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpa_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpa_data* %0, %struct.cpa_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %9 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %95, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %17 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %19 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CPA_ARRAY, align 4
  %22 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %28 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* @debug_pagealloc, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @spin_lock(i32* @cpa_lock)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @__change_page_attr(%struct.cpa_data* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @debug_pagealloc, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = call i32 @spin_unlock(i32* @cpa_lock)
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %97

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %52 = call i32 @cpa_process_alias(%struct.cpa_data* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %97

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %47
  %59 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %60 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %67 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %72 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %75 = load i32, i32* @CPA_ARRAY, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %58
  %80 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %81 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %95

84:                                               ; preds = %58
  %85 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %86 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %91 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %84, %79
  br label %11

96:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %55, %45
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__change_page_attr(%struct.cpa_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpa_process_alias(%struct.cpa_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

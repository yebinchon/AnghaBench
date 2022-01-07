; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_simple_alloc.c_simple_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_simple_alloc.c_simple_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_info = type { i32, i64, i64 }

@alloc_tbl = common dso_local global %struct.alloc_info* null, align 8
@alloc_min = common dso_local global i32 0, align 4
@tbl_entries = common dso_local global i64 0, align 8
@ENTRY_BEEN_USED = common dso_local global i32 0, align 4
@space_left = common dso_local global i64 0, align 8
@next_base = common dso_local global i64 0, align 8
@ENTRY_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @simple_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @simple_malloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alloc_info*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load %struct.alloc_info*, %struct.alloc_info** @alloc_tbl, align 8
  store %struct.alloc_info* %6, %struct.alloc_info** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %83

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @alloc_min, align 4
  %13 = call i64 @_ALIGN_UP(i64 %11, i32 %12)
  store i64 %13, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %77, %10
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @tbl_entries, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %20 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ENTRY_BEEN_USED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @space_left, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i64, i64* @next_base, align 8
  %31 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %32 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %35 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @ENTRY_BEEN_USED, align 4
  %37 = load i32, i32* @ENTRY_IN_USE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %40 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @next_base, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* @next_base, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @space_left, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* @space_left, align 8
  %47 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %48 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %2, align 8
  br label %84

51:                                               ; preds = %25
  br label %83

52:                                               ; preds = %18
  %53 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %54 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ENTRY_IN_USE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %62 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ule i64 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i32, i32* @ENTRY_IN_USE, align 4
  %67 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %68 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %72 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %2, align 8
  br label %84

75:                                               ; preds = %59, %52
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %4, align 8
  %80 = load %struct.alloc_info*, %struct.alloc_info** %5, align 8
  %81 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %80, i32 1
  store %struct.alloc_info* %81, %struct.alloc_info** %5, align 8
  br label %14

82:                                               ; preds = %14
  br label %83

83:                                               ; preds = %82, %51, %9
  store i8* null, i8** %2, align 8
  br label %84

84:                                               ; preds = %83, %65, %29
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local i64 @_ALIGN_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

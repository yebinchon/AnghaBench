; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_extable.c_search_extable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_extable.c_search_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* %0, %struct.exception_table_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca %struct.exception_table_entry*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %5, align 8
  store %struct.exception_table_entry* %1, %struct.exception_table_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  store %struct.exception_table_entry* %9, %struct.exception_table_entry** %8, align 8
  br label %10

10:                                               ; preds = %37, %3
  %11 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %13 = icmp ule %struct.exception_table_entry* %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %16 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %21 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %20, i32 1
  store %struct.exception_table_entry* %21, %struct.exception_table_entry** %8, align 8
  br label %37

22:                                               ; preds = %14
  %23 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %24 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %37

28:                                               ; preds = %22
  %29 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %30 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %35, %struct.exception_table_entry** %4, align 8
  br label %76

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %27, %19
  %38 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %39 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %38, i32 1
  store %struct.exception_table_entry* %39, %struct.exception_table_entry** %8, align 8
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  store %struct.exception_table_entry* %41, %struct.exception_table_entry** %8, align 8
  br label %42

42:                                               ; preds = %72, %40
  %43 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %44 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %45 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %44, i64 -1
  %46 = icmp ule %struct.exception_table_entry* %43, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %49 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %72

53:                                               ; preds = %47
  %54 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %55 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %54, i64 0
  %56 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %62 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %61, i64 1
  %63 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %68, %struct.exception_table_entry** %4, align 8
  br label %76

69:                                               ; preds = %60, %53
  %70 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %71 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %70, i32 1
  store %struct.exception_table_entry* %71, %struct.exception_table_entry** %8, align 8
  br label %72

72:                                               ; preds = %69, %52
  %73 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %74 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %73, i32 1
  store %struct.exception_table_entry* %74, %struct.exception_table_entry** %8, align 8
  br label %42

75:                                               ; preds = %42
  store %struct.exception_table_entry* null, %struct.exception_table_entry** %4, align 8
  br label %76

76:                                               ; preds = %75, %67, %34
  %77 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  ret %struct.exception_table_entry* %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

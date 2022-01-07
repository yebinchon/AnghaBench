; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_extable_64.c_search_extable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_extable_64.c_search_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* %0, %struct.exception_table_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca %struct.exception_table_entry*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %5, align 8
  store %struct.exception_table_entry* %1, %struct.exception_table_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call %struct.exception_table_entry* @check_exception_ranges(i64 %10)
  store %struct.exception_table_entry* %11, %struct.exception_table_entry** %8, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %13 = icmp ne %struct.exception_table_entry* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %15, %struct.exception_table_entry** %4, align 8
  br label %52

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %50, %16
  %18 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %19 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %20 = icmp ule %struct.exception_table_entry* %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %23 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %24 = ptrtoint %struct.exception_table_entry* %22 to i64
  %25 = ptrtoint %struct.exception_table_entry* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = sdiv i64 %27, 2
  %29 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %30 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %29, i64 %28
  store %struct.exception_table_entry* %30, %struct.exception_table_entry** %8, align 8
  %31 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %32 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %39, %struct.exception_table_entry** %4, align 8
  br label %52

40:                                               ; preds = %21
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %45 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %44, i64 1
  store %struct.exception_table_entry* %45, %struct.exception_table_entry** %5, align 8
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %48 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %47, i64 -1
  store %struct.exception_table_entry* %48, %struct.exception_table_entry** %6, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49
  br label %17

51:                                               ; preds = %17
  store %struct.exception_table_entry* null, %struct.exception_table_entry** %4, align 8
  br label %52

52:                                               ; preds = %51, %38, %14
  %53 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  ret %struct.exception_table_entry* %53
}

declare dso_local %struct.exception_table_entry* @check_exception_ranges(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

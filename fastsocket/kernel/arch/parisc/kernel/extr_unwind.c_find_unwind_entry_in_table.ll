; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_find_unwind_entry_in_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_find_unwind_entry_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table_entry = type { i64, i64 }
%struct.unwind_table = type { i32, %struct.unwind_table_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unwind_table_entry* (%struct.unwind_table*, i64)* @find_unwind_entry_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unwind_table_entry* @find_unwind_entry_in_table(%struct.unwind_table* %0, i64 %1) #0 {
  %3 = alloca %struct.unwind_table_entry*, align 8
  %4 = alloca %struct.unwind_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.unwind_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.unwind_table* %0, %struct.unwind_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.unwind_table_entry* null, %struct.unwind_table_entry** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.unwind_table*, %struct.unwind_table** %4, align 8
  %11 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %20, %21
  %23 = udiv i64 %22, 2
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.unwind_table*, %struct.unwind_table** %4, align 8
  %27 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %26, i32 0, i32 1
  %28 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %28, i64 %29
  store %struct.unwind_table_entry* %30, %struct.unwind_table_entry** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %33 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %51

39:                                               ; preds = %19
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %42 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  store %struct.unwind_table_entry* %49, %struct.unwind_table_entry** %3, align 8
  br label %53

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %36
  br label %15

52:                                               ; preds = %15
  store %struct.unwind_table_entry* null, %struct.unwind_table_entry** %3, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  ret %struct.unwind_table_entry* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

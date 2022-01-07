; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind.c_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_table_entry = type { i64, i64 }
%struct.unw_table = type { i64, %struct.unw_table_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unw_table_entry* (%struct.unw_table*, i64)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unw_table_entry* @lookup(%struct.unw_table* %0, i64 %1) #0 {
  %3 = alloca %struct.unw_table_entry*, align 8
  %4 = alloca %struct.unw_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.unw_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.unw_table* %0, %struct.unw_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.unw_table_entry* null, %struct.unw_table_entry** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.unw_table*, %struct.unw_table** %4, align 8
  %11 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %18, %19
  %21 = udiv i64 %20, 2
  store i64 %21, i64* %9, align 8
  %22 = load %struct.unw_table*, %struct.unw_table** %4, align 8
  %23 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %22, i32 0, i32 1
  %24 = load %struct.unw_table_entry*, %struct.unw_table_entry** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %24, i64 %25
  store %struct.unw_table_entry* %26, %struct.unw_table_entry** %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.unw_table_entry*, %struct.unw_table_entry** %6, align 8
  %29 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %8, align 8
  br label %45

34:                                               ; preds = %17
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.unw_table_entry*, %struct.unw_table_entry** %6, align 8
  %37 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %44

43:                                               ; preds = %34
  br label %46

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %32
  br label %13

46:                                               ; preds = %43, %13
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.unw_table_entry*, %struct.unw_table_entry** %6, align 8
  %49 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.unw_table_entry*, %struct.unw_table_entry** %6, align 8
  %55 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  store %struct.unw_table_entry* null, %struct.unw_table_entry** %3, align 8
  br label %61

59:                                               ; preds = %52
  %60 = load %struct.unw_table_entry*, %struct.unw_table_entry** %6, align 8
  store %struct.unw_table_entry* %60, %struct.unw_table_entry** %3, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = load %struct.unw_table_entry*, %struct.unw_table_entry** %3, align 8
  ret %struct.unw_table_entry* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

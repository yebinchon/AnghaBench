; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_extable.c_search_one_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_extable.c_search_one_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.exception_table_entry*, %struct.exception_table_entry*, i64)* @search_one_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @search_one_table(%struct.exception_table_entry* %0, %struct.exception_table_entry* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.exception_table_entry*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %5, align 8
  store %struct.exception_table_entry* %1, %struct.exception_table_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %45, %3
  %11 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %13 = icmp ule %struct.exception_table_entry* %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %16 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %17 = ptrtoint %struct.exception_table_entry* %15 to i64
  %18 = ptrtoint %struct.exception_table_entry* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 16
  %21 = sdiv i64 %20, 2
  %22 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %23 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %22, i64 %21
  store %struct.exception_table_entry* %23, %struct.exception_table_entry** %8, align 8
  %24 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %25 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %14
  %32 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %33 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  br label %47

35:                                               ; preds = %14
  %36 = load i64, i64* %9, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %40 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %39, i64 1
  store %struct.exception_table_entry* %40, %struct.exception_table_entry** %5, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %43 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %42, i64 -1
  store %struct.exception_table_entry* %43, %struct.exception_table_entry** %6, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44
  br label %10

46:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

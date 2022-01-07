; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind.c_init_unwind_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind.c_init_unwind_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_table = type { i8*, i64, i64, i64, i32, %struct.unw_table_entry*, i32 }
%struct.unw_table_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_table*, i8*, i64, i64, i8*, i8*)* @init_unwind_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_unwind_table(%struct.unw_table* %0, i8* %1, i64 %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.unw_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.unw_table_entry*, align 8
  %14 = alloca %struct.unw_table_entry*, align 8
  store %struct.unw_table* %0, %struct.unw_table** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.unw_table_entry*
  store %struct.unw_table_entry* %16, %struct.unw_table_entry** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.unw_table_entry*
  store %struct.unw_table_entry* %18, %struct.unw_table_entry** %14, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %21 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %25 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %28 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.unw_table_entry*, %struct.unw_table_entry** %13, align 8
  %31 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %30, i64 0
  %32 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %29, %34
  %36 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %37 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.unw_table_entry*, %struct.unw_table_entry** %14, align 8
  %40 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %39, i64 -1
  %41 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %38, %43
  %45 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %46 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.unw_table_entry*, %struct.unw_table_entry** %13, align 8
  %48 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %49 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %48, i32 0, i32 5
  store %struct.unw_table_entry* %47, %struct.unw_table_entry** %49, align 8
  %50 = load %struct.unw_table_entry*, %struct.unw_table_entry** %14, align 8
  %51 = load %struct.unw_table_entry*, %struct.unw_table_entry** %13, align 8
  %52 = ptrtoint %struct.unw_table_entry* %50 to i64
  %53 = ptrtoint %struct.unw_table_entry* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.unw_table*, %struct.unw_table** %7, align 8
  %58 = getelementptr inbounds %struct.unw_table, %struct.unw_table* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

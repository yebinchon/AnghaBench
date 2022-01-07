; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_search_dbe_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_search_dbe_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32 }

@__start___dbe_table = common dso_local global i32 0, align 4
@__stop___dbe_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exception_table_entry* (i64)* @search_dbe_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exception_table_entry* @search_dbe_tables(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.exception_table_entry*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @__start___dbe_table, align 4
  %5 = load i64, i64* @__stop___dbe_table, align 8
  %6 = sub nsw i64 %5, 1
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.exception_table_entry* @search_extable(i32 %4, i64 %6, i64 %7)
  store %struct.exception_table_entry* %8, %struct.exception_table_entry** %3, align 8
  %9 = load %struct.exception_table_entry*, %struct.exception_table_entry** %3, align 8
  %10 = icmp ne %struct.exception_table_entry* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call %struct.exception_table_entry* @search_module_dbetables(i64 %12)
  store %struct.exception_table_entry* %13, %struct.exception_table_entry** %3, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %3, align 8
  ret %struct.exception_table_entry* %15
}

declare dso_local %struct.exception_table_entry* @search_extable(i32, i64, i64) #1

declare dso_local %struct.exception_table_entry* @search_module_dbetables(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

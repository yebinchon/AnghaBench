; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/mm/extr_extable.c_sort_extable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/mm/extr_extable.c_sort_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32 }

@cmp_ex = common dso_local global i32 0, align 4
@swap_ex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_extable(%struct.exception_table_entry* %0, %struct.exception_table_entry* %1) #0 {
  %3 = alloca %struct.exception_table_entry*, align 8
  %4 = alloca %struct.exception_table_entry*, align 8
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %3, align 8
  store %struct.exception_table_entry* %1, %struct.exception_table_entry** %4, align 8
  %5 = load %struct.exception_table_entry*, %struct.exception_table_entry** %3, align 8
  %6 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %7 = load %struct.exception_table_entry*, %struct.exception_table_entry** %3, align 8
  %8 = ptrtoint %struct.exception_table_entry* %6 to i64
  %9 = ptrtoint %struct.exception_table_entry* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @cmp_ex, align 4
  %14 = load i32, i32* @swap_ex, align 4
  %15 = call i32 @sort(%struct.exception_table_entry* %5, i32 %12, i32 4, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @sort(%struct.exception_table_entry*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

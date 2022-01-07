; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/mm/extr_extable.c_search_extable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/mm/extr_extable.c_search_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32 }

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
  br label %10

10:                                               ; preds = %42, %3
  %11 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %13 = icmp ule %struct.exception_table_entry* %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %16 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %17 = ptrtoint %struct.exception_table_entry* %15 to i64
  %18 = ptrtoint %struct.exception_table_entry* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = sdiv i64 %20, 2
  %22 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %23 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %22, i64 %21
  store %struct.exception_table_entry* %23, %struct.exception_table_entry** %8, align 8
  %24 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %25 = call i64 @ex_to_addr(%struct.exception_table_entry* %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %30, %struct.exception_table_entry** %4, align 8
  br label %44

31:                                               ; preds = %14
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %37 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %36, i64 1
  store %struct.exception_table_entry* %37, %struct.exception_table_entry** %5, align 8
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %40 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %39, i64 -1
  store %struct.exception_table_entry* %40, %struct.exception_table_entry** %6, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41
  br label %10

43:                                               ; preds = %10
  store %struct.exception_table_entry* null, %struct.exception_table_entry** %4, align 8
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  ret %struct.exception_table_entry* %45
}

declare dso_local i64 @ex_to_addr(%struct.exception_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

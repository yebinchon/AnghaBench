; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/mm/extr_extable.c_swap_ex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/mm/extr_extable.c_swap_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @swap_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_ex(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.exception_table_entry*, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.exception_table_entry*
  store %struct.exception_table_entry* %13, %struct.exception_table_entry** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.exception_table_entry*
  store %struct.exception_table_entry* %15, %struct.exception_table_entry** %8, align 8
  %16 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %17 = call i64 @ex_to_addr(%struct.exception_table_entry* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %19 = call i64 @ex_to_addr(%struct.exception_table_entry* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %21 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %25 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %29 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %33 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %37 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %36, i32 0, i32 0
  %38 = ptrtoint i32* %37 to i64
  %39 = sub i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %42 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %45 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %44, i32 0, i32 0
  %46 = ptrtoint i32* %45 to i64
  %47 = sub i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %50 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i64 @ex_to_addr(%struct.exception_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_grant-table.c_arch_gnttab_map_shared.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_grant-table.c_arch_gnttab_map_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grant_entry = type { i32 }
%struct.vm_struct = type { %struct.grant_entry* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@init_mm = common dso_local global i32 0, align 4
@map_pte_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_gnttab_map_shared(i64* %0, i64 %1, i64 %2, %struct.grant_entry** %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.grant_entry**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.grant_entry*, align 8
  %11 = alloca %struct.vm_struct*, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.grant_entry** %3, %struct.grant_entry*** %8, align 8
  %12 = load %struct.grant_entry**, %struct.grant_entry*** %8, align 8
  %13 = load %struct.grant_entry*, %struct.grant_entry** %12, align 8
  store %struct.grant_entry* %13, %struct.grant_entry** %10, align 8
  %14 = load %struct.grant_entry*, %struct.grant_entry** %10, align 8
  %15 = icmp eq %struct.grant_entry* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %17, %18
  %20 = call %struct.vm_struct* @xen_alloc_vm_area(i64 %19)
  store %struct.vm_struct* %20, %struct.vm_struct** %11, align 8
  %21 = load %struct.vm_struct*, %struct.vm_struct** %11, align 8
  %22 = icmp eq %struct.vm_struct* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.vm_struct*, %struct.vm_struct** %11, align 8
  %26 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %25, i32 0, i32 0
  %27 = load %struct.grant_entry*, %struct.grant_entry** %26, align 8
  store %struct.grant_entry* %27, %struct.grant_entry** %10, align 8
  %28 = load %struct.grant_entry*, %struct.grant_entry** %10, align 8
  %29 = load %struct.grant_entry**, %struct.grant_entry*** %8, align 8
  store %struct.grant_entry* %28, %struct.grant_entry** %29, align 8
  br label %30

30:                                               ; preds = %16, %4
  %31 = load %struct.grant_entry*, %struct.grant_entry** %10, align 8
  %32 = ptrtoint %struct.grant_entry* %31 to i64
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* %6, align 8
  %35 = mul i64 %33, %34
  %36 = load i32, i32* @map_pte_fn, align 4
  %37 = call i32 @apply_to_page_range(i32* @init_mm, i64 %32, i64 %35, i32 %36, i64** %5)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local %struct.vm_struct* @xen_alloc_vm_area(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @apply_to_page_range(i32*, i64, i64, i32, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

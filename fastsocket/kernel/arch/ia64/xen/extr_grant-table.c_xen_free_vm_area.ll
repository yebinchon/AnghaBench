; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_grant-table.c_xen_free_vm_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_grant-table.c_xen_free_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, i32 }
%struct.xen_memory_reservation = type { i32, i32, i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@DOMID_SELF = common dso_local global i32 0, align 4
@XENMEM_populate_physmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_free_vm_area(%struct.vm_struct* %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xen_memory_reservation, align 4
  store %struct.vm_struct* %0, %struct.vm_struct** %2, align 8
  %9 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @get_order(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %14 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @__pa(i64 %15)
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %44, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 2
  %32 = load i32, i32* @DOMID_SELF, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 4
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_xen_guest_handle(i32 %36, i64* %7)
  %38 = load i32, i32* @XENMEM_populate_physmap, align 4
  %39 = call i64 @HYPERVISOR_memory_op(i32 %38, %struct.xen_memory_reservation* %8)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  br label %44

44:                                               ; preds = %23
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %17

47:                                               ; preds = %17
  %48 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %49 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @free_pages(i64 %50, i32 %51)
  %53 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %54 = call i32 @kfree(%struct.vm_struct* %53)
  ret void
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @set_xen_guest_handle(i32, i64*) #1

declare dso_local i64 @HYPERVISOR_memory_op(i32, %struct.xen_memory_reservation*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

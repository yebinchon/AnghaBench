; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_efi_32.c_efi_call_phys_prelog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_efi_32.c_efi_call_phys_prelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.desc_ptr = type { i64, i32 }

@efi_rt_eflags = common dso_local global i32 0, align 4
@X86_CR4_PAE = common dso_local global i64 0, align 8
@swapper_pg_dir = common dso_local global %struct.TYPE_3__* null, align 8
@efi_bak_pg_dir_pointer = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_OFFSET = common dso_local global i32 0, align 4
@GDT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_call_phys_prelog() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.desc_ptr, align 8
  %4 = load i32, i32* @efi_rt_eflags, align 4
  %5 = call i32 @local_irq_save(i32 %4)
  %6 = call i64 (...) @read_cr4_safe()
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @X86_CR4_PAE, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %13 = call i64 @pgd_index(i64 0)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @efi_bak_pg_dir_pointer, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %21 = load i32, i32* @PAGE_OFFSET, align 4
  %22 = sext i32 %21 to i64
  %23 = call i64 @pgd_index(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %71

30:                                               ; preds = %0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %32 = call i64 @pgd_index(i64 0)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @efi_bak_pg_dir_pointer, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %40 = call i64 @pgd_index(i64 4194304)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @efi_bak_pg_dir_pointer, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %48 = load i32, i32* @PAGE_OFFSET, align 4
  %49 = sext i32 %48 to i64
  %50 = call i64 @pgd_index(i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %55 = call i64 @pgd_index(i64 0)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @PAGE_OFFSET, align 4
  %59 = add nsw i32 %58, 4194304
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %2, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %62 = load i64, i64* %2, align 8
  %63 = call i64 @pgd_index(i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %68 = call i64 @pgd_index(i64 4194304)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %30, %11
  %72 = call i32 (...) @__flush_tlb_all()
  %73 = call i32 @get_cpu_gdt_table(i32 0)
  %74 = call i32 @__pa(i32 %73)
  %75 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %3, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load i64, i64* @GDT_SIZE, align 8
  %77 = sub nsw i64 %76, 1
  %78 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %3, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = call i32 @load_gdt(%struct.desc_ptr* %3)
  ret void
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i64 @read_cr4_safe(...) #1

declare dso_local i64 @pgd_index(i64) #1

declare dso_local i32 @__flush_tlb_all(...) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @get_cpu_gdt_table(i32) #1

declare dso_local i32 @load_gdt(%struct.desc_ptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

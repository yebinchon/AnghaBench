; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_support.c_ia32_boot_gdt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_support.c_ia32_boot_gdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ia32_shared_page = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"failed to allocate ia32_shared_page[0]\0A\00", align 1
@ia32_boot_gdt = common dso_local global i32* null, align 8
@cpu_gdt_table = common dso_local global i32** null, align 8
@IA32_GATE_END = common dso_local global i32 0, align 4
@IA32_PAGE_SHIFT = common dso_local global i32 0, align 4
@__USER_CS = common dso_local global i32 0, align 4
@__USER_DS = common dso_local global i32 0, align 4
@IA32_LDT_ENTRIES = common dso_local global i32 0, align 4
@IA32_LDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@IA32_TSS_OFFSET = common dso_local global i32 0, align 4
@TSS_ENTRY = common dso_local global i64 0, align 8
@IA32_LDT_OFFSET = common dso_local global i32 0, align 4
@LDT_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ia32_boot_gdt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia32_boot_gdt_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call i32 @alloc_page(i32 %2)
  %4 = load i32*, i32** @ia32_shared_page, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %5, align 4
  %6 = load i32*, i32** @ia32_shared_page, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** @ia32_shared_page, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @page_address(i32 %15)
  store i32* %16, i32** @ia32_boot_gdt, align 8
  %17 = load i32*, i32** @ia32_boot_gdt, align 8
  %18 = load i32**, i32*** @cpu_gdt_table, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* @IA32_GATE_END, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @IA32_PAGE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = call i32 @IA32_SEG_DESCRIPTOR(i32 0, i64 %24, i32 11, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1)
  %26 = load i32*, i32** @ia32_boot_gdt, align 8
  %27 = load i32, i32* @__USER_CS, align 4
  %28 = ashr i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @IA32_GATE_END, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @IA32_PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = call i32 @IA32_SEG_DESCRIPTOR(i32 0, i64 %35, i32 3, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1)
  %37 = load i32*, i32** @ia32_boot_gdt, align 8
  %38 = load i32, i32* @__USER_DS, align 4
  %39 = ashr i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* @IA32_LDT_ENTRIES, align 4
  %43 = load i32, i32* @IA32_LDT_ENTRY_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i64 @PAGE_ALIGN(i32 %44)
  store i64 %45, i64* %1, align 8
  %46 = load i32, i32* @IA32_TSS_OFFSET, align 4
  %47 = call i32 @IA32_SEG_DESCRIPTOR(i32 %46, i64 235, i32 11, i32 0, i32 3, i32 1, i32 1, i32 1, i32 0)
  %48 = load i32*, i32** @ia32_boot_gdt, align 8
  %49 = load i64, i64* @TSS_ENTRY, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @IA32_LDT_OFFSET, align 4
  %52 = load i64, i64* %1, align 8
  %53 = sub i64 %52, 1
  %54 = call i32 @IA32_SEG_DESCRIPTOR(i32 %51, i64 %53, i32 2, i32 0, i32 3, i32 1, i32 1, i32 1, i32 0)
  %55 = load i32*, i32** @ia32_boot_gdt, align 8
  %56 = load i64, i64* @LDT_ENTRY, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  ret void
}

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @IA32_SEG_DESCRIPTOR(i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

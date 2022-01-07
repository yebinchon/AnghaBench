; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_numaq_32.c_numaq_register_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_numaq_32.c_numaq_register_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_cfg_data = type { %struct.eachquadmem* }
%struct.eachquadmem = type { i64, i64, i64 }

@node_start_pfn = common dso_local global i8** null, align 8
@node_end_pfn = common dso_local global i8** null, align 8
@node_remap_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sys_cfg_data*)* @numaq_register_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @numaq_register_node(i32 %0, %struct.sys_cfg_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sys_cfg_data*, align 8
  %5 = alloca %struct.eachquadmem*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sys_cfg_data* %1, %struct.sys_cfg_data** %4, align 8
  %6 = load %struct.sys_cfg_data*, %struct.sys_cfg_data** %4, align 8
  %7 = getelementptr inbounds %struct.sys_cfg_data, %struct.sys_cfg_data* %6, i32 0, i32 0
  %8 = load %struct.eachquadmem*, %struct.eachquadmem** %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.eachquadmem, %struct.eachquadmem* %8, i64 %10
  store %struct.eachquadmem* %11, %struct.eachquadmem** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @node_set_online(i32 %12)
  %14 = load %struct.eachquadmem*, %struct.eachquadmem** %5, align 8
  %15 = getelementptr inbounds %struct.eachquadmem, %struct.eachquadmem* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.eachquadmem*, %struct.eachquadmem** %5, align 8
  %18 = getelementptr inbounds %struct.eachquadmem, %struct.eachquadmem* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = call i8* @MB_TO_PAGES(i64 %20)
  %22 = load i8**, i8*** @node_start_pfn, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %21, i8** %25, align 8
  %26 = load %struct.eachquadmem*, %struct.eachquadmem** %5, align 8
  %27 = getelementptr inbounds %struct.eachquadmem, %struct.eachquadmem* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.eachquadmem*, %struct.eachquadmem** %5, align 8
  %30 = getelementptr inbounds %struct.eachquadmem, %struct.eachquadmem* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i8* @MB_TO_PAGES(i64 %32)
  %34 = load i8**, i8*** @node_end_pfn, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i8**, i8*** @node_start_pfn, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** @node_end_pfn, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @e820_register_active_regions(i32 %38, i8* %43, i8* %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i8**, i8*** @node_start_pfn, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** @node_end_pfn, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @memory_present(i32 %50, i8* %55, i8* %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i8**, i8*** @node_start_pfn, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** @node_end_pfn, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @node_memmap_size_bytes(i32 %62, i8* %67, i8* %72)
  %74 = load i32*, i32** @node_remap_size, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  ret void
}

declare dso_local i32 @node_set_online(i32) #1

declare dso_local i8* @MB_TO_PAGES(i64) #1

declare dso_local i32 @e820_register_active_regions(i32, i8*, i8*) #1

declare dso_local i32 @memory_present(i32, i8*, i8*) #1

declare dso_local i32 @node_memmap_size_bytes(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

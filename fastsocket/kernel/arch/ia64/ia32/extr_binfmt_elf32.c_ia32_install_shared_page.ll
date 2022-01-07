; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_binfmt_elf32.c_ia32_install_shared_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_binfmt_elf32.c_ia32_install_shared_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { i32 }

@ia32_shared_page = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia32_install_shared_page(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %5 = load i32*, i32** @ia32_shared_page, align 8
  %6 = call i64 (...) @smp_processor_id()
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_page(i32 %13)
  ret i32 0
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

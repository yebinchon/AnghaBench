; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_lguest_load_sp0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_lguest_load_sp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tss_struct = type { i32 }
%struct.thread_struct = type { i32 }

@LHCALL_SET_STACK = common dso_local global i32 0, align 4
@__KERNEL_DS = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tss_struct*, %struct.thread_struct*)* @lguest_load_sp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lguest_load_sp0(%struct.tss_struct* %0, %struct.thread_struct* %1) #0 {
  %3 = alloca %struct.tss_struct*, align 8
  %4 = alloca %struct.thread_struct*, align 8
  store %struct.tss_struct* %0, %struct.tss_struct** %3, align 8
  store %struct.thread_struct* %1, %struct.thread_struct** %4, align 8
  %5 = load i32, i32* @LHCALL_SET_STACK, align 4
  %6 = load i32, i32* @__KERNEL_DS, align 4
  %7 = or i32 %6, 1
  %8 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %9 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @THREAD_SIZE, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = sdiv i32 %11, %12
  %14 = call i32 @lazy_hcall3(i32 %5, i32 %7, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @lazy_hcall3(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

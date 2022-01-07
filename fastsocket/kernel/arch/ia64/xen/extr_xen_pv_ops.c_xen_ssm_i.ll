; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xen_pv_ops.c_xen_ssm_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xen_pv_ops.c_xen_ssm_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_ssm_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_ssm_i() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @xen_get_virtual_psr_i()
  store i32 %2, i32* %1, align 4
  %3 = call i32 @xen_set_virtual_psr_i(i32 1)
  %4 = call i32 (...) @barrier()
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @xen_get_virtual_pend()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @xen_hyper_ssm_i()
  br label %12

12:                                               ; preds = %10, %7, %0
  ret void
}

declare dso_local i32 @xen_get_virtual_psr_i(...) #1

declare dso_local i32 @xen_set_virtual_psr_i(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @xen_get_virtual_pend(...) #1

declare dso_local i32 @xen_hyper_ssm_i(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

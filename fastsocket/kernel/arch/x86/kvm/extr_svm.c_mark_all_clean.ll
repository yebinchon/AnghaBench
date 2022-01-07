; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_mark_all_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_mark_all_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VMCB_DIRTY_MAX = common dso_local global i32 0, align 4
@VMCB_ALWAYS_DIRTY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmcb*)* @mark_all_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_all_clean(%struct.vmcb* %0) #0 {
  %2 = alloca %struct.vmcb*, align 8
  store %struct.vmcb* %0, %struct.vmcb** %2, align 8
  %3 = load i32, i32* @VMCB_DIRTY_MAX, align 4
  %4 = shl i32 1, %3
  %5 = sub nsw i32 %4, 1
  %6 = load i32, i32* @VMCB_ALWAYS_DIRTY_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = load %struct.vmcb*, %struct.vmcb** %2, align 8
  %10 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

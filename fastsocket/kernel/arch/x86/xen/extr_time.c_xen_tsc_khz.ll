; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_xen_tsc_khz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_xen_tsc_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvclock_vcpu_time_info }
%struct.pvclock_vcpu_time_info = type { i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xen_tsc_khz() #0 {
  %1 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.pvclock_vcpu_time_info* %6, %struct.pvclock_vcpu_time_info** %1, align 8
  %7 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %1, align 8
  %8 = call i64 @pvclock_tsc_khz(%struct.pvclock_vcpu_time_info* %7)
  ret i64 %8
}

declare dso_local i64 @pvclock_tsc_khz(%struct.pvclock_vcpu_time_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

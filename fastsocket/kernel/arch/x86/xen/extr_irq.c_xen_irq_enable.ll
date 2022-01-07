; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_irq.c_xen_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_irq.c_xen_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_info = type { i32, i64 }

@xen_vcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_irq_enable() #0 {
  %1 = alloca %struct.vcpu_info*, align 8
  %2 = load i32, i32* @xen_vcpu, align 4
  %3 = call %struct.vcpu_info* @percpu_read(i32 %2)
  store %struct.vcpu_info* %3, %struct.vcpu_info** %1, align 8
  %4 = load %struct.vcpu_info*, %struct.vcpu_info** %1, align 8
  %5 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = call i32 (...) @barrier()
  %7 = load %struct.vcpu_info*, %struct.vcpu_info** %1, align 8
  %8 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @xen_force_evtchn_callback()
  br label %14

14:                                               ; preds = %12, %0
  ret void
}

declare dso_local %struct.vcpu_info* @percpu_read(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xen_force_evtchn_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_xen_read_wallclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_xen_read_wallclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { %struct.pvclock_wall_clock }
%struct.pvclock_wall_clock = type { i32 }
%struct.timespec = type { i32 }
%struct.pvclock_vcpu_time_info = type { i32 }
%struct.TYPE_2__ = type { %struct.pvclock_vcpu_time_info }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8
@xen_vcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*)* @xen_read_wallclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_read_wallclock(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.shared_info*, align 8
  %4 = alloca %struct.pvclock_wall_clock*, align 8
  %5 = alloca %struct.pvclock_vcpu_time_info*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %6 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %6, %struct.shared_info** %3, align 8
  %7 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %8 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %7, i32 0, i32 0
  store %struct.pvclock_wall_clock* %8, %struct.pvclock_wall_clock** %4, align 8
  %9 = load i32, i32* @xen_vcpu, align 4
  %10 = call %struct.TYPE_2__* @get_cpu_var(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pvclock_vcpu_time_info* %11, %struct.pvclock_vcpu_time_info** %5, align 8
  %12 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %13 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %5, align 8
  %14 = load %struct.timespec*, %struct.timespec** %2, align 8
  %15 = call i32 @pvclock_read_wallclock(%struct.pvclock_wall_clock* %12, %struct.pvclock_vcpu_time_info* %13, %struct.timespec* %14)
  %16 = load i32, i32* @xen_vcpu, align 4
  %17 = call i32 @put_cpu_var(i32 %16)
  ret void
}

declare dso_local %struct.TYPE_2__* @get_cpu_var(i32) #1

declare dso_local i32 @pvclock_read_wallclock(%struct.pvclock_wall_clock*, %struct.pvclock_vcpu_time_info*, %struct.timespec*) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_pit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_pit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.kvm_pit_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_pit_state*)* @kvm_vm_ioctl_get_pit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_get_pit(%struct.kvm* %0, %struct.kvm_pit_state* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_pit_state*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_pit_state* %1, %struct.kvm_pit_state** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kvm*, %struct.kvm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.kvm_pit_state*, %struct.kvm_pit_state** %4, align 8
  %14 = load %struct.kvm*, %struct.kvm** %3, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @memcpy(%struct.kvm_pit_state* %13, %struct.TYPE_6__* %18, i32 4)
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.kvm_pit_state*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_timer.c___kvm_timer_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_timer.c___kvm_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32 }
%struct.kvm_timer = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 (%struct.kvm_timer*)* }

@KVM_REQ_PENDING_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_timer*)* @__kvm_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_timer_fn(%struct.kvm_vcpu* %0, %struct.kvm_timer* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_timer* %1, %struct.kvm_timer** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  store i32* %8, i32** %6, align 8
  %9 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %14, i32 0, i32 3
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %19, i32 0, i32 3
  %21 = call i32 @atomic_inc(i32* %20)
  %22 = load i32, i32* @KVM_REQ_PENDING_TIMER, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @waitqueue_active(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @wake_up_interruptible(i32* %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.kvm_timer*)*, i64 (%struct.kvm_timer*)** %37, align 8
  %39 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %40 = call i64 %38(%struct.kvm_timer* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %43, i32 0, i32 1
  %45 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hrtimer_add_expires_ns(i32* %44, i32 %47)
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @hrtimer_add_expires_ns(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

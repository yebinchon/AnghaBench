; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_create_pit_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_create_pit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.kvm_kpit_state }
%struct.kvm_kpit_state = type { i32, i32, %struct.TYPE_8__*, %struct.kvm_timer }
%struct.TYPE_8__ = type { i32, i32 }
%struct.kvm_timer = type { %struct.TYPE_9__, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@KVM_PIT_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pit: create pit timer, interval is %llu nsec\0A\00", align 1
@pit_timer_fn = common dso_local global i32 0, align 4
@kpit_ops = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32, i32)* @create_pit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_pit_timer(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kpit_state*, align 8
  %8 = alloca %struct.kvm_timer*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.kvm_kpit_state* %14, %struct.kvm_kpit_state** %7, align 8
  %15 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %16 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %15, i32 0, i32 3
  store %struct.kvm_timer* %16, %struct.kvm_timer** %8, align 8
  %17 = load %struct.kvm*, %struct.kvm** %4, align 8
  %18 = call i32 @irqchip_in_kernel(%struct.kvm* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %67

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NSEC_PER_SEC, align 4
  %24 = load i32, i32* @KVM_PIT_FREQ, align 4
  %25 = call i32 @muldiv64(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %29 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %28, i32 0, i32 0
  %30 = call i32 @hrtimer_cancel(%struct.TYPE_9__* %29)
  %31 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %38 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %41 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @pit_timer_fn, align 4
  %43 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %44 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %47 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %46, i32 0, i32 3
  store i32* @kpit_ops, i32** %47, align 8
  %48 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %54 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %56 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %55, i32 0, i32 1
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %59 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.kvm_timer*, %struct.kvm_timer** %8, align 8
  %61 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %60, i32 0, i32 0
  %62 = call i32 (...) @ktime_get()
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ktime_add_ns(i32 %62, i32 %63)
  %65 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %66 = call i32 @hrtimer_start(%struct.TYPE_9__* %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @irqchip_in_kernel(%struct.kvm*) #1

declare dso_local i32 @muldiv64(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @hrtimer_cancel(%struct.TYPE_9__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

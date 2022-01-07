; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c___kpit_elapsed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c___kpit_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.kvm_kpit_state }
%struct.kvm_kpit_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*)* @__kpit_elapsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__kpit_elapsed(%struct.kvm* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_kpit_state*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.kvm_kpit_state* %11, %struct.kvm_kpit_state** %6, align 8
  %12 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %6, align 8
  %13 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i32 @hrtimer_get_remaining(i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ktime_to_ns(i32 %27)
  %29 = sub nsw i64 %26, %28
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @mod_64(i64 %30, i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %18, %17
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @hrtimer_get_remaining(i32*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i64 @mod_64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

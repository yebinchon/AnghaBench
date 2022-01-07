; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_latch_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_latch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32)* @pit_latch_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pit_latch_status(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm*, %struct.kvm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %12, i64 %14
  store %struct.kvm_kpit_channel_state* %15, %struct.kvm_kpit_channel_state** %5, align 8
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @mutex_is_locked(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %2
  %32 = load %struct.kvm*, %struct.kvm** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pit_get_out(%struct.kvm* %32, i32 %33)
  %35 = shl i32 %34, 7
  %36 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 4
  %40 = or i32 %35, %39
  %41 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 1
  %45 = or i32 %40, %44
  %46 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @pit_get_out(%struct.kvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

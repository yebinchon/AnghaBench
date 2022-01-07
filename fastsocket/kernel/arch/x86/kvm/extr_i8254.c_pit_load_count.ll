; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_load_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_load_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.kvm_kpit_state }
%struct.kvm_kpit_state = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"pit: load_count val is %d, channel is %d\0A\00", align 1
@KVM_PIT_FLAGS_HPET_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32, i32)* @pit_load_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pit_load_count(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kpit_state*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.kvm_kpit_state* %12, %struct.kvm_kpit_state** %7, align 8
  %13 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %14 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %13, i32 0, i32 2
  %15 = call i32 @mutex_is_locked(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 65536, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %27, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = call i32 (...) @ktime_get()
  %39 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %40 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %38, i32* %45, align 4
  br label %83

46:                                               ; preds = %26
  %47 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %48 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %77 [
    i32 0, label %53
    i32 1, label %53
    i32 4, label %53
    i32 2, label %65
    i32 3, label %65
  ]

53:                                               ; preds = %46, %46, %46
  %54 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %55 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @KVM_PIT_FLAGS_HPET_LEGACY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @create_pit_timer(%struct.kvm* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %53
  br label %83

65:                                               ; preds = %46, %46
  %66 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %67 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @KVM_PIT_FLAGS_HPET_LEGACY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load %struct.kvm*, %struct.kvm** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @create_pit_timer(%struct.kvm* %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %72, %65
  br label %83

77:                                               ; preds = %46
  %78 = load %struct.kvm*, %struct.kvm** %4, align 8
  %79 = getelementptr inbounds %struct.kvm, %struct.kvm* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = call i32 @destroy_pit_timer(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %37, %77, %76, %64
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @create_pit_timer(%struct.kvm*, i32, i32) #1

declare dso_local i32 @destroy_pit_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

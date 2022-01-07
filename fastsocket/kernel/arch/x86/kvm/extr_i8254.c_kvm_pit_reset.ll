; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_kvm_pit_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_kvm_pit_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, %struct.kvm_kpit_channel_state*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_kpit_channel_state = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pit_reset(%struct.kvm_pit* %0) #0 {
  %2 = alloca %struct.kvm_pit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm_pit* %0, %struct.kvm_pit** %2, align 8
  %5 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %19, i64 %21
  store %struct.kvm_kpit_channel_state* %22, %struct.kvm_kpit_channel_state** %4, align 8
  %23 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %23, i32 0, i32 0
  store i32 255, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 2
  %27 = zext i1 %26 to i32
  %28 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pit_load_count(i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %49 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pit_load_count(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

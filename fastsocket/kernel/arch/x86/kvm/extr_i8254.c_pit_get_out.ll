; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_get_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_get_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32 }

@KVM_PIT_FREQ = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32)* @pit_get_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_get_out(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_kpit_channel_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %15, i64 %17
  store %struct.kvm_kpit_channel_state* %18, %struct.kvm_kpit_channel_state** %5, align 8
  %19 = load %struct.kvm*, %struct.kvm** %3, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @mutex_is_locked(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.kvm*, %struct.kvm** %3, align 8
  %31 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @kpit_elapsed(%struct.kvm* %30, %struct.kvm_kpit_channel_state* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @KVM_PIT_FREQ, align 4
  %36 = load i32, i32* @NSEC_PER_SEC, align 4
  %37 = call i32 @muldiv64(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %41 [
    i32 0, label %42
    i32 1, label %49
    i32 2, label %56
    i32 3, label %69
    i32 4, label %82
    i32 5, label %82
  ]

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %2, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %89

49:                                               ; preds = %2
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %52 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  br label %89

56:                                               ; preds = %2
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mod_64(i32 %57, i32 %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %56
  %67 = phi i1 [ false, %56 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %89

69:                                               ; preds = %2
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %72 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mod_64(i32 %70, i32 %73)
  %75 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %76 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = ashr i32 %78, 1
  %80 = icmp slt i32 %74, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %8, align 4
  br label %89

82:                                               ; preds = %2, %2
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %85 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %82, %69, %66, %49, %42
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @kpit_elapsed(%struct.kvm*, %struct.kvm_kpit_channel_state*, i32) #1

declare dso_local i32 @muldiv64(i32, i32, i32) #1

declare dso_local i32 @mod_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

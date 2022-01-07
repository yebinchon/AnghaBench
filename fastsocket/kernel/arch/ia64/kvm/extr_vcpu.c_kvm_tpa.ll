; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_tpa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IA64_FAULT = common dso_local global i32 0, align 4
@IA64_NO_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_tpa(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %9 = bitcast %struct.TYPE_4__* %8 to i64*
  store i64 %1, i64* %9, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @vcpu_get_gr(%struct.kvm_vcpu* %10, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @vcpu_tpa(%struct.kvm_vcpu* %15, i64 %16, i64* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IA64_FAULT, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %22, i32 %25, i64 %26, i32 0)
  %28 = load i32, i32* @IA64_NO_FAULT, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @vcpu_get_gr(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vcpu_tpa(%struct.kvm_vcpu*, i64, i64*) #1

declare dso_local i32 @vcpu_set_gr(%struct.kvm_vcpu*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

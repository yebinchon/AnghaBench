; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c___kvm_set_xcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c___kvm_set_xcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@XCR_XFEATURE_ENABLED_MASK = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@XSTATE_FP = common dso_local global i32 0, align 4
@XSTATE_YMM = common dso_local global i32 0, align 4
@XSTATE_SSE = common dso_local global i32 0, align 4
@host_xcr0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kvm_set_xcr(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @XCR_XFEATURE_ENABLED_MASK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %16, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = call i64 %17(%struct.kvm_vcpu* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %53

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @XSTATE_FP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @XSTATE_YMM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @XSTATE_SSE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %53

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @host_xcr0, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %53

46:                                               ; preds = %39
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = call i32 @kvm_put_guest_xcr0(%struct.kvm_vcpu* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %45, %38, %27, %21, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @kvm_put_guest_xcr0(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

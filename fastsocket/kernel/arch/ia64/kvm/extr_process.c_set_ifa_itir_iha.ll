; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_set_ifa_itir_iha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_set_ifa_itir_iha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@IA64_PSR_IC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ifa_itir_iha(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %14 = load i64, i64* %11, align 8
  %15 = call i64 @VCPU(%struct.kvm_vcpu* %13, i64 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IA64_PSR_IC, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vcpu_set_ifa(%struct.kvm_vcpu* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @vcpu_get_itir_on_fault(%struct.kvm_vcpu* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @vcpu_set_itir(%struct.kvm_vcpu* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @vcpu_thash(%struct.kvm_vcpu* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @vcpu_set_iha(%struct.kvm_vcpu* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %5
  ret void
}

declare dso_local i64 @VCPU(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_set_ifa(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_get_itir_on_fault(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_set_itir(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_thash(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_set_iha(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

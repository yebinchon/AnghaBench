; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_get_cpuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_get_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*, i32*, i32*, i32*)* @emulator_get_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_get_cpuid(%struct.kvm_vcpu* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.kvm_cpuid_entry2* null, %struct.kvm_cpuid_entry2** %12, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %19, i32 %21, i32 %23)
  store %struct.kvm_cpuid_entry2* %24, %struct.kvm_cpuid_entry2** %12, align 8
  br label %25

25:                                               ; preds = %18, %15, %5
  %26 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %12, align 8
  %27 = icmp ne %struct.kvm_cpuid_entry2* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %12, align 8
  %30 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %12, align 8
  %34 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %12, align 8
  %41 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %12, align 8
  %49 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  store i32 1, i32* %6, align 4
  br label %54

53:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

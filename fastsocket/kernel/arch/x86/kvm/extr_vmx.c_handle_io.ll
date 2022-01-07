; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@EMULATE_DO_MMIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_io(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %15 = call i64 @vmcs_readl(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i64 @emulate_instruction(%struct.kvm_vcpu* %23, i32 0)
  %25 = load i64, i64* @EMULATE_DO_MMIO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %48

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %48

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, 7
  %32 = add i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %34, 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %4, align 8
  %39 = lshr i64 %38, 16
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @kvm_emulate_pio(%struct.kvm_vcpu* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %29, %28, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i64 @emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_emulate_pio(%struct.kvm_vcpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

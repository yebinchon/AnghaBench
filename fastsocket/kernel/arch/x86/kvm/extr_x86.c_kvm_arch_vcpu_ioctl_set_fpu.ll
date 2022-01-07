; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_fpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i387_fxsave_struct }
%struct.i387_fxsave_struct = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_fpu = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_fpu(%struct.kvm_vcpu* %0, %struct.kvm_fpu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_fpu*, align 8
  %5 = alloca %struct.i387_fxsave_struct*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_fpu* %1, %struct.kvm_fpu** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.i387_fxsave_struct* %11, %struct.i387_fxsave_struct** %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @vcpu_load(%struct.kvm_vcpu* %12)
  %14 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %15 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 128)
  %21 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %25 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %30 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %35 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %40 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %45 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %50 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i387_fxsave_struct*, %struct.i387_fxsave_struct** %5, align 8
  %52 = getelementptr inbounds %struct.i387_fxsave_struct, %struct.i387_fxsave_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kvm_fpu*, %struct.kvm_fpu** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_fpu, %struct.kvm_fpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 4)
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @vcpu_put(%struct.kvm_vcpu* %58)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_load_realmode_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_load_realmode_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @kvm_load_realmode_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_load_realmode_segment(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_segment, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 %9, 4
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 1
  store i32 65535, i32* %11, align 4
  %12 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 3
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 4
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 5
  store i32 3, i32* %16, align 4
  %17 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 6
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 7
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 8
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 9
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 10
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 11
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)*, i32 (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)** %24, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 %25(%struct.kvm_vcpu* %26, %struct.kvm_segment* %7, i32 %27)
  %29 = load i32, i32* @X86EMUL_CONTINUE, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

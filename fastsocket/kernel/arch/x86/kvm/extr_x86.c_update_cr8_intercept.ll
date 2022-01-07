; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_update_cr8_intercept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_update_cr8_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*, i32, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @update_cr8_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cr8_intercept(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %6, align 8
  %8 = icmp ne i32 (%struct.kvm_vcpu*, i32, i32)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i32 @kvm_lapic_find_highest_irr(%struct.kvm_vcpu* %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %37 = call i32 @kvm_lapic_get_cr8(%struct.kvm_vcpu* %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %39, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 %40(%struct.kvm_vcpu* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %16, %9
  ret void
}

declare dso_local i32 @kvm_lapic_find_highest_irr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_get_cr8(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

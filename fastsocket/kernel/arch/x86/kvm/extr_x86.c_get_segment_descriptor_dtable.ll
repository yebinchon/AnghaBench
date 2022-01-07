; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_get_segment_descriptor_dtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_get_segment_descriptor_dtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)* }
%struct.kvm_vcpu = type { i32 }
%struct.descriptor_table = type { i32, i32 }
%struct.kvm_segment = type { i32, i32, i64 }

@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, %struct.descriptor_table*)* @get_segment_descriptor_dtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_segment_descriptor_dtable(%struct.kvm_vcpu* %0, i32 %1, %struct.descriptor_table* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.descriptor_table*, align 8
  %7 = alloca %struct.kvm_segment, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.descriptor_table* %2, %struct.descriptor_table** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %14 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %12, %struct.kvm_segment* %7, i32 %13)
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.descriptor_table*, %struct.descriptor_table** %6, align 8
  %20 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %26

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.descriptor_table*, %struct.descriptor_table** %6, align 8
  %25 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.descriptor_table*, %struct.descriptor_table** %6, align 8
  %30 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)** %33, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = load %struct.descriptor_table*, %struct.descriptor_table** %6, align 8
  %37 = call i32 %34(%struct.kvm_vcpu* %35, %struct.descriptor_table* %36)
  br label %38

38:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @kvm_get_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

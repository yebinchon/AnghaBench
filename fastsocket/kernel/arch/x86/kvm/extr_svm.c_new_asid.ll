; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_new_asid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_new_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.svm_cpu_data = type { i32, i32, i64 }

@TLB_CONTROL_FLUSH_ALL_ASID = common dso_local global i32 0, align 4
@VMCB_ASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*, %struct.svm_cpu_data*)* @new_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_asid(%struct.vcpu_svm* %0, %struct.svm_cpu_data* %1) #0 {
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.svm_cpu_data*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  store %struct.svm_cpu_data* %1, %struct.svm_cpu_data** %4, align 8
  %5 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %6 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %9 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %14 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %18 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @TLB_CONTROL_FLUSH_ALL_ASID, align 4
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %12, %2
  %26 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %27 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %32 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %36 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %33, i32* %39, align 4
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* @VMCB_ASID, align 4
  %44 = call i32 @mark_dirty(%struct.TYPE_4__* %42, i32 %43)
  ret void
}

declare dso_local i32 @mark_dirty(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

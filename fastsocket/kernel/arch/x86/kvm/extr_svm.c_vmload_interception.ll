; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_vmload_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_vmload_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vmcb = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @vmload_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmload_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %6 = call i64 @nested_svm_check_permissions(%struct.vcpu_svm* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 1
  %12 = call i64 @kvm_rip_read(i32* %11)
  %13 = add nsw i64 %12, 3
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 1
  %18 = call i32 @skip_emulated_instruction(i32* %17)
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KM_USER0, align 4
  %27 = call %struct.vmcb* @nested_svm_map(%struct.vcpu_svm* %19, i32 %25, i32 %26)
  store %struct.vmcb* %27, %struct.vmcb** %4, align 8
  %28 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %29 = icmp ne %struct.vmcb* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %40

31:                                               ; preds = %9
  %32 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %33 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %34 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @nested_svm_vmloadsave(%struct.vmcb* %32, %struct.TYPE_4__* %35)
  %37 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %38 = load i32, i32* @KM_USER0, align 4
  %39 = call i32 @nested_svm_unmap(%struct.vmcb* %37, i32 %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %30, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @nested_svm_check_permissions(%struct.vcpu_svm*) #1

declare dso_local i64 @kvm_rip_read(i32*) #1

declare dso_local i32 @skip_emulated_instruction(i32*) #1

declare dso_local %struct.vmcb* @nested_svm_map(%struct.vcpu_svm*, i32, i32) #1

declare dso_local i32 @nested_svm_vmloadsave(%struct.vmcb*, %struct.TYPE_4__*) #1

declare dso_local i32 @nested_svm_unmap(%struct.vmcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb_seg = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vmcb_save_area = type { %struct.vmcb_seg, %struct.vmcb_seg, %struct.vmcb_seg, %struct.vmcb_seg, %struct.vmcb_seg, %struct.vmcb_seg, %struct.vmcb_seg, %struct.vmcb_seg }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vmcb_save_area }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmcb_seg* (%struct.kvm_vcpu*, i32)* @svm_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.vmcb_seg*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmcb_save_area*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call %struct.TYPE_4__* @to_svm(%struct.kvm_vcpu* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.vmcb_save_area* %11, %struct.vmcb_save_area** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %37 [
    i32 135, label %13
    i32 134, label %16
    i32 133, label %19
    i32 132, label %22
    i32 131, label %25
    i32 129, label %28
    i32 128, label %31
    i32 130, label %34
  ]

13:                                               ; preds = %2
  %14 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %15 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %14, i32 0, i32 7
  store %struct.vmcb_seg* %15, %struct.vmcb_seg** %3, align 8
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %18 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %17, i32 0, i32 6
  store %struct.vmcb_seg* %18, %struct.vmcb_seg** %3, align 8
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %21 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %20, i32 0, i32 5
  store %struct.vmcb_seg* %21, %struct.vmcb_seg** %3, align 8
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %24 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %23, i32 0, i32 4
  store %struct.vmcb_seg* %24, %struct.vmcb_seg** %3, align 8
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %27 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %26, i32 0, i32 3
  store %struct.vmcb_seg* %27, %struct.vmcb_seg** %3, align 8
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %30 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %29, i32 0, i32 2
  store %struct.vmcb_seg* %30, %struct.vmcb_seg** %3, align 8
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %33 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %32, i32 0, i32 1
  store %struct.vmcb_seg* %33, %struct.vmcb_seg** %3, align 8
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %6, align 8
  %36 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %35, i32 0, i32 0
  store %struct.vmcb_seg* %36, %struct.vmcb_seg** %3, align 8
  br label %39

37:                                               ; preds = %2
  %38 = call i32 (...) @BUG()
  store %struct.vmcb_seg* null, %struct.vmcb_seg** %3, align 8
  br label %39

39:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %16, %13
  %40 = load %struct.vmcb_seg*, %struct.vmcb_seg** %3, align 8
  ret %struct.vmcb_seg* %40
}

declare dso_local %struct.TYPE_4__* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

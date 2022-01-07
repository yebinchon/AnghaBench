; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_save_guest_segment_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_save_guest_segment_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.desc_struct = type { i32 }
%struct.descriptor_table = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, %struct.desc_struct*)* @save_guest_segment_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_guest_segment_descriptor(%struct.kvm_vcpu* %0, i32 %1, %struct.desc_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.desc_struct*, align 8
  %8 = alloca %struct.descriptor_table, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 3
  store i32 %11, i32* %9, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @get_segment_descriptor_dtable(%struct.kvm_vcpu* %12, i32 %13, %struct.descriptor_table* %8)
  %15 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %17, 8
  %19 = add nsw i32 %18, 7
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %32

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %8, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load %struct.desc_struct*, %struct.desc_struct** %7, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %31 = call i32 @kvm_write_guest_virt(i64 %28, %struct.desc_struct* %29, i32 4, %struct.kvm_vcpu* %30, i32* null)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @get_segment_descriptor_dtable(%struct.kvm_vcpu*, i32, %struct.descriptor_table*) #1

declare dso_local i32 @kvm_write_guest_virt(i64, %struct.desc_struct*, i32, %struct.kvm_vcpu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

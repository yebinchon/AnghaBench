; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_seg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_seg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vmx_segment_field = type { i32, i32, i32, i32 }

@kvm_vmx_segment_fields = common dso_local global %struct.kvm_vmx_segment_field* null, align 8
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @seg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vmx_segment_field*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** @kvm_vmx_segment_fields, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %5, i64 %7
  store %struct.kvm_vmx_segment_field* %8, %struct.kvm_vmx_segment_field** %3, align 8
  %9 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vmcs_write16(i32 %11, i32 0)
  %13 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vmcs_writel(i32 %15, i32 0)
  %17 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vmcs_write32(i32 %19, i32 65535)
  %21 = load i64, i64* @enable_unrestricted_guest, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  store i32 147, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @VCPU_SREG_CS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, 8
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %32

31:                                               ; preds = %1
  store i32 243, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @vmcs_write32(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

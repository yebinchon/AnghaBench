; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_fixup_rmode_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_fixup_rmode_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }

@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_EXT_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @fixup_rmode_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_rmode_irq(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %3 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %4 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 2
  %9 = call i64 @kvm_rip_read(i32* %8)
  %10 = add nsw i64 %9, 1
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 2
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %22 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @kvm_rip_write(i32* %20, i64 %25)
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %28 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %18
  %34 = load i32, i32* @VECTORING_INFO_TYPE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %37 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @INTR_TYPE_EXT_INTR, align 4
  %41 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %42 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %57

45:                                               ; preds = %18
  %46 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %47 = load i32, i32* @INTR_TYPE_EXT_INTR, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %50 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %48, %53
  %55 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %56 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %45, %33, %17
  ret void
}

declare dso_local i64 @kvm_rip_read(i32*) #1

declare dso_local i32 @kvm_rip_write(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

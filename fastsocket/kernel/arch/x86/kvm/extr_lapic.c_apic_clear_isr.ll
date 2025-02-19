; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_clear_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_clear_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i64, i32, i64 }

@APIC_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.kvm_lapic*)* @apic_clear_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_clear_isr(i32 %0, %struct.kvm_lapic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.kvm_lapic* %1, %struct.kvm_lapic** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @APIC_ISR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @__apic_test_and_clear_vector(i32 %5, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 8
  ret void
}

declare dso_local i64 @__apic_test_and_clear_vector(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

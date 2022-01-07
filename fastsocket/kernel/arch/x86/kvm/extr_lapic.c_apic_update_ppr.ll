; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_update_ppr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_update_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@APIC_TASKPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vlapic %p, ppr 0x%x, isr 0x%x, isrv 0x%x\00", align 1
@APIC_PROCPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @apic_update_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_update_ppr(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %8 = load i32, i32* @APIC_TASKPRI, align 4
  %9 = call i32 @apic_get_reg(%struct.kvm_lapic* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %11 = call i32 @apic_find_highest_isr(%struct.kvm_lapic* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 240
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 240
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 240
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @apic_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.kvm_lapic* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %37 = load i32, i32* @APIC_PROCPRI, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @apic_set_reg(%struct.kvm_lapic* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @apic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_find_highest_isr(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_debug(i8*, %struct.kvm_lapic*, i32, i32, i32) #1

declare dso_local i32 @apic_set_reg(%struct.kvm_lapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

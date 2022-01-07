; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_get_tmcct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_get_tmcct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@APIC_TMICT = common dso_local global i32 0, align 4
@APIC_BUS_CYCLE_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @apic_get_tmcct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apic_get_tmcct(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %8 = icmp ne %struct.kvm_lapic* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %12 = load i32, i32* @APIC_TMICT, align 4
  %13 = call i64 @apic_get_reg(%struct.kvm_lapic* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %48

22:                                               ; preds = %15
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @hrtimer_get_remaining(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ktime_to_ns(i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 @ktime_set(i32 0, i32 0)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %22
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @ktime_to_ns(i32 %33)
  %35 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mod_64(i64 %34, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @APIC_BUS_CYCLE_NS, align 4
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = call i32 @div64_u64(i32 %40, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @apic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @hrtimer_get_remaining(i32*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @mod_64(i64, i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

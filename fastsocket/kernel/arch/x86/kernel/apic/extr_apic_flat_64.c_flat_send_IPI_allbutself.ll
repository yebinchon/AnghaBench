; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_apic_flat_64.c_flat_send_IPI_allbutself.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_apic_flat_64.c_flat_send_IPI_allbutself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NMI_VECTOR = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@APIC_DEST_ALLBUT = common dso_local global i32 0, align 4
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @flat_send_IPI_allbutself to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flat_send_IPI_allbutself(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @NMI_VECTOR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @cpu_online_mask, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @cpumask_of(i32 %15)
  %17 = call i32 @cpumask_equal(i32 %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @cpu_online_mask, align 4
  %21 = call i64* @cpumask_bits(i32 %20)
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @BITS_PER_LONG, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @clear_bit(i32 %28, i64* %5)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @_flat_send_IPI_mask(i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %13
  br label %46

35:                                               ; preds = %9
  %36 = call i32 (...) @num_online_cpus()
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @APIC_DEST_ALLBUT, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__default_send_IPI_shortcut(i32 %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45, %34
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_equal(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i64* @cpumask_bits(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @_flat_send_IPI_mask(i64, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @__default_send_IPI_shortcut(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

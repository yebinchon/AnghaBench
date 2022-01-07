; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }

@X86_VM_MASK = common dso_local global i32 0, align 4
@__KERNEL_CS = common dso_local global i64 0, align 8
@KMEMCHECK_WRITE = common dso_local global i32 0, align 4
@KMEMCHECK_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmemcheck_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @X86_VM_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @__KERNEL_CS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %46

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @kmemcheck_pte_lookup(i64 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, 2
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @KMEMCHECK_WRITE, align 4
  %37 = call i32 @kmemcheck_access(%struct.pt_regs* %34, i64 %35, i32 %36)
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @KMEMCHECK_READ, align 4
  %42 = call i32 @kmemcheck_access(%struct.pt_regs* %39, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %45 = call i32 @kmemcheck_show(%struct.pt_regs* %44)
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %28, %22, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32* @kmemcheck_pte_lookup(i64) #1

declare dso_local i32 @kmemcheck_access(%struct.pt_regs*, i64, i32) #1

declare dso_local i32 @kmemcheck_show(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

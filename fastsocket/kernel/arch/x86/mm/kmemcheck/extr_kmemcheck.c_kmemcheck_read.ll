; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i32)* @kmemcheck_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemcheck_read(%struct.pt_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PAGE_MASK, align 8
  %12 = and i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = sub i64 %16, 1
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = call i32 @kmemcheck_read_strict(%struct.pt_regs* %28, i64 %29, i64 %31)
  br label %46

33:                                               ; preds = %3
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %36, %37
  %39 = call i32 @kmemcheck_read_strict(%struct.pt_regs* %34, i64 %35, i64 %38)
  %40 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %42, %43
  %45 = call i32 @kmemcheck_read_strict(%struct.pt_regs* %40, i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %33, %27
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kmemcheck_read_strict(%struct.pt_regs*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

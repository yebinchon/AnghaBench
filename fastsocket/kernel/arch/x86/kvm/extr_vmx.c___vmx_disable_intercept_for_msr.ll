; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c___vmx_disable_intercept_for_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c___vmx_disable_intercept_for_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @__vmx_disable_intercept_for_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vmx_disable_intercept_for_msr(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %6 = call i32 (...) @cpu_has_vmx_msr_bitmap()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %51

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 8191
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load i64*, i64** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 0, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = call i32 @__clear_bit(i32 %13, i64* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i64*, i64** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 2048, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = call i32 @__clear_bit(i32 %20, i64* %25)
  br label %51

27:                                               ; preds = %9
  %28 = load i32, i32* %4, align 4
  %29 = icmp uge i32 %28, -1073741824
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ule i32 %31, -1073733633
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 8191
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i64*, i64** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 1024, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = call i32 @__clear_bit(i32 %36, i64* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i64*, i64** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 3072, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = call i32 @__clear_bit(i32 %43, i64* %48)
  br label %50

50:                                               ; preds = %33, %30, %27
  br label %51

51:                                               ; preds = %8, %50, %12
  ret void
}

declare dso_local i32 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

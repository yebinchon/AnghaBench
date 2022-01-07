; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_read_strict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_kmemcheck.c_kmemcheck_read_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@KMEMCHECK_SHADOW_INITIALIZED = common dso_local global i32 0, align 4
@kmemcheck_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i32)* @kmemcheck_read_strict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemcheck_read_strict(%struct.pt_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i8* @kmemcheck_shadow_lookup(i64 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @kmemcheck_save_addr(i64 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @kmemcheck_shadow_test(i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @KMEMCHECK_SHADOW_INITIALIZED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %41

24:                                               ; preds = %14
  %25 = load i32, i32* @kmemcheck_enabled, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = call i32 @kmemcheck_error_save(i32 %28, i64 %29, i32 %30, %struct.pt_regs* %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @kmemcheck_enabled, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* @kmemcheck_enabled, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @kmemcheck_shadow_set(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %23, %13
  ret void
}

declare dso_local i8* @kmemcheck_shadow_lookup(i64) #1

declare dso_local i32 @kmemcheck_save_addr(i64) #1

declare dso_local i32 @kmemcheck_shadow_test(i8*, i32) #1

declare dso_local i32 @kmemcheck_error_save(i32, i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @kmemcheck_shadow_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

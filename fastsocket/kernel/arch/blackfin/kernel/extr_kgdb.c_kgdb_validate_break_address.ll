; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_kgdb_validate_break_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_kgdb_validate_break_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BREAK_INSTR_SIZE = common dso_local global i64 0, align 8
@physical_mem_end = common dso_local global i64 0, align 8
@ASYNC_BANK0_BASE = common dso_local global i32 0, align 4
@ASYNC_BANK_SIZE = common dso_local global i32 0, align 4
@L1_CODE_START = common dso_local global i32 0, align 4
@L1_CODE_LENGTH = common dso_local global i32 0, align 4
@L2_START = common dso_local global i32 0, align 4
@L2_LENGTH = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@COREB_L1_CODE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_validate_break_address(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = call i32 (...) @raw_smp_processor_id()
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = icmp uge i64 %6, 4096
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %11 = add i64 %9, %10
  %12 = load i64, i64* @physical_mem_end, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %45

15:                                               ; preds = %8, %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %18 = load i32, i32* @ASYNC_BANK0_BASE, align 4
  %19 = load i32, i32* @ASYNC_BANK_SIZE, align 4
  %20 = call i64 @IN_MEM(i64 %16, i64 %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %45

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %29 = load i32, i32* @L1_CODE_START, align 4
  %30 = load i32, i32* @L1_CODE_LENGTH, align 4
  %31 = call i64 @IN_MEM(i64 %27, i64 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %45

34:                                               ; preds = %26, %23
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %37 = load i32, i32* @L2_START, align 4
  %38 = load i32, i32* @L2_LENGTH, align 4
  %39 = call i64 @IN_MEM(i64 %35, i64 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %41, %33, %22, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @IN_MEM(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

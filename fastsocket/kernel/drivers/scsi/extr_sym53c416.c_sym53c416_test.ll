; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESET_CHIP = common dso_local global i32 0, align 4
@COMMAND_REG = common dso_local global i64 0, align 8
@NOOP = common dso_local global i32 0, align 4
@TC_HIGH = common dso_local global i64 0, align 8
@PIO_INT_REG = common dso_local global i64 0, align 8
@FULL = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i32 0, align 4
@CE = common dso_local global i32 0, align 4
@OUE = common dso_local global i32 0, align 4
@FIE = common dso_local global i32 0, align 4
@EIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sym53c416_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c416_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @RESET_CHIP, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @COMMAND_REG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 %4, i64 %8)
  %10 = load i32, i32* @NOOP, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @COMMAND_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 %10, i64 %14)
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @COMMAND_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  %21 = load i32, i32* @NOOP, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @TC_HIGH, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @TC_HIGH, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inb(i64 %35)
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24
  store i32 0, i32* %2, align 4
  br label %61

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @PIO_INT_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  %45 = load i32, i32* @FULL, align 4
  %46 = load i32, i32* @EMPTY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @OUE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FIE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @EIE, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %44, %55
  %57 = load i32, i32* @EMPTY, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %61

60:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %59, %38, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

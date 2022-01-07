; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_probeirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_probeirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_REG = common dso_local global i64 0, align 8
@NOOP = common dso_local global i32 0, align 4
@COMMAND_REG = common dso_local global i64 0, align 8
@ILLEGAL = common dso_local global i32 0, align 4
@DEST_BUS_ID = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i64 0, align 8
@SCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sym53c416_probeirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c416_probeirq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @INT_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @inb(i64 %12)
  %14 = call i32 (...) @probe_irq_on()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sym53c416_init(i32 %15, i32 %16)
  %18 = load i32, i32* @NOOP, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @COMMAND_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %18, i64 %22)
  %24 = load i32, i32* @ILLEGAL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @COMMAND_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %24, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @DEST_BUS_ID, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 7, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @DEST_BUS_ID, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 0, i64 %38)
  %40 = load i32, i32* @jiffies, align 4
  %41 = add nsw i32 %40, 20
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %60, %2
  %44 = load i32, i32* @jiffies, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @time_before(i32 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @STATUS_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inb(i64 %52)
  %54 = load i32, i32* @SCI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %48, %43
  %59 = phi i1 [ false, %43 ], [ %57, %48 ]
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = call i32 (...) @barrier()
  br label %43

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @jiffies, align 4
  %65 = call i64 @time_before_eq(i64 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %75

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @probe_irq_off(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @sym53c416_init(i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @probe_irq_on(...) #1

declare dso_local i32 @sym53c416_init(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @time_before_eq(i64, i32) #1

declare dso_local i32 @probe_irq_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

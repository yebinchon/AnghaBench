; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_se2_instr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_se2_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SE2CS = common dso_local global i32 0, align 4
@SE2DO = common dso_local global i32 0, align 4
@TUL_NVRAM = common dso_local global i64 0, align 8
@SE2CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @initio_se2_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_se2_instr(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SE2CS, align 4
  %8 = load i32, i32* @SE2DO, align 4
  %9 = or i32 %7, %8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @TUL_NVRAM, align 8
  %12 = add i64 %10, %11
  %13 = call i32 @outb(i32 %9, i64 %12)
  %14 = call i32 @udelay(i32 30)
  %15 = load i32, i32* @SE2CS, align 4
  %16 = load i32, i32* @SE2CLK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SE2DO, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @TUL_NVRAM, align 8
  %22 = add i64 %20, %21
  %23 = call i32 @outb(i32 %19, i64 %22)
  %24 = call i32 @udelay(i32 30)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %55, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @SE2CS, align 4
  %34 = load i32, i32* @SE2DO, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @SE2CS, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @TUL_NVRAM, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @outb(i32 %39, i64 %42)
  %44 = call i32 @udelay(i32 30)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SE2CLK, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @TUL_NVRAM, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @outb(i32 %47, i64 %50)
  %52 = call i32 @udelay(i32 30)
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32, i32* @SE2CS, align 4
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @TUL_NVRAM, align 8
  %62 = add i64 %60, %61
  %63 = call i32 @outb(i32 %59, i64 %62)
  %64 = call i32 @udelay(i32 30)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_se2_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_se2_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SE2CS = common dso_local global i32 0, align 4
@SE2DO = common dso_local global i32 0, align 4
@TUL_NVRAM = common dso_local global i64 0, align 8
@SE2CLK = common dso_local global i32 0, align 4
@SE2DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @initio_se2_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_se2_wr(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, 64
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @initio_se2_instr(i64 %12, i32 %13)
  store i32 15, i32* %9, align 4
  br label %15

15:                                               ; preds = %48, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @SE2CS, align 4
  %24 = load i32, i32* @SE2DO, align 4
  %25 = or i32 %23, %24
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @TUL_NVRAM, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @outb(i32 %25, i64 %28)
  br label %36

30:                                               ; preds = %18
  %31 = load i32, i32* @SE2CS, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @TUL_NVRAM, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @outb(i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %30, %22
  %37 = call i32 @udelay(i32 30)
  %38 = load i32, i32* @SE2CS, align 4
  %39 = load i32, i32* @SE2CLK, align 4
  %40 = or i32 %38, %39
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @TUL_NVRAM, align 8
  %43 = add i64 %41, %42
  %44 = call i32 @outb(i32 %40, i64 %43)
  %45 = call i32 @udelay(i32 30)
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load i32, i32* @SE2CS, align 4
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @TUL_NVRAM, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @outb(i32 %52, i64 %55)
  %57 = call i32 @udelay(i32 30)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @TUL_NVRAM, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @outb(i32 0, i64 %60)
  %62 = call i32 @udelay(i32 30)
  %63 = load i32, i32* @SE2CS, align 4
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @TUL_NVRAM, align 8
  %66 = add i64 %64, %65
  %67 = call i32 @outb(i32 %63, i64 %66)
  %68 = call i32 @udelay(i32 30)
  br label %69

69:                                               ; preds = %92, %51
  %70 = load i32, i32* @SE2CS, align 4
  %71 = load i32, i32* @SE2CLK, align 4
  %72 = or i32 %70, %71
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @TUL_NVRAM, align 8
  %75 = add i64 %73, %74
  %76 = call i32 @outb(i32 %72, i64 %75)
  %77 = call i32 @udelay(i32 30)
  %78 = load i32, i32* @SE2CS, align 4
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @TUL_NVRAM, align 8
  %81 = add i64 %79, %80
  %82 = call i32 @outb(i32 %78, i64 %81)
  %83 = call i32 @udelay(i32 30)
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @TUL_NVRAM, align 8
  %86 = add i64 %84, %85
  %87 = call i32 @inb(i64 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @SE2DI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  br label %93

92:                                               ; preds = %69
  br label %69

93:                                               ; preds = %91
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @TUL_NVRAM, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @outb(i32 0, i64 %96)
  ret void
}

declare dso_local i32 @initio_se2_instr(i64, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

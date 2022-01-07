; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pdc202xx_new.c_detect_pll_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pdc202xx_new.c_detect_pll_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"scr1[%02X]\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"start[%ld] end[%ld]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @detect_pll_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @detect_pll_input_clock(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @read_counter(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = call i32 @do_gettimeofday(%struct.timeval* %3)
  %13 = load i64, i64* %2, align 8
  %14 = add i64 %13, 1
  %15 = call i32 @outb(i32 1, i64 %14)
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, 3
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, 64
  %24 = load i64, i64* %2, align 8
  %25 = add i64 %24, 3
  %26 = call i32 @outb(i32 %23, i64 %25)
  %27 = call i32 @mdelay(i32 10)
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @read_counter(i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = call i32 @do_gettimeofday(%struct.timeval* %4)
  %31 = load i64, i64* %2, align 8
  %32 = add i64 %31, 1
  %33 = call i32 @outb(i32 1, i64 %32)
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, 3
  %36 = call i32 @inb(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -65
  %42 = load i64, i64* %2, align 8
  %43 = add i64 %42, 3
  %44 = call i32 @outb(i32 %41, i64 %43)
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %46, %48
  %50 = mul nsw i32 %49, 1000000
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %52, %54
  %56 = add nsw i32 %50, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %58, %59
  %61 = and i64 %60, 1073741823
  %62 = sdiv i64 %61, 10
  %63 = load i64, i64* %8, align 8
  %64 = sdiv i64 10000000, %63
  %65 = mul nsw i64 %62, %64
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67)
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i64 @read_counter(i64) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @DBG(i8*, i64, ...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

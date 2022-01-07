; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_sun3ints.c_sun3_int7.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_sun3ints.c_sun3_int7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@sun3_intreg = common dso_local global i32* null, align 8
@led_pattern = common dso_local global i32* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun3_int7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun3_int7(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = shl i32 1, %7
  %9 = load i32*, i32** @sun3_intreg, align 8
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = call i32* @kstat_cpu(i32 0)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %19, 2000
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** @led_pattern, align 8
  %24 = call i32* @kstat_cpu(i32 0)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 16000
  %33 = sdiv i32 %32, 2000
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %23, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sun3_leds(i32 %36)
  br label %38

38:                                               ; preds = %22, %2
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local i32* @kstat_cpu(i32) #1

declare dso_local i32 @sun3_leds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

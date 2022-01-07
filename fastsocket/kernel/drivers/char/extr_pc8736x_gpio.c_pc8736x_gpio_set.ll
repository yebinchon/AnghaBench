; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_pc8736x_gpio.c_pc8736x_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_pc8736x_gpio.c_pc8736x_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pc8736x_gpio_base = common dso_local global i64 0, align 8
@port_offset = common dso_local global i64* null, align 8
@PORT_OUT = common dso_local global i64 0, align 8
@pdev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"addr:%x cur:%x bit-pos:%d cur-bit:%x + new:%d -> bit-new:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"gpio_set(minor:%d port:%d bit:%d) %2x -> %2x\0A\00", align 1
@PORT_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"wrote %x, read: %x\0A\00", align 1
@pc8736x_gpio_shadow = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pc8736x_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc8736x_gpio_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 31
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %10, 3
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 7
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @pc8736x_gpio_base, align 8
  %15 = load i64*, i64** @port_offset, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  %21 = load i64, i64* @PORT_OUT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb_p(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdev, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* @pc8736x_gpio_base, align 8
  %27 = load i64*, i64** @port_offset, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = load i64, i64* @PORT_OUT, align 8
  %34 = add nsw i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %44, %45
  %47 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %42, i32 %43, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  store i32 %56, i32* %4, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdev, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i64, i64* @pc8736x_gpio_base, align 8
  %67 = load i64*, i64** @port_offset, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %66, %71
  %73 = load i64, i64* @PORT_OUT, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb_p(i32 %65, i64 %74)
  %76 = load i64, i64* @pc8736x_gpio_base, align 8
  %77 = load i64*, i64** @port_offset, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %76, %81
  %83 = load i64, i64* @PORT_OUT, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @inb_p(i64 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i64, i64* @pc8736x_gpio_base, align 8
  %87 = load i64*, i64** @port_offset, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %86, %91
  %93 = load i64, i64* @PORT_IN, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @inb_p(i64 %94)
  store i32 %95, i32* %4, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdev, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32*, i32** @pc8736x_gpio_shadow, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  ret void
}

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @outb_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

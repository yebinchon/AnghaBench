; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sl82c105.c_get_pio_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sl82c105.c_get_pio_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_pio_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pio_timings(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ide_timing*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @XFER_PIO_0, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add i32 %9, %10
  %12 = call %struct.ide_timing* @ide_timing_find_mode(i32 %11)
  store %struct.ide_timing* %12, %struct.ide_timing** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %14 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 29
  %17 = sdiv i32 %16, 30
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ide_pio_cycle_time(i32* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = mul i32 30, %21
  %23 = sub i32 %20, %22
  %24 = add i32 %23, 29
  %25 = udiv i32 %24, 30
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @ide_pio_need_iordy(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 64, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, 1
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %43, 1
  %45 = or i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %45, %46
  ret i32 %47
}

declare dso_local %struct.ide_timing* @ide_timing_find_mode(i32) #1

declare dso_local i32 @ide_pio_cycle_time(i32*, i32) #1

declare dso_local i64 @ide_pio_need_iordy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

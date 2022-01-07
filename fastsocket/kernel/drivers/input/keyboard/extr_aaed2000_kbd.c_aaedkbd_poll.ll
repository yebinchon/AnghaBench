; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_aaed2000_kbd.c_aaedkbd_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_aaed2000_kbd.c_aaedkbd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { i32, %struct.aaedkbd* }
%struct.aaedkbd = type { i32*, i64* }

@AAEC_GPIO_KSCAN = common dso_local global i32 0, align 4
@KB_ACTIVATE_DELAY = common dso_local global i32 0, align 4
@AAED_EXT_GPIO = common dso_local global i32 0, align 4
@AAED_EGPIO_KBD_SCAN = common dso_local global i32 0, align 4
@KBDSCAN_STABLE_COUNT = common dso_local global i64 0, align 8
@KB_COLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @aaedkbd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaedkbd_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.aaedkbd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %6 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %7 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %6, i32 0, i32 1
  %8 = load %struct.aaedkbd*, %struct.aaedkbd** %7, align 8
  store %struct.aaedkbd* %8, %struct.aaedkbd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %60, %1
  %10 = load i32, i32* %4, align 4
  %11 = add i32 %10, 8
  store i32 %11, i32* @AAEC_GPIO_KSCAN, align 4
  %12 = load i32, i32* @KB_ACTIVATE_DELAY, align 4
  %13 = call i32 @udelay(i32 %12)
  %14 = load i32, i32* @AAED_EXT_GPIO, align 4
  %15 = load i32, i32* @AAED_EGPIO_KBD_SCAN, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.aaedkbd*, %struct.aaedkbd** %3, align 8
  %19 = getelementptr inbounds %struct.aaedkbd, %struct.aaedkbd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %17, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %9
  %27 = load %struct.aaedkbd*, %struct.aaedkbd** %3, align 8
  %28 = getelementptr inbounds %struct.aaedkbd, %struct.aaedkbd* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.aaedkbd*, %struct.aaedkbd** %3, align 8
  %35 = getelementptr inbounds %struct.aaedkbd, %struct.aaedkbd* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %59

40:                                               ; preds = %9
  %41 = load %struct.aaedkbd*, %struct.aaedkbd** %3, align 8
  %42 = getelementptr inbounds %struct.aaedkbd, %struct.aaedkbd* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* @KBDSCAN_STABLE_COUNT, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.aaedkbd*, %struct.aaedkbd** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @aaedkbd_report_col(%struct.aaedkbd* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %40
  br label %59

59:                                               ; preds = %58, %26
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @KB_COLS, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %9, label %64

64:                                               ; preds = %60
  store i32 7, i32* @AAEC_GPIO_KSCAN, align 4
  %65 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %66 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @input_sync(i32 %67)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @aaedkbd_report_col(%struct.aaedkbd*, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

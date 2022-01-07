; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-rx.c___i2400ms_rx_get_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-rx.c___i2400ms_rx_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400ms = type { %struct.sdio_func* }
%struct.sdio_func = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400ms %p)\0A\00", align 1
@I2400MS_INTR_GET_SIZE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"RX: Can't read byte %d of RX size from 0x%08x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"RX: rx_size is %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"(i2400ms %p) = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i2400ms_rx_get_size(%struct.i2400ms* %0) #0 {
  %2 = alloca %struct.i2400ms*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_func*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.i2400ms* %0, %struct.i2400ms** %2, align 8
  %10 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %11 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %10, i32 0, i32 0
  %12 = load %struct.sdio_func*, %struct.sdio_func** %11, align 8
  store %struct.sdio_func* %12, %struct.sdio_func** %8, align 8
  %13 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %14 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %13, i32 0, i32 0
  %15 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %19 = call i32 @d_fnstart(i32 7, %struct.device* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400ms* %18)
  %20 = load i32, i32* @I2400MS_INTR_GET_SIZE_ADDR, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %47, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %26, %27
  %29 = call i32 @sdio_readb(%struct.sdio_func* %25, i32 %28, i32* %3)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %6, align 4
  br label %55

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 255
  %46 = or i32 %43, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @d_printf(i32 6, %struct.device* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %32
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @d_fnend(i32 7, %struct.device* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.i2400ms* %57, i64 %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400ms*) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400ms*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

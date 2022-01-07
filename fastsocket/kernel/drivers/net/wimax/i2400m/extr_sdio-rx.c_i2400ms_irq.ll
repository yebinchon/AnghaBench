; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-rx.c_i2400ms_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-rx.c_i2400ms_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400ms = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400ms %p)\0A\00", align 1
@I2400MS_INTR_STATUS_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RX: Can't read interrupt status: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"RX: BUG? got IRQ but no interrupt ready?\0A\00", align 1
@I2400MS_INTR_CLEAR_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"(i2400ms %p) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @i2400ms_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400ms_irq(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400ms*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = call %struct.i2400ms* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.i2400ms* %8, %struct.i2400ms** %4, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %13 = call i32 @d_fnstart(i32 6, %struct.device* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400ms* %12)
  %14 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %15 = load i32, i32* @I2400MS_INTR_STATUS_ADDR, align 4
  %16 = call i32 @sdio_readb(%struct.sdio_func* %14, i32 %15, i32* %3)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %35

29:                                               ; preds = %23
  %30 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %31 = load i32, i32* @I2400MS_INTR_CLEAR_ADDR, align 4
  %32 = call i32 @sdio_writeb(%struct.sdio_func* %30, i32 1, i32 %31, i32* %3)
  %33 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %34 = call i32 @i2400ms_rx(%struct.i2400ms* %33)
  br label %35

35:                                               ; preds = %29, %26, %19
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %38 = call i32 @d_fnend(i32 6, %struct.device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.i2400ms* %37)
  ret void
}

declare dso_local %struct.i2400ms* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400ms*) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @i2400ms_rx(%struct.i2400ms*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400ms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-rx.c_i2400ms_rx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-rx.c_i2400ms_rx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400ms = type { i32, i32, %struct.i2400m, %struct.sdio_func* }
%struct.i2400m = type { i32 }
%struct.sdio_func = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400ms %p)\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@I2400MS_INTR_ENABLE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"(i2400ms %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400ms_rx_release(%struct.i2400ms* %0) #0 {
  %2 = alloca %struct.i2400ms*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.i2400m*, align 8
  store %struct.i2400ms* %0, %struct.i2400ms** %2, align 8
  %7 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %8 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %7, i32 0, i32 3
  %9 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  store %struct.sdio_func* %9, %struct.sdio_func** %4, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %13 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %12, i32 0, i32 2
  store %struct.i2400m* %13, %struct.i2400m** %6, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %16 = call i32 @d_fnstart(i32 5, %struct.device* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400ms* %15)
  %17 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %23 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %28 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %27, i32 0, i32 0
  %29 = call i32 @wake_up_all(i32* %28)
  %30 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %31 = call i32 @sdio_claim_host(%struct.sdio_func* %30)
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %33 = load i32, i32* @I2400MS_INTR_ENABLE_ADDR, align 4
  %34 = call i32 @sdio_writeb(%struct.sdio_func* %32, i32 0, i32 %33, i32* %3)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = call i32 @sdio_release_irq(%struct.sdio_func* %35)
  %37 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %38 = call i32 @sdio_release_host(%struct.sdio_func* %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @d_fnend(i32 5, %struct.device* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.i2400ms* %40, i32 %41)
  ret void
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400ms*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400ms*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

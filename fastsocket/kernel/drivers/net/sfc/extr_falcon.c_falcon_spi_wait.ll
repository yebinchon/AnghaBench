; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_spi_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_spi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"timed out waiting for SPI\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_spi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_spi_wait(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* @HZ, align 4
  %9 = call i32 @DIV_ROUND_UP(i32 %8, i32 10)
  %10 = add nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = call i32 @falcon_spi_poll(%struct.efx_nic* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %47

20:                                               ; preds = %15
  %21 = call i32 @udelay(i32 10)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %12

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %45, %25
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = call i32 @falcon_spi_poll(%struct.efx_nic* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %47

31:                                               ; preds = %26
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @time_after_eq(i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = load i32, i32* @hw, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netif_err(%struct.efx_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %31
  %46 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %26

47:                                               ; preds = %36, %30, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @falcon_spi_poll(%struct.efx_nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

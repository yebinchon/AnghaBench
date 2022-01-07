; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_efx_spi_slow_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_efx_spi_slow_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_mtd_partition = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.efx_mtd* }
%struct.efx_mtd = type { i32, %struct.efx_nic*, %struct.efx_spi_device* }
%struct.efx_nic = type { i32 }
%struct.efx_spi_device = type { i32 }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SPI_RDSR = common dso_local global i32 0, align 4
@SPI_STATUS_NRDY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: timed out waiting for %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_mtd_partition*, i32)* @efx_spi_slow_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_spi_slow_wait(%struct.efx_mtd_partition* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_mtd_partition*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_mtd*, align 8
  %7 = alloca %struct.efx_spi_device*, align 8
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.efx_mtd_partition* %0, %struct.efx_mtd_partition** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %4, align 8
  %13 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.efx_mtd*, %struct.efx_mtd** %14, align 8
  store %struct.efx_mtd* %15, %struct.efx_mtd** %6, align 8
  %16 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %17 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %16, i32 0, i32 2
  %18 = load %struct.efx_spi_device*, %struct.efx_spi_device** %17, align 8
  store %struct.efx_spi_device* %18, %struct.efx_spi_device** %7, align 8
  %19 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %20 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %19, i32 0, i32 1
  %21 = load %struct.efx_nic*, %struct.efx_nic** %20, align 8
  store %struct.efx_nic* %21, %struct.efx_nic** %8, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %60, %2
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 40
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @__set_current_state(i32 %33)
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %35, 10
  %37 = call i32 @schedule_timeout(i32 %36)
  %38 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %39 = load %struct.efx_spi_device*, %struct.efx_spi_device** %7, align 8
  %40 = load i32, i32* @SPI_RDSR, align 4
  %41 = call i32 @falcon_spi_cmd(%struct.efx_nic* %38, %struct.efx_spi_device* %39, i32 %40, i32 -1, i32* null, i32* %9, i32 4)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SPI_STATUS_NRDY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %73

52:                                               ; preds = %46
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINTR, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %73

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %22

63:                                               ; preds = %22
  %64 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %4, align 8
  %65 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %68 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %56, %51, %44
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @falcon_spi_cmd(%struct.efx_nic*, %struct.efx_spi_device*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

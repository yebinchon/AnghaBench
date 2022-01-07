; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c_i2400ms_enable_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c_i2400ms_enable_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"(func %p)\0A\00", align 1
@ioe_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SDIO function enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"SDIO function failed to enable: %d\0A\00", align 1
@I2400MS_INIT_SLEEP_INTERVAL = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Can't enable WiMAX function;  has the function been enabled?\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"(func %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*)* @i2400ms_enable_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400ms_enable_function(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %10 = call i32 @d_fnstart(i32 3, %struct.device* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %9)
  %11 = call i64 (...) @get_jiffies_64()
  %12 = load i32, i32* @ioe_timeout, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %41, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i64 (...) @get_jiffies_64()
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @time_before64(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %31 = call i32 @sdio_claim_host(%struct.sdio_func* %30)
  %32 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %33 = call i32 @sdio_enable_func(%struct.sdio_func* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %38 = call i32 @sdio_release_host(%struct.sdio_func* %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %62

41:                                               ; preds = %29
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %46 = call i32 @sdio_disable_func(%struct.sdio_func* %45)
  %47 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %48 = call i32 @sdio_release_host(%struct.sdio_func* %47)
  %49 = load i32, i32* @I2400MS_INIT_SLEEP_INTERVAL, align 4
  %50 = call i32 @msleep(i32 %49)
  br label %19

51:                                               ; preds = %27
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ETIME, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @d_fnend(i32 3, %struct.device* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.sdio_func* %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.sdio_func*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64 @time_before64(i64, i64) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.sdio_func*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

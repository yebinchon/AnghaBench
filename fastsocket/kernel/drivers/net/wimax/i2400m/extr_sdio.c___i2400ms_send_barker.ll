; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c___i2400ms_send_barker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c___i2400ms_send_barker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400ms = type { %struct.sdio_func* }
%struct.sdio_func = type { %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I2400MS_BLK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"E: barker error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400ms*, i32*, i64)* @__i2400ms_send_barker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i2400ms_send_barker(%struct.i2400ms* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400ms*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_func*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  store %struct.i2400ms* %0, %struct.i2400ms** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %12 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %11, i32 0, i32 0
  %13 = load %struct.sdio_func*, %struct.sdio_func** %12, align 8
  store %struct.sdio_func* %13, %struct.sdio_func** %8, align 8
  %14 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %15 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @I2400MS_BLK_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %46

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcpy(i8* %25, i32* %26, i64 %27)
  %29 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %30 = call i32 @sdio_claim_host(%struct.sdio_func* %29)
  %31 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @I2400MS_BLK_SIZE, align 4
  %34 = call i32 @sdio_memcpy_toio(%struct.sdio_func* %31, i32 0, i8* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %36 = call i32 @sdio_release_host(%struct.sdio_func* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @d_printf(i32 0, %struct.device* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @kfree(i8* %44)
  br label %46

46:                                               ; preds = %43, %23
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_memcpy_toio(%struct.sdio_func*, i32, i8*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_message_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_message_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64, i32, i32 }
%struct.i2c_msg = type { i32, i32 }

@S3C2410_IICSTAT_TXRXEN = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@S3C2410_IICSTAT_MASTER_RX = common dso_local global i64 0, align 8
@S3C2410_IICSTAT_MASTER_TX = common dso_local global i64 0, align 8
@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"START: %08lx to IICSTAT, %02x to DS\0A\00", align 1
@S3C2410_IICDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"iiccon, %08lx\0A\00", align 1
@S3C2410_IICSTAT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_i2c*, %struct.i2c_msg*)* @s3c24xx_i2c_message_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_i2c_message_start(%struct.s3c24xx_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 127
  %12 = shl i32 %11, 1
  store i32 %12, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load i64, i64* @S3C2410_IICSTAT_TXRXEN, align 8
  %14 = load i64, i64* %6, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %6, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I2C_M_RD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i64, i64* @S3C2410_IICSTAT_MASTER_RX, align 8
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i64, i64* @S3C2410_IICSTAT_MASTER_TX, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = xor i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %44 = call i32 @s3c24xx_i2c_enable_ack(%struct.s3c24xx_i2c* %43)
  %45 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @S3C2410_IICCON, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @readl(i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %53 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @S3C2410_IICSTAT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i64 %51, i64 %56)
  %58 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @S3C2410_IICDS, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeb(i32 %64, i64 %69)
  %71 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %72 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ndelay(i32 %73)
  %75 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %82 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @S3C2410_IICCON, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i64 %80, i64 %85)
  %87 = load i64, i64* @S3C2410_IICSTAT_START, align 8
  %88 = load i64, i64* %6, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %92 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @S3C2410_IICSTAT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i64 %90, i64 %95)
  ret void
}

declare dso_local i32 @s3c24xx_i2c_enable_ack(%struct.s3c24xx_i2c*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

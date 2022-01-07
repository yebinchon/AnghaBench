; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_disable_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_disable_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64 }

@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICCON_ACKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_i2c*)* @s3c24xx_i2c_disable_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_i2c_disable_ack(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca %struct.s3c24xx_i2c*, align 8
  %3 = alloca i64, align 8
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %2, align 8
  %4 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S3C2410_IICCON, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @S3C2410_IICCON_ACKEN, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @S3C2410_IICCON, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i64 %13, i64 %18)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

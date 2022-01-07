; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_is2440.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_is2440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32 }
%struct.platform_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TYPE_S3C2440 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*)* @s3c24xx_i2c_is2440 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_is2440(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca %struct.s3c24xx_i2c*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %2, align 8
  %5 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.platform_device* @to_platform_device(i32 %7)
  store %struct.platform_device* %8, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.TYPE_2__* @platform_get_device_id(%struct.platform_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TYPE_S3C2440, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.TYPE_2__* @platform_get_device_id(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

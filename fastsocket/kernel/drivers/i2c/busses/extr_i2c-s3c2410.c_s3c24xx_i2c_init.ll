; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.s3c2410_platform_i2c* }
%struct.s3c2410_platform_i2c = type { i32, i32 (i32)* }

@S3C2410_IICCON_IRQEN = common dso_local global i64 0, align 8
@S3C2410_IICCON_ACKEN = common dso_local global i64 0, align 8
@S3C2410_IICADD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"slave address 0x%02x\0A\00", align 1
@S3C2410_IICCON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot meet bus frequency required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"bus frequency set to %d KHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"S3C2410_IICCON=0x%02lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*)* @s3c24xx_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_init(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.s3c2410_platform_i2c*, align 8
  %6 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %3, align 8
  %7 = load i64, i64* @S3C2410_IICCON_IRQEN, align 8
  %8 = load i64, i64* @S3C2410_IICCON_ACKEN, align 8
  %9 = or i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %13, align 8
  store %struct.s3c2410_platform_i2c* %14, %struct.s3c2410_platform_i2c** %5, align 8
  %15 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %16 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %15, i32 0, i32 1
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = icmp ne i32 (i32)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %21 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = call i32 @to_platform_device(%struct.TYPE_5__* %25)
  %27 = call i32 %22(i32 %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S3C2410_IICADD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i32 %31, i64 %36)
  %38 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_info(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @S3C2410_IICCON, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i64 %45, i64 %50)
  %52 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %53 = call i64 @s3c24xx_i2c_clockrate(%struct.s3c24xx_i2c* %52, i32* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %28
  %56 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @S3C2410_IICCON, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i64 0, i64 %60)
  %62 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %63 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @dev_err(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %79

68:                                               ; preds = %28
  %69 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %70 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dev_info(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %75 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @dev_dbg(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %68, %55
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @to_platform_device(%struct.TYPE_5__*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @s3c24xx_i2c_clockrate(%struct.s3c24xx_i2c*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

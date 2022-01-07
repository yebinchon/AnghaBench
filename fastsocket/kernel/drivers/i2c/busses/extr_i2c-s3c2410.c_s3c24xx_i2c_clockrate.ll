; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_clockrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_clockrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.s3c2410_platform_i2c* }
%struct.s3c2410_platform_i2c = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"pdata desired frequency %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Unable to achieve desired frequency %luKHz. Lowest achievable %dKHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICCON_SCALEMASK = common dso_local global i32 0, align 4
@S3C2410_IICCON_TXDIV_512 = common dso_local global i32 0, align 4
@S3C2410_IICLC_FILTER_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"IICLC=%08lx\0A\00", align 1
@S3C2440_IICLC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*, i32*)* @s3c24xx_i2c_clockrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_clockrate(%struct.s3c24xx_i2c* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c24xx_i2c*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.s3c2410_platform_i2c*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %17, align 8
  store %struct.s3c2410_platform_i2c* %18, %struct.s3c2410_platform_i2c** %6, align 8
  %19 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @clk_get_rate(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = udiv i64 %26, 1000
  store i64 %27, i64* %7, align 8
  %28 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %32 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_dbg(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %36 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i64 [ %42, %39 ], [ 100000, %43 ]
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = udiv i64 %46, 1000
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @s3c24xx_i2c_calcdivisor(i64 %48, i64 %49, i32* %9, i32* %8)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @dev_err(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %140

64:                                               ; preds = %44
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %68 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @S3C2410_IICCON, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @S3C2410_IICCON_SCALEMASK, align 4
  %74 = load i32, i32* @S3C2410_IICCON_TXDIV_512, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub i32 %79, 1
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 512
  br i1 %84, label %85, label %89

85:                                               ; preds = %64
  %86 = load i32, i32* @S3C2410_IICCON_TXDIV_512, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %64
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %93 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @S3C2410_IICCON, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i64 %91, i64 %96)
  %98 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %99 = call i64 @s3c24xx_i2c_is2440(%struct.s3c24xx_i2c* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %89
  %102 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %103 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = sdiv i32 %107, 1000
  %109 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %110 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %13, align 8
  %115 = udiv i64 %114, 1000000
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @DIV_ROUND_UP(i64 %116, i32 5)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp ugt i64 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  store i64 3, i64* %13, align 8
  br label %121

121:                                              ; preds = %120, %106
  %122 = load i64, i64* @S3C2410_IICLC_FILTER_ON, align 8
  %123 = load i64, i64* %13, align 8
  %124 = or i64 %123, %122
  store i64 %124, i64* %13, align 8
  br label %126

125:                                              ; preds = %101
  store i64 0, i64* %13, align 8
  br label %126

126:                                              ; preds = %125, %121
  %127 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %128 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %127, i32 0, i32 2
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @dev_dbg(%struct.TYPE_3__* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %130)
  %132 = load i64, i64* %13, align 8
  %133 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %134 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @S3C2440_IICLC, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i64 %132, i64 %137)
  br label %139

139:                                              ; preds = %126, %89
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %55
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i32 @s3c24xx_i2c_calcdivisor(i64, i64, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @s3c24xx_i2c_is2440(%struct.s3c24xx_i2c*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

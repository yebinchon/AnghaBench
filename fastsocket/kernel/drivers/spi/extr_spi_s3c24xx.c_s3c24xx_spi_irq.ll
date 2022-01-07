; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_spi = type { i32, i32, i32, i64, i8**, i32 }

@S3C2410_SPSTA = common dso_local global i64 0, align 8
@S3C2410_SPSTA_DCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data-collision\0A\00", align 1
@S3C2410_SPSTA_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"spi not ready for tx?\0A\00", align 1
@S3C2410_SPRDAT = common dso_local global i64 0, align 8
@S3C2410_SPTDAT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c24xx_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.s3c24xx_spi*
  store %struct.s3c24xx_spi* %9, %struct.s3c24xx_spi** %5, align 8
  %10 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S3C2410_SPSTA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @readb(i64 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @S3C2410_SPSTA_DCOL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %29, i32 0, i32 2
  %31 = call i32 @complete(i32* %30)
  br label %90

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @S3C2410_SPSTA_READY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %42, i32 0, i32 2
  %44 = call i32 @complete(i32* %43)
  br label %90

45:                                               ; preds = %32
  %46 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %50, i32 0, i32 4
  %52 = load i8**, i8*** %51, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %56 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @S3C2410_SPRDAT, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i8* @readb(i64 %59)
  %61 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %61, i32 0, i32 4
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %60, i8** %66, align 8
  br label %67

67:                                               ; preds = %54, %45
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %72 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @hw_txbyte(%struct.s3c24xx_spi* %76, i32 %77)
  %79 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %80 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @S3C2410_SPTDAT, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writeb(i32 %78, i64 %83)
  br label %89

85:                                               ; preds = %67
  %86 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %87 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %86, i32 0, i32 2
  %88 = call i32 @complete(i32* %87)
  br label %89

89:                                               ; preds = %85, %75
  br label %90

90:                                               ; preds = %89, %37, %24
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local i8* @readb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @hw_txbyte(%struct.s3c24xx_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

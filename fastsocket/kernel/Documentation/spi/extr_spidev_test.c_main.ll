; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_test.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@device = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't open device\00", align 1
@SPI_IOC_WR_MODE = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't set spi mode\00", align 1
@SPI_IOC_RD_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"can't get spi mode\00", align 1
@SPI_IOC_WR_BITS_PER_WORD = common dso_local global i32 0, align 4
@bits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"can't set bits per word\00", align 1
@SPI_IOC_RD_BITS_PER_WORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"can't get bits per word\00", align 1
@SPI_IOC_WR_MAX_SPEED_HZ = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"can't set max speed hz\00", align 1
@SPI_IOC_RD_MAX_SPEED_HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"can't get max speed hz\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"spi mode: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"bits per word: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"max speed: %d Hz (%d KHz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @parse_opts(i32 %8, i8** %9)
  %11 = load i32, i32* @device, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = call i32 @open(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @pabort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SPI_IOC_WR_MODE, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, i32* @mode)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @pabort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SPI_IOC_RD_MODE, align 4
  %29 = call i32 @ioctl(i32 %27, i32 %28, i32* @mode)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @pabort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SPI_IOC_WR_BITS_PER_WORD, align 4
  %37 = call i32 @ioctl(i32 %35, i32 %36, i32* @bits)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @pabort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SPI_IOC_RD_BITS_PER_WORD, align 4
  %45 = call i32 @ioctl(i32 %43, i32 %44, i32* @bits)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @pabort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SPI_IOC_WR_MAX_SPEED_HZ, align 4
  %53 = call i32 @ioctl(i32 %51, i32 %52, i32* @speed)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @pabort(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SPI_IOC_RD_MAX_SPEED_HZ, align 4
  %61 = call i32 @ioctl(i32 %59, i32 %60, i32* @speed)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @pabort(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %58
  %67 = load i32, i32* @mode, align 4
  %68 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @bits, align 4
  %70 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @speed, align 4
  %72 = load i32, i32* @speed, align 4
  %73 = sdiv i32 %72, 1000
  %74 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @transfer(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @parse_opts(i32, i8**) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @pabort(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @transfer(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_fdx.c_dumpstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_fdx.c_dumpstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_IOC_RD_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SPI rd_mode\00", align 1
@SPI_IOC_RD_LSB_FIRST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SPI rd_lsb_fist\00", align 1
@SPI_IOC_RD_BITS_PER_WORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"SPI bits_per_word\00", align 1
@SPI_IOC_RD_MAX_SPEED_HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SPI max_speed_hz\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s: spi mode %d, %d bits %sper word, %d Hz max\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"(lsb first) \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dumpstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpstat(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SPI_IOC_RD_MODE, align 4
  %11 = call i64 @ioctl(i32 %9, i32 %10, i32* %5)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SPI_IOC_RD_LSB_FIRST, align 4
  %18 = call i64 @ioctl(i32 %16, i32 %17, i32* %6)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %46

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SPI_IOC_RD_BITS_PER_WORD, align 4
  %25 = call i64 @ioctl(i32 %23, i32 %24, i32* %7)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %46

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SPI_IOC_RD_MAX_SPEED_HZ, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, i32* %8)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %46

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %37, i32 %38, i32 %39, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %34, %27, %20, %13
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_test.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_test.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8, i32 }

@parse_opts.lopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1, i8 0, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 0, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 0, i32 98 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8 0, i32 108 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0, i8 0, i32 72 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i8 0, i32 79 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 0, i8 0, i32 76 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, i8 0, i32 67 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i8 0, i32 51 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 0, i8 0, i32 78 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i8 0, i32 82 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bpw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cpha\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cpol\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"lsb\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cs-high\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"3wire\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"no-cs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"D:s:d:b:lHOLC3NR\00", align 1
@optarg = common dso_local global i32 0, align 4
@device = common dso_local global i32 0, align 4
@speed = common dso_local global i8* null, align 8
@delay = common dso_local global i8* null, align 8
@bits = common dso_local global i8* null, align 8
@SPI_LOOP = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_NO_CS = common dso_local global i32 0, align 4
@SPI_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %2, %63
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @parse_opts.lopts, i64 0, i64 0), i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %64

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %58 [
    i32 68, label %15
    i32 115, label %17
    i32 100, label %20
    i32 98, label %23
    i32 108, label %26
    i32 72, label %30
    i32 79, label %34
    i32 76, label %38
    i32 67, label %42
    i32 51, label %46
    i32 78, label %50
    i32 82, label %54
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @optarg, align 4
  store i32 %16, i32* @device, align 4
  br label %63

17:                                               ; preds = %13
  %18 = load i32, i32* @optarg, align 4
  %19 = call i8* @atoi(i32 %18)
  store i8* %19, i8** @speed, align 8
  br label %63

20:                                               ; preds = %13
  %21 = load i32, i32* @optarg, align 4
  %22 = call i8* @atoi(i32 %21)
  store i8* %22, i8** @delay, align 8
  br label %63

23:                                               ; preds = %13
  %24 = load i32, i32* @optarg, align 4
  %25 = call i8* @atoi(i32 %24)
  store i8* %25, i8** @bits, align 8
  br label %63

26:                                               ; preds = %13
  %27 = load i32, i32* @SPI_LOOP, align 4
  %28 = load i32, i32* @mode, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @mode, align 4
  br label %63

30:                                               ; preds = %13
  %31 = load i32, i32* @SPI_CPHA, align 4
  %32 = load i32, i32* @mode, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @mode, align 4
  br label %63

34:                                               ; preds = %13
  %35 = load i32, i32* @SPI_CPOL, align 4
  %36 = load i32, i32* @mode, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @mode, align 4
  br label %63

38:                                               ; preds = %13
  %39 = load i32, i32* @SPI_LSB_FIRST, align 4
  %40 = load i32, i32* @mode, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @mode, align 4
  br label %63

42:                                               ; preds = %13
  %43 = load i32, i32* @SPI_CS_HIGH, align 4
  %44 = load i32, i32* @mode, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @mode, align 4
  br label %63

46:                                               ; preds = %13
  %47 = load i32, i32* @SPI_3WIRE, align 4
  %48 = load i32, i32* @mode, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @mode, align 4
  br label %63

50:                                               ; preds = %13
  %51 = load i32, i32* @SPI_NO_CS, align 4
  %52 = load i32, i32* @mode, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @mode, align 4
  br label %63

54:                                               ; preds = %13
  %55 = load i32, i32* @SPI_READY, align 4
  %56 = load i32, i32* @mode, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @mode, align 4
  br label %63

58:                                               ; preds = %13
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @print_usage(i8* %61)
  br label %63

63:                                               ; preds = %58, %54, %50, %46, %42, %38, %34, %30, %26, %23, %20, %17, %15
  br label %6

64:                                               ; preds = %12
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @print_usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

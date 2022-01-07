; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-empress.c_empress_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-empress.c_empress_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.v4l2_dbg_chip_ident = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@V4L2_IDENT_NONE = common dso_local global i32 0, align 4
@V4L2_CHIP_MATCH_I2C_DRIVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"saa6752hs\00", align 1
@core = common dso_local global i32 0, align 4
@g_chip_ident = common dso_local global i32 0, align 4
@V4L2_CHIP_MATCH_I2C_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dbg_chip_ident*)* @empress_g_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empress_g_chip_ident(%struct.file* %0, i8* %1, %struct.v4l2_dbg_chip_ident* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dbg_chip_ident* %2, %struct.v4l2_dbg_chip_ident** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %8, align 8
  %12 = load i32, i32* @V4L2_IDENT_NONE, align 4
  %13 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_CHIP_MATCH_I2C_DRIVER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strcmp(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %32 = load i32, i32* @core, align 4
  %33 = load i32, i32* @g_chip_ident, align 4
  %34 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %35 = call i32 @saa_call_empress(%struct.saa7134_dev* %31, i32 %32, i32 %33, %struct.v4l2_dbg_chip_ident* %34)
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %23, %3
  %37 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_CHIP_MATCH_I2C_ADDR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %45 = load i32, i32* @core, align 4
  %46 = load i32, i32* @g_chip_ident, align 4
  %47 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %48 = call i32 @saa_call_empress(%struct.saa7134_dev* %44, i32 %45, i32 %46, %struct.v4l2_dbg_chip_ident* %47)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %43, %30
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @saa_call_empress(%struct.saa7134_dev*, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

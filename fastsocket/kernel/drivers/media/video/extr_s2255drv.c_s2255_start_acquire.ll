; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_start_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_start_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_channel = type { i64, i32, %struct.TYPE_7__, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.s2255_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@G_chnmap = common dso_local global i64* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"out of mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_FRAMES = common dso_local global i32 0, align 4
@IN_DATA_TOKEN = common dso_local global i64 0, align 8
@CMD_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"CMD_START error\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"start acquire exit[%d] %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2255_channel*)* @s2255_start_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2255_start_acquire(%struct.s2255_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2255_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s2255_dev*, align 8
  store %struct.s2255_channel* %0, %struct.s2255_channel** %3, align 8
  %9 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %10 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.s2255_dev* @to_s2255_dev(i32 %12)
  store %struct.s2255_dev* %13, %struct.s2255_dev** %8, align 8
  %14 = load i64*, i64** @G_chnmap, align 8
  %15 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %16 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 512, i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %26 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %97

32:                                               ; preds = %1
  %33 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %34 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 8
  %35 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %36 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %38 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %60, %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SYS_FRAMES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %45 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %53 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load i64, i64* @IN_DATA_TOKEN, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = bitcast i8* %65 to i64*
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @cpu_to_le32(i64 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = bitcast i8* %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* @CMD_START, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to i64*
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %77 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @s2255_write_config(%struct.TYPE_8__* %78, i8* %79, i32 512)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %85 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %63
  %90 = load %struct.s2255_channel*, %struct.s2255_channel** %3, align 8
  %91 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %92, i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @kfree(i8* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %24
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.s2255_dev* @to_s2255_dev(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @s2255_write_config(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

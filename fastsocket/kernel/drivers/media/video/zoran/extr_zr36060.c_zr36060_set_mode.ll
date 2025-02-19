; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { i64 }
%struct.zr36060 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: set_mode %d call\0A\00", align 1
@CODEC_DO_EXPANSION = common dso_local global i32 0, align 4
@CODEC_DO_COMPRESSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, i32)* @zr36060_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36060_set_mode(%struct.videocodec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.videocodec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zr36060*, align 8
  store %struct.videocodec* %0, %struct.videocodec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.videocodec*, %struct.videocodec** %4, align 8
  %8 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.zr36060*
  store %struct.zr36060* %10, %struct.zr36060** %6, align 8
  %11 = load %struct.zr36060*, %struct.zr36060** %6, align 8
  %12 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CODEC_DO_EXPANSION, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CODEC_DO_COMPRESSION, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.zr36060*, %struct.zr36060** %6, align 8
  %29 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.zr36060*, %struct.zr36060** %6, align 8
  %31 = call i32 @zr36060_init(%struct.zr36060* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @zr36060_init(%struct.zr36060*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

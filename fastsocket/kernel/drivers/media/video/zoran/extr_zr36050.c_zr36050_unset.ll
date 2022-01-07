; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_unset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { %struct.zr36050* }
%struct.zr36050 = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: finished codec #%d\0A\00", align 1
@zr36050_codecs = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*)* @zr36050_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36050_unset(%struct.videocodec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.videocodec*, align 8
  %4 = alloca %struct.zr36050*, align 8
  store %struct.videocodec* %0, %struct.videocodec** %3, align 8
  %5 = load %struct.videocodec*, %struct.videocodec** %3, align 8
  %6 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %5, i32 0, i32 0
  %7 = load %struct.zr36050*, %struct.zr36050** %6, align 8
  store %struct.zr36050* %7, %struct.zr36050** %4, align 8
  %8 = load %struct.zr36050*, %struct.zr36050** %4, align 8
  %9 = icmp ne %struct.zr36050* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.zr36050*, %struct.zr36050** %4, align 8
  %12 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.zr36050*, %struct.zr36050** %4, align 8
  %15 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.zr36050*, %struct.zr36050** %4, align 8
  %19 = call i32 @kfree(%struct.zr36050* %18)
  %20 = load %struct.videocodec*, %struct.videocodec** %3, align 8
  %21 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %20, i32 0, i32 0
  store %struct.zr36050* null, %struct.zr36050** %21, align 8
  %22 = load i32, i32* @zr36050_codecs, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @zr36050_codecs, align 4
  store i32 0, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.zr36050*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

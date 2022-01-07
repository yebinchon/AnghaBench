; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_querymenu = type { i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"enter vidioc_querymenu()\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"exit vidioc_querymenu()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_querymenu*)* @vidioc_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querymenu(%struct.file* %0, i8* %1, %struct.v4l2_querymenu* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_querymenu*, align 8
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_querymenu* %2, %struct.v4l2_querymenu** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %10, %struct.cx231xx_fh** %7, align 8
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %12 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %11, i32 0, i32 0
  %13 = load %struct.cx231xx*, %struct.cx231xx** %12, align 8
  store %struct.cx231xx* %13, %struct.cx231xx** %8, align 8
  %14 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %17 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %18 = call i32 @cx231xx_querymenu(%struct.cx231xx* %16, %struct.v4l2_querymenu* %17)
  ret i32 %18
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx231xx_querymenu(%struct.cx231xx*, %struct.v4l2_querymenu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

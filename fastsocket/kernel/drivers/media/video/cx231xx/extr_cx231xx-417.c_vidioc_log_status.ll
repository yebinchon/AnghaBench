; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s/2\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s/2: ============  START LOG STATUS  ============\0A\00", align 1
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%s/2: =============  END LOG STATUS  =============\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @vidioc_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx231xx_fh*, align 8
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca [34 x i8], align 16
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %9, %struct.cx231xx_fh** %5, align 8
  %10 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %5, align 8
  %11 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %10, i32 0, i32 0
  %12 = load %struct.cx231xx*, %struct.cx231xx** %11, align 8
  store %struct.cx231xx* %12, %struct.cx231xx** %6, align 8
  %13 = getelementptr inbounds [34 x i8], [34 x i8]* %7, i64 0, i64 0
  %14 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %13, i32 34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %23 = load i32, i32* @core, align 4
  %24 = load i32, i32* @log_status, align 4
  %25 = call i32 @call_all(%struct.cx231xx* %22, i32 %23, i32 %24)
  %26 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 1
  %28 = getelementptr inbounds [34 x i8], [34 x i8]* %7, i64 0, i64 0
  %29 = call i32 @cx2341x_log_status(i32* %27, i8* %28)
  %30 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @dprintk(i32, i8*, i8*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx2341x_log_status(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

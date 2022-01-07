; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_querystd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32 }

@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_NUML = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @bttv_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_querystd(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bttv_fh*, align 8
  %8 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bttv_fh*
  store %struct.bttv_fh* %10, %struct.bttv_fh** %7, align 8
  %11 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %12 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %11, i32 0, i32 0
  %13 = load %struct.bttv*, %struct.bttv** %12, align 8
  store %struct.bttv* %13, %struct.bttv** %8, align 8
  %14 = load i32, i32* @BT848_DSTATUS, align 4
  %15 = call i32 @btread(i32 %14)
  %16 = load i32, i32* @BT848_DSTATUS_NUML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @V4L2_STD_625_50, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @V4L2_STD_525_60, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  ret i32 0
}

declare dso_local i32 @btread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

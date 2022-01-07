; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_format_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_format_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_format = type { i32 }
%struct.saa7146_dev = type { i32 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.saa7146_format* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"unknown pixelformat:'%4.4s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146_format*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @NUM_FORMATS, align 4
  store i32 %8, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.saa7146_format*, %struct.saa7146_format** @formats, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %14, i64 %16
  %18 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.saa7146_format*, %struct.saa7146_format** @formats, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %23, i64 %25
  store %struct.saa7146_format* %26, %struct.saa7146_format** %3, align 8
  br label %34

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  %32 = bitcast i32* %5 to i8*
  %33 = call i32 @DEB_D(i8* %32)
  store %struct.saa7146_format* null, %struct.saa7146_format** %3, align 8
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.saa7146_format*, %struct.saa7146_format** %3, align 8
  ret %struct.saa7146_format* %35
}

declare dso_local i32 @DEB_D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_format_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_format_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_format = type { i32 }

@FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.bttv_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bttv_format* (i32)* @format_by_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bttv_format* @format_by_fourcc(i32 %0) #0 {
  %2 = alloca %struct.bttv_format*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FORMATS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.bttv_format*, %struct.bttv_format** @formats, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %10, i64 %12
  %14 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 -1, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %33

18:                                               ; preds = %9
  %19 = load %struct.bttv_format*, %struct.bttv_format** @formats, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %19, i64 %21
  %23 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.bttv_format*, %struct.bttv_format** @formats, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %28, i64 %30
  store %struct.bttv_format* %31, %struct.bttv_format** %2, align 8
  br label %37

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %5
  store %struct.bttv_format* null, %struct.bttv_format** %2, align 8
  br label %37

37:                                               ; preds = %36, %27
  %38 = load %struct.bttv_format*, %struct.bttv_format** %2, align 8
  ret %struct.bttv_format* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

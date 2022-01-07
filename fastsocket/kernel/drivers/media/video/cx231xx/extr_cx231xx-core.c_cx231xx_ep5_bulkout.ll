; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_ep5_bulkout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_ep5_bulkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"out of mem\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bulk message failed: %d (%d/%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_ep5_bulkout(%struct.cx231xx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kzalloc(i32 4096, i32 %14)
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @memcpy(i32* %24, i32* %25, i32 4096)
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_sndbulkpipe(i32 %32, i32 5)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @usb_bulk_msg(i32 %29, i32 %33, i32* %34, i32 4096, i32* %9, i32 2000)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  br label %49

43:                                               ; preds = %22
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 -1, i32 0
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @kfree(i32* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cx231xx_info(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

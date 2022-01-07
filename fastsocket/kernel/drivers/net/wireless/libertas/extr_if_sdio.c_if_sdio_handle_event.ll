; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_handle_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i64, i32, i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@IF_SDIO_MODEL_8385 = common dso_local global i64 0, align 8
@IF_SDIO_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"event packet too small (%d bytes)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i32*, i32)* @if_sdio_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_handle_event(%struct.if_sdio_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @LBS_DEB_SDIO, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %12 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IF_SDIO_MODEL_8385, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %18 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IF_SDIO_EVENT, align 4
  %21 = call i32 @sdio_readb(i32 %19, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %66

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %8, align 4
  br label %59

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %66

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 24
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 0
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %36, %25
  %60 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %61 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @lbs_queue_event(i32 %62, i32 %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %31, %24
  %67 = load i32, i32* @LBS_DEB_SDIO, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @lbs_deb_leave_args(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @lbs_queue_event(i32, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

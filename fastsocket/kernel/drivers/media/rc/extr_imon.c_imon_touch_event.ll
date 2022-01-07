; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_touch_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i8, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@TOUCH_TIMEOUT = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imon_context*, i8*)* @imon_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imon_touch_event(%struct.imon_context* %0, i8* %1) #0 {
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca i8*, align 8
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %6 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %5, i32 0, i32 3
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @TOUCH_TIMEOUT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @mod_timer(i32* %6, i64 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 4
  %21 = or i32 %15, %20
  %22 = trunc i32 %21 to i8
  %23 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %24 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %23, i32 0, i32 0
  store i8 %22, i8* %24, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 4
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = or i32 %29, %34
  %36 = sub nsw i32 4095, %35
  %37 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %40 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ABS_X, align 4
  %43 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %44 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 4
  %46 = call i32 @input_report_abs(i32 %41, i32 %42, i8 zeroext %45)
  %47 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %48 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ABS_Y, align 4
  %51 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %52 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @input_report_abs(i32 %49, i32 %50, i8 zeroext %54)
  %56 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %57 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BTN_TOUCH, align 4
  %60 = call i32 @input_report_key(i32 %58, i32 %59, i32 1)
  %61 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %62 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @input_sync(i32 %63)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @input_report_abs(i32, i32, i8 zeroext) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

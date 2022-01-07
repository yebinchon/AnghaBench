; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_event.c_wl1271_event_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_event.c_wl1271_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)* }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EVENT on mbox %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_event_handle(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @DEBUG_EVENT, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %17 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wlcore_read(%struct.wl1271* %16, i32 %23, i32 %26, i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %15
  %36 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %39, align 8
  %41 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %42 = call i32 %40(%struct.wl1271* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %51, align 8
  %53 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %54 = call i32 %52(%struct.wl1271* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %45, %33, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

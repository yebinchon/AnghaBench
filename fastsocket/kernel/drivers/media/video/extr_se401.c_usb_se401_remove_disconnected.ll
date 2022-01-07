; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_usb_se401_remove_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_usb_se401_remove_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { %struct.usb_se401*, %struct.usb_se401*, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.usb_se401* }
%struct.TYPE_4__ = type { %struct.usb_se401* }

@SE401_NUMSBUF = common dso_local global i32 0, align 4
@SE401_NUMSCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_se401*)* @usb_se401_remove_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_se401_remove_disconnected(%struct.usb_se401* %0) #0 {
  %2 = alloca %struct.usb_se401*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %2, align 8
  %4 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %5 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %4, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SE401_NUMSBUF, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %12 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %11, i32 0, i32 7
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %10
  %20 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %21 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %20, i32 0, i32 7
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @usb_kill_urb(i32* %26)
  %28 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %29 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %28, i32 0, i32 7
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @usb_free_urb(i32* %34)
  %36 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %37 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %36, i32 0, i32 7
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  store i32* null, i32** %41, align 8
  %42 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %43 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %42, i32 0, i32 6
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.usb_se401*, %struct.usb_se401** %48, align 8
  %50 = call i32 @kfree(%struct.usb_se401* %49)
  br label %51

51:                                               ; preds = %19, %10
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %6

55:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SE401_NUMSCRATCH, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %62 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %61, i32 0, i32 5
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.usb_se401*, %struct.usb_se401** %67, align 8
  %69 = call i32 @kfree(%struct.usb_se401* %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %75 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %80 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @usb_kill_urb(i32* %81)
  %83 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %84 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @usb_free_urb(i32* %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %89 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %93 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %97 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %96, i32 0, i32 1
  %98 = load %struct.usb_se401*, %struct.usb_se401** %97, align 8
  %99 = call i32 @kfree(%struct.usb_se401* %98)
  %100 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %101 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %100, i32 0, i32 0
  %102 = load %struct.usb_se401*, %struct.usb_se401** %101, align 8
  %103 = call i32 @kfree(%struct.usb_se401* %102)
  %104 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %105 = call i32 @kfree(%struct.usb_se401* %104)
  ret void
}

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(%struct.usb_se401*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

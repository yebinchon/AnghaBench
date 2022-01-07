; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_free_sio_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_free_sio_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_free_sio_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_free_sio_buffers(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  %7 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %8 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %13 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %96

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %21 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %26 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %96

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %43 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %42, i32 0, i32 2
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %47 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %46, i32 0, i32 4
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %50 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %49, i32 0, i32 3
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %53 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %5, align 4
  %55 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %56 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %58 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %57, i32 0, i32 2
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %86, %41
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %67 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %77 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @vfree(i32* %83)
  br label %85

85:                                               ; preds = %75, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %61

89:                                               ; preds = %61
  %90 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %91 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = call i32 @kfree(%struct.TYPE_2__* %92)
  %94 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %95 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %94, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %89, %34, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

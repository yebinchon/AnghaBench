; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_free_sio_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_free_sio_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*)* @cafe_free_sio_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_free_sio_buffers(%struct.cafe_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cafe_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %8 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %13 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %32 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %37 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vfree(i32 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %50 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %52 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @kfree(%struct.TYPE_2__* %53)
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %56 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %55, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %58 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %57, i32 0, i32 2
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %61 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %48, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

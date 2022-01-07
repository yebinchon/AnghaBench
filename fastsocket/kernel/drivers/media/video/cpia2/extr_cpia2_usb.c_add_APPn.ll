; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_add_APPn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_add_APPn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @add_APPn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_APPn(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %4 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %96

7:                                                ; preds = %1
  %8 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %14 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %12, i64 %19
  store i32 255, i32* %20, align 4
  %21 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %22 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 224, %23
  %25 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %31 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32 %24, i32* %37, align 4
  %38 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %44 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  store i32 0, i32* %50, align 4
  %51 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %52 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 2
  %55 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %56 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %59, i64 %66
  store i32 %54, i32* %67, align 4
  %68 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %69 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %74 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %81 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %84 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memcpy(i32* %79, i32 %82, i32 %85)
  %87 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %88 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %91 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %89
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

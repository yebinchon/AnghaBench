; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_add_COM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_add_COM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @add_COM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_COM(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %4 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %92

7:                                                ; preds = %1
  %8 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %14 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %13, i32 0, i32 1
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
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %27 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  store i32 254, i32* %33, align 4
  %34 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %35 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %40 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  store i32 0, i32* %46, align 4
  %47 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %48 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 2
  %51 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %52 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %57 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %55, i64 %62
  store i32 %50, i32* %63, align 4
  %64 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %77 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %80 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @memcpy(i32* %75, i32 %78, i32 %81)
  %83 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %84 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %87 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %85
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

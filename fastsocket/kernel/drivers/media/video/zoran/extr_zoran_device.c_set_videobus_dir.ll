; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_set_videobus_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_set_videobus_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@lml33dpath = common dso_local global i32 0, align 4
@ZR_GPIO_VID_DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*, i32)* @set_videobus_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_videobus_dir(%struct.zoran* %0, i32 %1) #0 {
  %3 = alloca %struct.zoran*, align 8
  %4 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.zoran*, %struct.zoran** %3, align 8
  %6 = getelementptr inbounds %struct.zoran, %struct.zoran* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %20 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @lml33dpath, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.zoran*, %struct.zoran** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @GPIO(%struct.zoran* %13, i32 5, i32 %14)
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.zoran*, %struct.zoran** %3, align 8
  %18 = call i32 @GPIO(%struct.zoran* %17, i32 5, i32 1)
  br label %19

19:                                               ; preds = %16, %12
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.zoran*, %struct.zoran** %3, align 8
  %22 = load %struct.zoran*, %struct.zoran** %3, align 8
  %23 = getelementptr inbounds %struct.zoran, %struct.zoran* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @ZR_GPIO_VID_DIR, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.zoran*, %struct.zoran** %3, align 8
  %30 = getelementptr inbounds %struct.zoran, %struct.zoran* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ZR_GPIO_VID_DIR, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  br label %44

42:                                               ; preds = %20
  %43 = load i32, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ %41, %37 ], [ %43, %42 ]
  %46 = call i32 @GPIO(%struct.zoran* %21, i32 %28, i32 %45)
  br label %47

47:                                               ; preds = %44, %19
  ret void
}

declare dso_local i32 @GPIO(%struct.zoran*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

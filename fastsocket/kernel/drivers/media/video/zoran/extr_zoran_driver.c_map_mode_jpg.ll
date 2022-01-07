; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_map_mode_jpg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_map_mode_jpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran_fh = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ZORAN_MAP_MODE_JPG_PLAY = common dso_local global i32 0, align 4
@ZORAN_MAP_MODE_JPG_REC = common dso_local global i32 0, align 4
@jpg_bufsize = common dso_local global i32 0, align 4
@jpg_nbufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran_fh*, i32)* @map_mode_jpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_mode_jpg(%struct.zoran_fh* %0, i32 %1) #0 {
  %3 = alloca %struct.zoran_fh*, align 8
  %4 = alloca i32, align 4
  store %struct.zoran_fh* %0, %struct.zoran_fh** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* @ZORAN_MAP_MODE_JPG_PLAY, align 4
  br label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ZORAN_MAP_MODE_JPG_REC, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = load %struct.zoran_fh*, %struct.zoran_fh** %3, align 8
  %14 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @jpg_bufsize, align 4
  %16 = load %struct.zoran_fh*, %struct.zoran_fh** %3, align 8
  %17 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @jpg_nbufs, align 4
  %20 = load %struct.zoran_fh*, %struct.zoran_fh** %3, align 8
  %21 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

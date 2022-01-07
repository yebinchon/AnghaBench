; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_saa7134_vbi_init1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_saa7134_vbi_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.saa7134_dev*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@saa7134_buffer_timeout = common dso_local global i32 0, align 4
@vbibufs = common dso_local global i32 0, align 4
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_vbi_init1(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %4 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = call i32 @init_timer(%struct.TYPE_4__* %9)
  %11 = load i32, i32* @saa7134_buffer_timeout, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %11, i32* %15, align 8
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 0
  %18 = ptrtoint %struct.TYPE_3__* %17 to i64
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.saa7134_dev* %23, %struct.saa7134_dev** %26, align 8
  %27 = load i32, i32* @vbibufs, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 2, i32* @vbibufs, align 4
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* @vbibufs, align 4
  %32 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  store i32 %35, i32* @vbibufs, align 4
  br label %36

36:                                               ; preds = %34, %30
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

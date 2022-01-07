; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_bwqcam_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_bwqcam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport* }
%struct.parport = type { i32 }

@num_cams = common dso_local global i32 0, align 4
@qcams = common dso_local global %struct.qcam_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @bwqcam_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwqcam_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcam_device*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @num_cams, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.qcam_device**, %struct.qcam_device*** @qcams, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.qcam_device*, %struct.qcam_device** %10, i64 %12
  %14 = load %struct.qcam_device*, %struct.qcam_device** %13, align 8
  store %struct.qcam_device* %14, %struct.qcam_device** %4, align 8
  %15 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %16 = icmp ne %struct.qcam_device* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %19 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.parport*, %struct.parport** %21, align 8
  %23 = load %struct.parport*, %struct.parport** %2, align 8
  %24 = icmp eq %struct.parport* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.qcam_device**, %struct.qcam_device*** @qcams, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qcam_device*, %struct.qcam_device** %26, i64 %28
  store %struct.qcam_device* null, %struct.qcam_device** %29, align 8
  %30 = load %struct.qcam_device*, %struct.qcam_device** %4, align 8
  %31 = call i32 @close_bwqcam(%struct.qcam_device* %30)
  br label %32

32:                                               ; preds = %25, %17, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @close_bwqcam(%struct.qcam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

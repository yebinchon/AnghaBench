; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_tvaudio_getstereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_tvaudio_getstereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %4 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 129, label %10
    i32 130, label %22
    i32 128, label %22
  ]

10:                                               ; preds = %1
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %12 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %18 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @tvaudio_getstereo(%struct.saa7134_dev* %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %10
  br label %25

22:                                               ; preds = %1, %1
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %24 = call i32 @getstereo_7133(%struct.saa7134_dev* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %1, %22, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @tvaudio_getstereo(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @getstereo_7133(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

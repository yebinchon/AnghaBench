; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_tvaudio_setinput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_tvaudio_setinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_2__*, %struct.saa7134_input* }
%struct.TYPE_2__ = type { i32 }
%struct.saa7134_input = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_tvaudio_setinput(%struct.saa7134_dev* %0, %struct.saa7134_input* %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_input*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store %struct.saa7134_input* %1, %struct.saa7134_input** %4, align 8
  %5 = load %struct.saa7134_input*, %struct.saa7134_input** %4, align 8
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 1
  store %struct.saa7134_input* %5, %struct.saa7134_input** %7, align 8
  %8 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %9 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 131, label %13
    i32 129, label %13
    i32 130, label %16
    i32 128, label %16
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %15 = call i32 @mute_input_7134(%struct.saa7134_dev* %14)
  br label %19

16:                                               ; preds = %2, %2
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %18 = call i32 @mute_input_7133(%struct.saa7134_dev* %17)
  br label %19

19:                                               ; preds = %2, %16, %13
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %21 = call i32 @saa7134_enable_i2s(%struct.saa7134_dev* %20)
  ret void
}

declare dso_local i32 @mute_input_7134(%struct.saa7134_dev*) #1

declare dso_local i32 @mute_input_7133(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_enable_i2s(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

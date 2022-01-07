; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_set_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@irq_iswitch = common dso_local global i64 0, align 8
@TUNER_ABSENT = common dso_local global i64 0, align 8
@TVAUDIO_INPUT_TUNER = common dso_local global i32 0, align 4
@TVAUDIO_INPUT_EXTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32, i32)* @set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_input(%struct.bttv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.bttv*, %struct.bttv** %4, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @irq_iswitch, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load %struct.bttv*, %struct.bttv** %4, align 8
  %15 = getelementptr inbounds %struct.bttv, %struct.bttv* %14, i32 0, i32 3
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bttv*, %struct.bttv** %4, align 8
  %19 = getelementptr inbounds %struct.bttv, %struct.bttv* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.bttv*, %struct.bttv** %4, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load %struct.bttv*, %struct.bttv** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @video_mux(%struct.bttv* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.bttv*, %struct.bttv** %4, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 3
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.bttv*, %struct.bttv** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @video_mux(%struct.bttv* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.bttv*, %struct.bttv** %4, align 8
  %42 = load %struct.bttv*, %struct.bttv** %4, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TUNER_ABSENT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @TVAUDIO_INPUT_TUNER, align 4
  br label %54

52:                                               ; preds = %47, %40
  %53 = load i32, i32* @TVAUDIO_INPUT_EXTERN, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @audio_input(%struct.bttv* %41, i32 %55)
  %57 = load %struct.bttv*, %struct.bttv** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @set_tvnorm(%struct.bttv* %57, i32 %58)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @video_mux(%struct.bttv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @audio_input(%struct.bttv*, i32) #1

declare dso_local i32 @set_tvnorm(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

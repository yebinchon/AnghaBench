; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_mix_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_mix_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsp_audio_law_to_s32 = common dso_local global i32* null, align 8
@dsp_audio_s16_to_law = common dso_local global i32* null, align 8
@dsp_audio_mix_law = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_audio_generate_mix_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %47, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %31, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 32767
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  store i32 32767, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, -32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -32768, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32*, i32** @dsp_audio_s16_to_law, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 65535
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @dsp_audio_mix_law, align 8
  %39 = load i32, i32* %1, align 4
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %2, align 4
  %42 = or i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32 %37, i32* %44, align 4
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %8

47:                                               ; preds = %8
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %4

50:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

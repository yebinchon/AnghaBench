; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-cards.c_hvr950q_cs5340_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-cards.c_hvr950q_cs5340_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32 }

@REG_000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hvr950q_cs5340_audio(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au0828_dev*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.au0828_dev*
  store %struct.au0828_dev* %7, %struct.au0828_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %12 = load i32, i32* @REG_000, align 4
  %13 = call i32 @au0828_set(%struct.au0828_dev* %11, i32 %12, i32 16)
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %16 = load i32, i32* @REG_000, align 4
  %17 = call i32 @au0828_clear(%struct.au0828_dev* %15, i32 %16, i32 16)
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @au0828_set(%struct.au0828_dev*, i32, i32) #1

declare dso_local i32 @au0828_clear(%struct.au0828_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

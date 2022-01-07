; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_setcarrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_setcarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@SAA7134_CARRIER1_FREQ0 = common dso_local global i32 0, align 4
@SAA7134_CARRIER2_FREQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i32, i32)* @tvaudio_setcarrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvaudio_setcarrier(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 -1, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i32, i32* @SAA7134_CARRIER1_FREQ0, align 4
  %13 = ashr i32 %12, 2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @tvaudio_carr2reg(i32 %14)
  %16 = call i32 @saa_writel(i32 %13, i32 %15)
  %17 = load i32, i32* @SAA7134_CARRIER2_FREQ0, align 4
  %18 = ashr i32 %17, 2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @tvaudio_carr2reg(i32 %19)
  %21 = call i32 @saa_writel(i32 %18, i32 %20)
  ret void
}

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @tvaudio_carr2reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

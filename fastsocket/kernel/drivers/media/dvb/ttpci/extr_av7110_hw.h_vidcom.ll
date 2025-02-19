; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_hw.h_vidcom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_hw.h_vidcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32 }

@COMTYPE_MISC = common dso_local global i32 0, align 4
@AV7110_FW_VIDEO_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*, i32, i32)* @vidcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidcom(%struct.av7110* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.av7110*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.av7110*, %struct.av7110** %4, align 8
  %8 = load i32, i32* @COMTYPE_MISC, align 4
  %9 = load i32, i32* @AV7110_FW_VIDEO_COMMAND, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 16
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65535
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 16
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 65535
  %18 = call i32 @av7110_fw_cmd(%struct.av7110* %7, i32 %8, i32 %9, i32 4, i32 %11, i32 %13, i32 %15, i32 %17)
  ret i32 %18
}

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

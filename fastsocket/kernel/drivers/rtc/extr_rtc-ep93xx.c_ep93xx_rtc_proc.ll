; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"preload\09\09: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"delete\09\09: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @ep93xx_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @ep93xx_rtc_get_swcomp(%struct.device* %7, i16* %5, i16* %6)
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = load i16, i16* %5, align 2
  %11 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i16 zeroext %10)
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i16, i16* %6, align 2
  %14 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %13)
  ret i32 0
}

declare dso_local i32 @ep93xx_rtc_get_swcomp(%struct.device*, i16*, i16*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

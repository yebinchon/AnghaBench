; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmr2 = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmr2*)* @fmr2_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmr2_setfreq(%struct.fmr2* %0) #0 {
  %2 = alloca %struct.fmr2*, align 8
  %3 = alloca i64, align 8
  store %struct.fmr2* %0, %struct.fmr2** %2, align 8
  %4 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %5 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %8 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @fmr2_mute(i32 %9)
  %11 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %12 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @outbits(i32 9, i32 2, i32 3, i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @RSF16_ENCODE(i64 %15)
  %17 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %18 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @outbits(i32 16, i32 %16, i32 2, i32 %19)
  %21 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %22 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @fmr2_unmute(i32 %23)
  %25 = call i32 @msleep(i32 110)
  %26 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %27 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @fmr2_stereo_mode(i32 %28)
  %30 = load %struct.fmr2*, %struct.fmr2** %2, align 8
  %31 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  ret i32 0
}

declare dso_local i32 @fmr2_mute(i32) #1

declare dso_local i32 @outbits(i32, i32, i32, i32) #1

declare dso_local i32 @RSF16_ENCODE(i64) #1

declare dso_local i32 @fmr2_unmute(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fmr2_stereo_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

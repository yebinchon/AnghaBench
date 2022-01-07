; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_debug_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_priv = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"*** ADC envelope (0-1023) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"*** Frequency error = %d Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"*** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"*** HW: V%02x.%02x, FW: V%02x.%02x.%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"*** Horizontal sync frequency = %d Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"*** Frame lines = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"*** Quality (0:<8dB, 7:>56dB) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xc5000_priv*)* @xc_debug_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xc_debug_dump(%struct.xc5000_priv* %0) #0 {
  %2 = alloca %struct.xc5000_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xc5000_priv* %0, %struct.xc5000_priv** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 @xc_wait(i32 100)
  %15 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %16 = call i32 @xc_get_ADC_Envelope(%struct.xc5000_priv* %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %20 = call i32 @xc_get_frequency_error(%struct.xc5000_priv* %19, i32* %4)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %24 = call i32 @xc_get_lock_status(%struct.xc5000_priv* %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %28 = call i32 @xc_get_version(%struct.xc5000_priv* %27, i32* %9, i32* %10, i32* %11, i32* %12)
  %29 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %30 = call i32 @xc_get_buildversion(%struct.xc5000_priv* %29, i32* %13)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %38 = call i32 @xc_get_hsync_freq(%struct.xc5000_priv* %37, i32* %6)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %42 = call i32 @xc_get_frame_lines(%struct.xc5000_priv* %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %46 = call i32 @xc_get_quality(%struct.xc5000_priv* %45, i32* %8)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local i32 @xc_wait(i32) #1

declare dso_local i32 @xc_get_ADC_Envelope(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @xc_get_frequency_error(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_lock_status(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_version(%struct.xc5000_priv*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xc_get_buildversion(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_hsync_freq(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_frame_lines(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_quality(%struct.xc5000_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

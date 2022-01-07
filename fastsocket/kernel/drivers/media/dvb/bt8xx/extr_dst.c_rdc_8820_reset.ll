; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_rdc_8820_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_rdc_8820_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Resetting DST\00", align 1
@RDC_8820_RESET = common dso_local global i32 0, align 4
@NO_DELAY = common dso_local global i32 0, align 4
@DST_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dst_gpio_outb ERROR !\00", align 1
@DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @rdc_8820_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdc_8820_reset(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = load i32, i32* @verbose, align 4
  %5 = load i32, i32* @DST_DEBUG, align 4
  %6 = call i32 @dprintk(i32 %4, i32 %5, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %8 = load i32, i32* @RDC_8820_RESET, align 4
  %9 = load i32, i32* @RDC_8820_RESET, align 4
  %10 = load i32, i32* @NO_DELAY, align 4
  %11 = call i64 @dst_gpio_outb(%struct.dst_state* %7, i32 %8, i32 %9, i32 0, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @verbose, align 4
  %15 = load i32, i32* @DST_ERROR, align 4
  %16 = call i32 @dprintk(i32 %14, i32 %15, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = call i32 @udelay(i32 1000)
  %19 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %20 = load i32, i32* @RDC_8820_RESET, align 4
  %21 = load i32, i32* @RDC_8820_RESET, align 4
  %22 = load i32, i32* @RDC_8820_RESET, align 4
  %23 = load i32, i32* @DELAY, align 4
  %24 = call i64 @dst_gpio_outb(%struct.dst_state* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @verbose, align 4
  %28 = load i32, i32* @DST_ERROR, align 4
  %29 = call i32 @dprintk(i32 %27, i32 %28, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i64 @dst_gpio_outb(%struct.dst_state*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

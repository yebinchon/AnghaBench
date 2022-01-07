; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_pio_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_pio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@RDC_8820_PIO_0_ENABLE = common dso_local global i32 0, align 4
@NO_DELAY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dst_gpio_outb ERROR !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_pio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_pio_enable(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %5 = load i32, i32* @RDC_8820_PIO_0_ENABLE, align 4
  %6 = load i32, i32* @NO_DELAY, align 4
  %7 = call i64 @dst_gpio_outb(%struct.dst_state* %4, i32 -1, i32 %5, i32 0, i32 %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @verbose, align 4
  %11 = load i32, i32* @DST_ERROR, align 4
  %12 = call i32 @dprintk(i32 %10, i32 %11, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @udelay(i32 1000)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i64 @dst_gpio_outb(%struct.dst_state*, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

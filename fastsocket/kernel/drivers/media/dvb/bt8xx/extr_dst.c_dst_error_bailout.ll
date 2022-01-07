; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_error_bailout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_error_bailout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Trying to bailout from previous error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_error_bailout(%struct.dst_state* %0) #0 {
  %2 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %2, align 8
  %3 = load i32, i32* @verbose, align 4
  %4 = load i32, i32* @DST_INFO, align 4
  %5 = call i32 @dprintk(i32 %3, i32 %4, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %7 = call i32 @rdc_8820_reset(%struct.dst_state* %6)
  %8 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %9 = call i32 @dst_pio_disable(%struct.dst_state* %8)
  %10 = call i32 @msleep(i32 10)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @rdc_8820_reset(%struct.dst_state*) #1

declare dso_local i32 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_finish_fdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_finish_fdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NeedSeek = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"finish_fdc: dummy seek started\0A\00", align 1
@FDCREG_DATA = common dso_local global i32 0, align 4
@SUD = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FDCREG_CMD = common dso_local global i32 0, align 4
@FDCCMD_SEEK = common dso_local global i32 0, align 4
@MotorOn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish_fdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_fdc() #0 {
  %1 = load i32, i32* @NeedSeek, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 @finish_fdc_done(i32 0)
  br label %15

5:                                                ; preds = %0
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @FDCREG_DATA, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SUD, i32 0, i32 0), align 4
  %9 = call i32 @FDC_WRITE(i32 %7, i32 %8)
  %10 = call i32 @SET_IRQ_HANDLER(i32 (i32)* @finish_fdc_done)
  %11 = load i32, i32* @FDCREG_CMD, align 4
  %12 = load i32, i32* @FDCCMD_SEEK, align 4
  %13 = call i32 @FDC_WRITE(i32 %11, i32 %12)
  store i32 1, i32* @MotorOn, align 4
  %14 = call i32 (...) @start_timeout()
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

declare dso_local i32 @finish_fdc_done(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @SET_IRQ_HANDLER(i32 (i32)*) #1

declare dso_local i32 @start_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

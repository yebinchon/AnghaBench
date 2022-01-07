; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-voiceblue.c_panic_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-voiceblue.c_panic_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@MACHINE_PANICED = common dso_local global i32 0, align 4
@machine_state = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@OMAP_LPG1_LCR = common dso_local global i32 0, align 4
@OMAP_LPG1_PMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @panic_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panic_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @MACHINE_PANICED, align 4
  %9 = call i64 @test_and_set_bit(i32 %8, i32* @machine_state)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %12, i32* %4, align 4
  br label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @OMAP_LPG1_LCR, align 4
  %15 = call i32 @omap_writeb(i32 120, i32 %14)
  %16 = load i32, i32* @OMAP_LPG1_PMR, align 4
  %17 = call i32 @omap_writeb(i32 1, i32 %16)
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %13, %11
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @omap_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

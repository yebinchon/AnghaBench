; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/devboards/pb1200/extr_platform.c_pb1200_mmcled_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/devboards/pb1200/extr_platform.c_pb1200_mmcled_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.led_classdev = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@mmc_activity = common dso_local global i32 0, align 4
@bcsr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @pb1200_mmcled_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pb1200_mmcled_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @LED_OFF, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* @mmc_activity, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @mmc_activity, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bcsr, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -257
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %8
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @mmc_activity, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @mmc_activity, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bcsr, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 256
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

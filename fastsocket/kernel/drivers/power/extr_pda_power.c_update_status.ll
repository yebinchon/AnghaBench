; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_update_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)* }

@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@new_ac_status = common dso_local global i32 0, align 4
@new_usb_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_status() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i32 (...)*, i32 (...)** %2, align 8
  %4 = icmp ne i32 (...)* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = call i32 (...) %8()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* @new_ac_status, align 4
  br label %14

14:                                               ; preds = %5, %0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = icmp ne i32 (...)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = call i32 (...) %22()
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @new_usb_status, align 4
  br label %28

28:                                               ; preds = %19, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

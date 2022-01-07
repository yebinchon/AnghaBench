; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.migor_ts_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @migor_ts_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migor_ts_suspend(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.migor_ts_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.migor_ts_priv* @dev_get_drvdata(i32* %7)
  store %struct.migor_ts_priv* %8, %struct.migor_ts_priv** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i64 @device_may_wakeup(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %15 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @enable_irq_wake(i32 %16)
  br label %18

18:                                               ; preds = %13, %2
  ret i32 0
}

declare dso_local %struct.migor_ts_priv* @dev_get_drvdata(i32*) #1

declare dso_local i64 @device_may_wakeup(i32*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

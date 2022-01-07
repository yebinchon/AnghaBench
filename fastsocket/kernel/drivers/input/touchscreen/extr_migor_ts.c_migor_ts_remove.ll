; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.migor_ts_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @migor_ts_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migor_ts_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.migor_ts_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0
  %6 = call %struct.migor_ts_priv* @dev_get_drvdata(i32* %5)
  store %struct.migor_ts_priv* %6, %struct.migor_ts_priv** %3, align 8
  %7 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %3, align 8
  %8 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.migor_ts_priv* %10)
  %12 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %3, align 8
  %13 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_unregister_device(i32 %14)
  %16 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %3, align 8
  %17 = call i32 @kfree(%struct.migor_ts_priv* %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_set_drvdata(i32* %19, i32* null)
  ret i32 0
}

declare dso_local %struct.migor_ts_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.migor_ts_priv*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.migor_ts_priv*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

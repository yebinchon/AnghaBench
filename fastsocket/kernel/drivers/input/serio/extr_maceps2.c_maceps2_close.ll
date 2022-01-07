; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_maceps2.c_maceps2_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_maceps2.c_maceps2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i64 }
%struct.maceps2_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PS2_CONTROL_TX_CLOCK_DISABLE = common dso_local global i32 0, align 4
@PS2_CONTROL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @maceps2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maceps2_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.maceps2_data*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.maceps2_data*
  store %struct.maceps2_data* %7, %struct.maceps2_data** %3, align 8
  %8 = load i32, i32* @PS2_CONTROL_TX_CLOCK_DISABLE, align 4
  %9 = load i32, i32* @PS2_CONTROL_RESET, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.maceps2_data*, %struct.maceps2_data** %3, align 8
  %12 = getelementptr inbounds %struct.maceps2_data, %struct.maceps2_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = call i32 @udelay(i32 100)
  %16 = load %struct.maceps2_data*, %struct.maceps2_data** %3, align 8
  %17 = getelementptr inbounds %struct.maceps2_data, %struct.maceps2_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.serio*, %struct.serio** %2, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.serio* %19)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @free_irq(i32, %struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

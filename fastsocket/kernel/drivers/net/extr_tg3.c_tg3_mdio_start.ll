; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mdio_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mdio_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MAC_MI_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@MAC_MI_MODE = common dso_local global i32 0, align 4
@MDIOBUS_INITED = common dso_local global i32 0, align 4
@ASIC_REV_5785 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_mdio_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_mdio_start(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %3 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @MAC_MI_MODE, align 4
  %10 = load %struct.tg3*, %struct.tg3** %2, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tw32_f(i32 %9, i32 %12)
  %14 = call i32 @udelay(i32 80)
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = load i32, i32* @MDIOBUS_INITED, align 4
  %17 = call i64 @tg3_flag(%struct.tg3* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = call i64 @tg3_asic_rev(%struct.tg3* %20)
  %22 = load i64, i64* @ASIC_REV_5785, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.tg3*, %struct.tg3** %2, align 8
  %26 = call i32 @tg3_mdio_config_5785(%struct.tg3* %25)
  br label %27

27:                                               ; preds = %24, %19, %1
  ret void
}

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_mdio_config_5785(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

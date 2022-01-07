; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i32 }

@CCR_MEN = common dso_local global i32 0, align 4
@CCR_MSTA = common dso_local global i32 0, align 4
@CCR_MTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc_i2c*)* @mpc_i2c_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_i2c_fixup(%struct.mpc_i2c* %0) #0 {
  %2 = alloca %struct.mpc_i2c*, align 8
  store %struct.mpc_i2c* %0, %struct.mpc_i2c** %2, align 8
  %3 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %4 = call i32 @writeccr(%struct.mpc_i2c* %3, i32 0)
  %5 = call i32 @udelay(i32 30)
  %6 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %7 = load i32, i32* @CCR_MEN, align 4
  %8 = call i32 @writeccr(%struct.mpc_i2c* %6, i32 %7)
  %9 = call i32 @udelay(i32 30)
  %10 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %11 = load i32, i32* @CCR_MSTA, align 4
  %12 = load i32, i32* @CCR_MTX, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @writeccr(%struct.mpc_i2c* %10, i32 %13)
  %15 = call i32 @udelay(i32 30)
  %16 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %17 = load i32, i32* @CCR_MSTA, align 4
  %18 = load i32, i32* @CCR_MTX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CCR_MEN, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @writeccr(%struct.mpc_i2c* %16, i32 %21)
  %23 = call i32 @udelay(i32 30)
  %24 = load %struct.mpc_i2c*, %struct.mpc_i2c** %2, align 8
  %25 = load i32, i32* @CCR_MEN, align 4
  %26 = call i32 @writeccr(%struct.mpc_i2c* %24, i32 %25)
  %27 = call i32 @udelay(i32 30)
  ret void
}

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

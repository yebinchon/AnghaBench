; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_start_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_start_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32 }

@CpCmd = common dso_local global i32 0, align 4
@Cmd = common dso_local global i32 0, align 4
@RxOn = common dso_local global i32 0, align 4
@TxOn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_start_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_start_hw(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %3 = load i32, i32* @CpCmd, align 4
  %4 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %5 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @cpw16(i32 %3, i32 %6)
  %8 = load i32, i32* @Cmd, align 4
  %9 = load i32, i32* @RxOn, align 4
  %10 = load i32, i32* @TxOn, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cpw8(i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @cpw16(i32, i32) #1

declare dso_local i32 @cpw8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

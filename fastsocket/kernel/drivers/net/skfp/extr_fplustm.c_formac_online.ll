; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_formac_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_formac_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FM_MDREG1 = common dso_local global i32 0, align 4
@FM_MONLINE = common dso_local global i32 0, align 4
@FM_SELRA = common dso_local global i32 0, align 4
@MDR1INIT = common dso_local global i32 0, align 4
@FM_MMODE = common dso_local global i32 0, align 4
@FM_ADDRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @formac_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @formac_online(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %4 = call i32 @enable_formac(%struct.s_smc* %3)
  %5 = load i32, i32* @FM_MDREG1, align 4
  %6 = call i32 @FM_A(i32 %5)
  %7 = load i32, i32* @FM_MONLINE, align 4
  %8 = load i32, i32* @FM_SELRA, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MDR1INIT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %11, %16
  %18 = load i32, i32* @FM_MMODE, align 4
  %19 = load i32, i32* @FM_SELRA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FM_ADDRX, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @SETMASK(i32 %6, i32 %17, i32 %22)
  ret void
}

declare dso_local i32 @enable_formac(%struct.s_smc*) #1

declare dso_local i32 @SETMASK(i32, i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

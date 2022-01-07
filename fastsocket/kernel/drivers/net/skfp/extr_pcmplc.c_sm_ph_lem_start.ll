; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_sm_ph_lem_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_sm_ph_lem_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lem_counter }
%struct.lem_counter = type { i32, i64 }

@PL_LE_THRESHOLD = common dso_local global i32 0, align 4
@PL_LINK_ERR_CTR = common dso_local global i32 0, align 4
@PL_INTR_MASK = common dso_local global i32 0, align 4
@PL_LE_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32, i32)* @sm_ph_lem_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_ph_lem_start(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lem_counter*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.lem_counter* %14, %struct.lem_counter** %7, align 8
  %15 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %16 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %18 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PL_LE_THRESHOLD, align 4
  %21 = call i32 @PLC(i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @outpw(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PL_LINK_ERR_CTR, align 4
  %26 = call i32 @PLC(i32 %24, i32 %25)
  %27 = call i32 @inpw(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PL_INTR_MASK, align 4
  %30 = call i32 @PLC(i32 %28, i32 %29)
  %31 = load i32, i32* @PL_LE_CTR, align 4
  %32 = load i32, i32* @PL_LE_CTR, align 4
  %33 = call i32 @SETMASK(i32 %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @SETMASK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

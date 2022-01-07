; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_zpeekl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_zpeekl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zatm_dev = type { i32 }

@zwait = common dso_local global i32 0, align 4
@uPD98401_IND_ACC = common dso_local global i32 0, align 4
@uPD98401_IA_BALL = common dso_local global i32 0, align 4
@uPD98401_IA_RW = common dso_local global i32 0, align 4
@uPD98401_IA_TGT_CM = common dso_local global i32 0, align 4
@uPD98401_IA_TGT_SHIFT = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@CER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zatm_dev*, i32)* @zpeekl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpeekl(%struct.zatm_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.zatm_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.zatm_dev* %0, %struct.zatm_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @zwait, align 4
  %6 = load i32, i32* @uPD98401_IND_ACC, align 4
  %7 = load i32, i32* @uPD98401_IA_BALL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @uPD98401_IA_RW, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @uPD98401_IA_TGT_CM, align 4
  %12 = load i32, i32* @uPD98401_IA_TGT_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CMR, align 4
  %18 = call i32 @zout(i32 %16, i32 %17)
  %19 = load i32, i32* @zwait, align 4
  %20 = load i32, i32* @CER, align 4
  %21 = call i32 @zin(i32 %20)
  ret i32 %21
}

declare dso_local i32 @zout(i32, i32) #1

declare dso_local i32 @zin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

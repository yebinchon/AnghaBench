; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_hps_source_and_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_hps_source_and_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }

@MASK_30 = common dso_local global i32 0, align 4
@MASK_31 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i32, i32, i32*)* @calculate_hps_source_and_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_hps_source_and_sync(%struct.saa7146_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @MASK_30, align 4
  %10 = load i32, i32* @MASK_31, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MASK_28, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 30
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 28
  %22 = or i32 %19, %21
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

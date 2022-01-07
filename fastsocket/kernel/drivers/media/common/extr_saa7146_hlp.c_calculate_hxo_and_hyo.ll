; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_hxo_and_hyo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_hxo_and_hyo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_vv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MASK_B0 = common dso_local global i32 0, align 4
@MASK_W0 = common dso_local global i32 0, align 4
@MASK_B2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_vv*, i32*, i32*)* @calculate_hxo_and_hyo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_hxo_and_hyo(%struct.saa7146_vv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.saa7146_vv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_vv* %0, %struct.saa7146_vv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %10 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %15 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @MASK_B0, align 4
  %20 = or i32 %19, 3840
  %21 = xor i32 %20, -1
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 0
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @MASK_W0, align 4
  %31 = load i32, i32* @MASK_B2, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 12
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

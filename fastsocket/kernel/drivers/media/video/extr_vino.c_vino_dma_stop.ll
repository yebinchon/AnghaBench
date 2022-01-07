; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_dma_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vino_channel_settings = type { i64 }

@vino = common dso_local global %struct.TYPE_2__* null, align 8
@VINO_CHANNEL_A = common dso_local global i64 0, align 8
@VINO_CTRL_A_DMA_ENBL = common dso_local global i32 0, align 4
@VINO_CTRL_B_DMA_ENBL = common dso_local global i32 0, align 4
@VINO_CTRL_A_INT = common dso_local global i32 0, align 4
@VINO_CTRL_B_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vino_dma_stop():\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_dma_stop(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %8 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VINO_CHANNEL_A, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @VINO_CTRL_A_DMA_ENBL, align 4
  %14 = xor i32 %13, -1
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @VINO_CTRL_B_DMA_ENBL, align 4
  %17 = xor i32 %16, -1
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %23 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VINO_CHANNEL_A, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @VINO_CTRL_A_INT, align 4
  %29 = xor i32 %28, -1
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @VINO_CTRL_B_INT, align 4
  %32 = xor i32 %31, -1
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

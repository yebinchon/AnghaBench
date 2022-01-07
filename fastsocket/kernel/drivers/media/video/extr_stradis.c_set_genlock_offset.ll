; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_set_genlock_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_set_genlock_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@CurrentMode = common dso_local global i64 0, align 8
@VIDEO_MODE_PAL = common dso_local global i64 0, align 8
@debNormal = common dso_local global i32 0, align 4
@XILINX_GLDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*, i32)* @set_genlock_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_genlock_offset(%struct.saa7146* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 858, i32* %6, align 4
  %7 = load i64, i64* @CurrentMode, align 8
  %8 = load i64, i64* @VIDEO_MODE_PAL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 864, i32* %6, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 500
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 500, i32* %4, align 4
  br label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, -500
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -500, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 256
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1025, i32* %5, align 4
  br label %35

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 1024, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %37 = load i32, i32* @debNormal, align 4
  %38 = load i32, i32* @XILINX_GLDELAY, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @debiwrite(%struct.saa7146* %36, i32 %37, i32 %38, i32 %39, i32 2)
  ret void
}

declare dso_local i32 @debiwrite(%struct.saa7146*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

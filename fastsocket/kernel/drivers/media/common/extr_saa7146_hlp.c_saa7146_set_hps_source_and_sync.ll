; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_set_hps_source_and_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_set_hps_source_and_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32 }

@HPS_CTRL = common dso_local global i32 0, align 4
@MASK_31 = common dso_local global i32 0, align 4
@MASK_30 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_05 = common dso_local global i32 0, align 4
@MASK_21 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_set_hps_source_and_sync(%struct.saa7146_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa7146_vv*, align 8
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  store %struct.saa7146_vv* %11, %struct.saa7146_vv** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = load i32, i32* @HPS_CTRL, align 4
  %14 = call i32 @saa7146_read(%struct.saa7146_dev* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @MASK_31, align 4
  %16 = load i32, i32* @MASK_30, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MASK_28, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 30
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 28
  %27 = or i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %31 = load i32, i32* @HPS_CTRL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @saa7146_write(%struct.saa7146_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %35 = load i32, i32* @MC2, align 4
  %36 = load i32, i32* @MASK_05, align 4
  %37 = load i32, i32* @MASK_21, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @saa7146_write(%struct.saa7146_dev* %34, i32 %35, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %42 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %45 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

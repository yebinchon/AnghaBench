; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_setup_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_setup_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { i32 }

@AU8522_TVDEC_VBI_CTRL_H_REG017H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_CTRL_L_REG018H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_TOTAL_BITS_REG019H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_TUNIT_H_REG01AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_TUNIT_L_REG01BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_THRESH1_REG01CH = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_FRAME_PAT2_REG01EH = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_FRAME_PAT1_REG01FH = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_FRAME_PAT0_REG020H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_FRAME_MASK2_REG021H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_FRAME_MASK1_REG022H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_USER_FRAME_MASK0_REG023H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VBI_CTRL_H_REG017H_CCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au8522_state*, i32)* @setup_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_vbi(%struct.au8522_state* %0, i32 %1) #0 {
  %3 = alloca %struct.au8522_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %7 = load i32, i32* @AU8522_TVDEC_VBI_CTRL_H_REG017H, align 4
  %8 = call i32 @au8522_writereg(%struct.au8522_state* %6, i32 %7, i32 0)
  %9 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %10 = load i32, i32* @AU8522_TVDEC_VBI_CTRL_L_REG018H, align 4
  %11 = call i32 @au8522_writereg(%struct.au8522_state* %9, i32 %10, i32 0)
  %12 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %13 = load i32, i32* @AU8522_TVDEC_VBI_USER_TOTAL_BITS_REG019H, align 4
  %14 = call i32 @au8522_writereg(%struct.au8522_state* %12, i32 %13, i32 0)
  %15 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %16 = load i32, i32* @AU8522_TVDEC_VBI_USER_TUNIT_H_REG01AH, align 4
  %17 = call i32 @au8522_writereg(%struct.au8522_state* %15, i32 %16, i32 0)
  %18 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %19 = load i32, i32* @AU8522_TVDEC_VBI_USER_TUNIT_L_REG01BH, align 4
  %20 = call i32 @au8522_writereg(%struct.au8522_state* %18, i32 %19, i32 0)
  %21 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %22 = load i32, i32* @AU8522_TVDEC_VBI_USER_THRESH1_REG01CH, align 4
  %23 = call i32 @au8522_writereg(%struct.au8522_state* %21, i32 %22, i32 0)
  %24 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %25 = load i32, i32* @AU8522_TVDEC_VBI_USER_FRAME_PAT2_REG01EH, align 4
  %26 = call i32 @au8522_writereg(%struct.au8522_state* %24, i32 %25, i32 0)
  %27 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %28 = load i32, i32* @AU8522_TVDEC_VBI_USER_FRAME_PAT1_REG01FH, align 4
  %29 = call i32 @au8522_writereg(%struct.au8522_state* %27, i32 %28, i32 0)
  %30 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %31 = load i32, i32* @AU8522_TVDEC_VBI_USER_FRAME_PAT0_REG020H, align 4
  %32 = call i32 @au8522_writereg(%struct.au8522_state* %30, i32 %31, i32 0)
  %33 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %34 = load i32, i32* @AU8522_TVDEC_VBI_USER_FRAME_MASK2_REG021H, align 4
  %35 = call i32 @au8522_writereg(%struct.au8522_state* %33, i32 %34, i32 0)
  %36 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %37 = load i32, i32* @AU8522_TVDEC_VBI_USER_FRAME_MASK1_REG022H, align 4
  %38 = call i32 @au8522_writereg(%struct.au8522_state* %36, i32 %37, i32 0)
  %39 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %40 = load i32, i32* @AU8522_TVDEC_VBI_USER_FRAME_MASK0_REG023H, align 4
  %41 = call i32 @au8522_writereg(%struct.au8522_state* %39, i32 %40, i32 0)
  store i32 48, i32* %5, align 4
  br label %42

42:                                               ; preds = %49, %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 96
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @au8522_writereg(%struct.au8522_state* %46, i32 %47, i32 64)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %42

52:                                               ; preds = %42
  %53 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %54 = call i32 @au8522_writereg(%struct.au8522_state* %53, i32 68, i32 96)
  %55 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %56 = load i32, i32* @AU8522_TVDEC_VBI_CTRL_H_REG017H, align 4
  %57 = load i32, i32* @AU8522_TVDEC_VBI_CTRL_H_REG017H_CCON, align 4
  %58 = call i32 @au8522_writereg(%struct.au8522_state* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

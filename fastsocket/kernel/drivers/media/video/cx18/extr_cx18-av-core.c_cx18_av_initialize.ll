; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx18_av_state = type { i32 }
%struct.cx18 = type { i32 }

@CXADEC_DL_CTL = common dso_local global i32 0, align 4
@CXADEC_HOST_REG1 = common dso_local global i32 0, align 4
@CXADEC_DLL1_DIAG_CTRL = common dso_local global i32 0, align 4
@CXADEC_DLL2_DIAG_CTRL = common dso_local global i32 0, align 4
@CXADEC_AFE_DIAG_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_AFE_DIAG_CTRL3 = common dso_local global i32 0, align 4
@CXADEC_PIN_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_PIN_CTRL2 = common dso_local global i32 0, align 4
@CXADEC_SOFT_RST_CTRL = common dso_local global i32 0, align 4
@CXADEC_CHIP_CTRL = common dso_local global i32 0, align 4
@CXADEC_MODE_CTRL = common dso_local global i32 0, align 4
@CXADEC_CRUSH_CTRL = common dso_local global i32 0, align 4
@CXADEC_DFE_CTRL2 = common dso_local global i32 0, align 4
@CXADEC_OUT_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_AFE_CTRL = common dso_local global i32 0, align 4
@CXADEC_SRC_COMB_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @cx18_av_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_av_initialize(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %6)
  store %struct.cx18_av_state* %7, %struct.cx18_av_state** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.cx18* %9, %struct.cx18** %4, align 8
  %10 = load %struct.cx18*, %struct.cx18** %4, align 8
  %11 = call i32 @cx18_av_loadfw(%struct.cx18* %10)
  %12 = load %struct.cx18*, %struct.cx18** %4, align 8
  %13 = load i32, i32* @CXADEC_DL_CTL, align 4
  %14 = call i32 @cx18_av_write4_expect(%struct.cx18* %12, i32 %13, i32 50331648, i32 50331648, i32 318767104)
  %15 = load %struct.cx18*, %struct.cx18** %4, align 8
  %16 = load i32, i32* @CXADEC_HOST_REG1, align 4
  %17 = call i32 @cx18_av_read4(%struct.cx18* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cx18*, %struct.cx18** %4, align 8
  %19 = load i32, i32* @CXADEC_HOST_REG1, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cx18_av_write4_expect(%struct.cx18* %18, i32 %19, i32 %21, i32 %22, i32 65534)
  %24 = load %struct.cx18*, %struct.cx18** %4, align 8
  %25 = load i32, i32* @CXADEC_HOST_REG1, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 65534
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 65534
  %30 = call i32 @cx18_av_write4_expect(%struct.cx18* %24, i32 %25, i32 %27, i32 %29, i32 65535)
  %31 = load %struct.cx18*, %struct.cx18** %4, align 8
  %32 = load i32, i32* @CXADEC_DLL1_DIAG_CTRL, align 4
  %33 = call i32 @cx18_av_read4(%struct.cx18* %31, i32 %32)
  %34 = and i32 %33, -503316737
  store i32 %34, i32* %5, align 4
  %35 = load %struct.cx18*, %struct.cx18** %4, align 8
  %36 = load i32, i32* @CXADEC_DLL1_DIAG_CTRL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @cx18_av_write4(%struct.cx18* %35, i32 %36, i32 %37)
  %39 = load %struct.cx18*, %struct.cx18** %4, align 8
  %40 = load i32, i32* @CXADEC_DLL1_DIAG_CTRL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, 268435712
  %43 = call i32 @cx18_av_write4(%struct.cx18* %39, i32 %40, i32 %42)
  %44 = load %struct.cx18*, %struct.cx18** %4, align 8
  %45 = load i32, i32* @CXADEC_DLL2_DIAG_CTRL, align 4
  %46 = call i32 @cx18_av_read4(%struct.cx18* %44, i32 %45)
  %47 = and i32 %46, -503316737
  store i32 %47, i32* %5, align 4
  %48 = load %struct.cx18*, %struct.cx18** %4, align 8
  %49 = load i32, i32* @CXADEC_DLL2_DIAG_CTRL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cx18_av_write4(%struct.cx18* %48, i32 %49, i32 %50)
  %52 = load %struct.cx18*, %struct.cx18** %4, align 8
  %53 = load i32, i32* @CXADEC_DLL2_DIAG_CTRL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, 100663552
  %56 = call i32 @cx18_av_write4(%struct.cx18* %52, i32 %53, i32 %55)
  %57 = load %struct.cx18*, %struct.cx18** %4, align 8
  %58 = load i32, i32* @CXADEC_AFE_DIAG_CTRL1, align 4
  %59 = call i32 @cx18_av_write4(%struct.cx18* %57, i32 %58, i32 661506)
  %60 = load %struct.cx18*, %struct.cx18** %4, align 8
  %61 = load i32, i32* @CXADEC_AFE_DIAG_CTRL3, align 4
  %62 = call i32 @cx18_av_read4(%struct.cx18* %60, i32 %61)
  %63 = or i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.cx18*, %struct.cx18** %4, align 8
  %65 = load i32, i32* @CXADEC_AFE_DIAG_CTRL3, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @cx18_av_write4_expect(%struct.cx18* %64, i32 %65, i32 %66, i32 %67, i32 50372367)
  %69 = load %struct.cx18*, %struct.cx18** %4, align 8
  %70 = load i32, i32* @CXADEC_AFE_DIAG_CTRL3, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, -2
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, -2
  %75 = call i32 @cx18_av_write4_expect(%struct.cx18* %69, i32 %70, i32 %72, i32 %74, i32 50372367)
  %76 = load %struct.cx18*, %struct.cx18** %4, align 8
  %77 = load i32, i32* @CXADEC_PIN_CTRL1, align 4
  %78 = call i32 @cx18_av_and_or4(%struct.cx18* %76, i32 %77, i32 -1, i32 265216)
  %79 = load %struct.cx18*, %struct.cx18** %4, align 8
  %80 = load i32, i32* @CXADEC_PIN_CTRL2, align 4
  %81 = call i32 @cx18_av_and_or4(%struct.cx18* %79, i32 %80, i32 -1, i32 2)
  %82 = load %struct.cx18*, %struct.cx18** %4, align 8
  %83 = load i32, i32* @CXADEC_SOFT_RST_CTRL, align 4
  %84 = call i32 @cx18_av_write4(%struct.cx18* %82, i32 %83, i32 32768)
  %85 = load %struct.cx18*, %struct.cx18** %4, align 8
  %86 = load i32, i32* @CXADEC_SOFT_RST_CTRL, align 4
  %87 = call i32 @cx18_av_write4(%struct.cx18* %85, i32 %86, i32 0)
  %88 = load %struct.cx18*, %struct.cx18** %4, align 8
  %89 = load i32, i32* @CXADEC_CHIP_CTRL, align 4
  %90 = call i32 @cx18_av_and_or4(%struct.cx18* %88, i32 %89, i32 -262145, i32 1179648)
  %91 = load %struct.cx18*, %struct.cx18** %4, align 8
  %92 = call i32 @cx18_av_init(%struct.cx18* %91)
  %93 = load %struct.cx18*, %struct.cx18** %4, align 8
  %94 = load i32, i32* @CXADEC_MODE_CTRL, align 4
  %95 = call i32 @cx18_av_and_or4(%struct.cx18* %93, i32 %94, i32 -530448, i32 33818624)
  %96 = load %struct.cx18*, %struct.cx18** %4, align 8
  %97 = load i32, i32* @CXADEC_CRUSH_CTRL, align 4
  %98 = call i32 @cx18_av_and_or4(%struct.cx18* %96, i32 %97, i32 -1, i32 5242880)
  %99 = load %struct.cx18*, %struct.cx18** %4, align 8
  %100 = load i32, i32* @CXADEC_DFE_CTRL2, align 4
  %101 = call i32 @cx18_av_and_or4(%struct.cx18* %99, i32 %100, i32 -65281, i32 8192)
  %102 = load %struct.cx18*, %struct.cx18** %4, align 8
  %103 = load i32, i32* @CXADEC_OUT_CTRL1, align 4
  %104 = call i32 @cx18_av_write4(%struct.cx18* %102, i32 %103, i32 1074996526)
  %105 = load %struct.cx18*, %struct.cx18** %4, align 8
  %106 = load i32, i32* @CXADEC_AFE_CTRL, align 4
  %107 = call i32 @cx18_av_and_or4(%struct.cx18* %105, i32 %106, i32 -16777216, i32 23808)
  %108 = load %struct.cx18*, %struct.cx18** %4, align 8
  %109 = load i32, i32* @CXADEC_SRC_COMB_CFG, align 4
  %110 = call i32 @cx18_av_write4(%struct.cx18* %108, i32 %109, i32 1713898015)
  %111 = load %struct.cx18*, %struct.cx18** %4, align 8
  %112 = call i32 @cx18_av_read(%struct.cx18* %111, i32 2260)
  %113 = sub nsw i32 228, %112
  %114 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %115 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %117 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, 2
  %120 = add nsw i32 %119, 23
  %121 = shl i32 %120, 9
  %122 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %123 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  ret void
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_loadfw(%struct.cx18*) #1

declare dso_local i32 @cx18_av_write4_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_and_or4(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_av_init(%struct.cx18*) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

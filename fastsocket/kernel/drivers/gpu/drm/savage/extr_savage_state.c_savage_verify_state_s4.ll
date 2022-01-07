; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_verify_state_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_verify_state_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SAVAGE_DRAWLOCALCTRL_S4 = common dso_local global i32 0, align 4
@SAVAGE_TEXBLENDCOLOR_S4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid register range (0x%04x-0x%04x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SAVAGE_DRAWCTRL0_S4 = common dso_local global i32 0, align 4
@s4 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@SAVAGE_SCISSOR_MASK_S4 = common dso_local global i32 0, align 4
@SAVAGE_DRAWCTRL1_S4 = common dso_local global i32 0, align 4
@SAVAGE_TEXDESCR_S4 = common dso_local global i32 0, align 4
@SAVAGE_TEXPALADDR_S4 = common dso_local global i32 0, align 4
@SAVAGE_TEXADDR0_S4 = common dso_local global i32 0, align 4
@SAVAGE_TEXADDR1_S4 = common dso_local global i32 0, align 4
@SAVAGE_TEXDESCR_TEX0EN_MASK = common dso_local global i32 0, align 4
@SAVAGE_TEXDESCR_TEX1EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32*)* @savage_verify_state_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_verify_state_s4(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SAVAGE_DRAWLOCALCTRL_S4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add i32 %15, %16
  %18 = sub i32 %17, 1
  %19 = load i32, i32* @SAVAGE_TEXBLENDCOLOR_S4, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %14, %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %23, %24
  %26 = sub i32 %25, 1
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %100

30:                                               ; preds = %14
  %31 = load i32, i32* @SAVAGE_DRAWCTRL0_S4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s4, i32 0, i32 4), align 4
  %33 = load i32, i32* @SAVAGE_SCISSOR_MASK_S4, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @SAVE_STATE_MASK(i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* @SAVAGE_DRAWCTRL1_S4, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s4, i32 0, i32 3), align 4
  %38 = load i32, i32* @SAVAGE_SCISSOR_MASK_S4, align 4
  %39 = xor i32 %38, -1
  %40 = call i32 @SAVE_STATE_MASK(i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SAVAGE_TEXDESCR_S4, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %45, %46
  %48 = load i32, i32* @SAVAGE_TEXPALADDR_S4, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %44
  %51 = load i32, i32* @SAVAGE_TEXDESCR_S4, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s4, i32 0, i32 2), align 4
  %53 = call i32 @SAVE_STATE(i32 %51, i32 %52)
  %54 = load i32, i32* @SAVAGE_TEXADDR0_S4, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s4, i32 0, i32 1), align 4
  %56 = call i32 @SAVE_STATE(i32 %54, i32 %55)
  %57 = load i32, i32* @SAVAGE_TEXADDR1_S4, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s4, i32 0, i32 0), align 4
  %59 = call i32 @SAVE_STATE(i32 %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SAVAGE_TEXDESCR_TEX0EN_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @savage_verify_texaddr(%struct.TYPE_9__* %69, i32 0, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %68, %50
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SAVAGE_TEXDESCR_TEX1EN_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @savage_verify_texaddr(%struct.TYPE_9__* %88, i32 1, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %87, %78
  br label %98

98:                                               ; preds = %97, %44, %30
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %21
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @SAVE_STATE_MASK(i32, i32, i32) #1

declare dso_local i32 @SAVE_STATE(i32, i32) #1

declare dso_local i32 @savage_verify_texaddr(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

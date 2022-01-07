; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av.c_ps3av_resbit2id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av.c_ps3av_resbit2id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PS3AV_RES_MASK_50 = common dso_local global i32 0, align 4
@SHIFT_50 = common dso_local global i32 0, align 4
@PS3AV_RES_MASK_60 = common dso_local global i32 0, align 4
@SHIFT_60 = common dso_local global i32 0, align 4
@PS3AV_RES_MASK_VESA = common dso_local global i32 0, align 4
@SHIFT_VESA = common dso_local global i32 0, align 4
@ps3av_preferred_modes = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ps3av_resbit2id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3av_resbit2id(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PS3AV_RES_MASK_50, align 4
  %11 = load i32, i32* @SHIFT_50, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @PS3AV_RES_MASK_60, align 4
  %14 = load i32, i32* @SHIFT_60, align 4
  %15 = shl i32 %13, %14
  %16 = and i32 %12, %15
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* @PS3AV_RES_MASK_50, align 4
  %19 = load i32, i32* @SHIFT_50, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @PS3AV_RES_MASK_VESA, align 4
  %22 = load i32, i32* @SHIFT_VESA, align 4
  %23 = shl i32 %21, %22
  %24 = and i32 %20, %23
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = load i32, i32* @PS3AV_RES_MASK_60, align 4
  %27 = load i32, i32* @SHIFT_60, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @PS3AV_RES_MASK_VESA, align 4
  %30 = load i32, i32* @SHIFT_VESA, align 4
  %31 = shl i32 %29, %30
  %32 = and i32 %28, %31
  %33 = call i32 @BUILD_BUG_ON(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PS3AV_RES_MASK_50, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SHIFT_50, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PS3AV_RES_MASK_60, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @SHIFT_60, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %38, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PS3AV_RES_MASK_VESA, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @SHIFT_VESA, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %44, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

54:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ps3av_preferred_modes, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %57)
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ps3av_preferred_modes, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %61, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ps3av_preferred_modes, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  br label %82

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %55

81:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %70, %53
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

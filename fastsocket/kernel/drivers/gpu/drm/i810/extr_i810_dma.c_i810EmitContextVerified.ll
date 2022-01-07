; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810EmitContextVerified.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810EmitContextVerified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }

@RING_LOCALS = common dso_local global i32 0, align 4
@I810_CTX_SETUP_SIZE = common dso_local global i32 0, align 4
@GFX_OP_COLOR_FACTOR = common dso_local global i32 0, align 4
@I810_CTXREG_CF1 = common dso_local global i64 0, align 8
@GFX_OP_STIPPLE = common dso_local global i32 0, align 4
@I810_CTXREG_ST1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"constext state dropped!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32*)* @i810EmitContextVerified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810EmitContextVerified(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @RING_LOCALS, align 4
  %13 = load i32, i32* @I810_CTX_SETUP_SIZE, align 4
  %14 = call i32 @BEGIN_LP_RING(i32 %13)
  %15 = load i32, i32* @GFX_OP_COLOR_FACTOR, align 4
  %16 = call i32 @OUT_RING(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @I810_CTXREG_CF1, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load volatile i32, i32* %19, align 4
  %21 = call i32 @OUT_RING(i32 %20)
  %22 = load i32, i32* @GFX_OP_STIPPLE, align 4
  %23 = call i32 @OUT_RING(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @I810_CTXREG_ST1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load volatile i32, i32* %26, align 4
  %28 = call i32 @OUT_RING(i32 %27)
  store i32 4, i32* %6, align 4
  br label %29

29:                                               ; preds = %54, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @I810_CTX_SETUP_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load volatile i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, -536870912
  %41 = icmp eq i32 %40, 1610612736
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 520093696
  %45 = icmp ult i32 %44, 486539264
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @OUT_RING(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %53

51:                                               ; preds = %42, %33
  %52 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @OUT_RING(i32 0)
  br label %63

63:                                               ; preds = %61, %57
  %64 = call i32 (...) @ADVANCE_LP_RING()
  ret void
}

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810EmitTexVerified.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810EmitTexVerified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }

@RING_LOCALS = common dso_local global i32 0, align 4
@I810_TEX_SETUP_SIZE = common dso_local global i32 0, align 4
@GFX_OP_MAP_INFO = common dso_local global i32 0, align 4
@I810_TEXREG_MI1 = common dso_local global i64 0, align 8
@I810_TEXREG_MI2 = common dso_local global i64 0, align 8
@I810_TEXREG_MI3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"texture state dropped!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32*)* @i810EmitTexVerified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810EmitTexVerified(%struct.drm_device* %0, i32* %1) #0 {
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
  %13 = load i32, i32* @I810_TEX_SETUP_SIZE, align 4
  %14 = call i32 @BEGIN_LP_RING(i32 %13)
  %15 = load i32, i32* @GFX_OP_MAP_INFO, align 4
  %16 = call i32 @OUT_RING(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @I810_TEXREG_MI1, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load volatile i32, i32* %19, align 4
  %21 = call i32 @OUT_RING(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* @I810_TEXREG_MI2, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load volatile i32, i32* %24, align 4
  %26 = call i32 @OUT_RING(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @I810_TEXREG_MI3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load volatile i32, i32* %29, align 4
  %31 = call i32 @OUT_RING(i32 %30)
  store i32 4, i32* %6, align 4
  br label %32

32:                                               ; preds = %57, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @I810_TEX_SETUP_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load volatile i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, -536870912
  %44 = icmp eq i32 %43, 1610612736
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 520093696
  %48 = icmp ult i32 %47, 486539264
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @OUT_RING(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %56

54:                                               ; preds = %45, %36
  %55 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @OUT_RING(i32 0)
  br label %66

66:                                               ; preds = %64, %60
  %67 = call i32 (...) @ADVANCE_LP_RING()
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

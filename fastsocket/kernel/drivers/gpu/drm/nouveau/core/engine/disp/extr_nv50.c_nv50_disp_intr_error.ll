; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_intr_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_intr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"chid %d mthd 0x%04x data 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp_priv*)* @nv50_disp_intr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_disp_intr_error(%struct.nv50_disp_priv* %0) #0 {
  %2 = alloca %struct.nv50_disp_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %2, align 8
  %7 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %2, align 8
  %8 = call i32 @nv_rd32(%struct.nv50_disp_priv* %7, i32 6357024)
  %9 = and i32 %8, 2031616
  %10 = ashr i32 %9, 16
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %48

21:                                               ; preds = %14
  %22 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 65536, %23
  %25 = call i32 @nv_wr32(%struct.nv50_disp_priv* %22, i32 6357024, i32 %24)
  %26 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 8
  %29 = add nsw i32 6357120, %28
  %30 = call i32 @nv_rd32(%struct.nv50_disp_priv* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 8
  %34 = add nsw i32 6357124, %33
  %35 = call i32 @nv_rd32(%struct.nv50_disp_priv* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %2, align 8
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 8
  %39 = add nsw i32 6357120, %38
  %40 = call i32 @nv_wr32(%struct.nv50_disp_priv* %36, i32 %39, i32 -1879048192)
  %41 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 4092
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @nv_error(%struct.nv50_disp_priv* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %21, %20
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_priv*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

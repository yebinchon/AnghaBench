; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_isr_subfifo_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_isr_subfifo_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nve0_fifo_priv = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"SUBFIFO%d:\00", align 1
@nve0_fifo_subfifo_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"SUBFIFO%d: ch %d [%s] subc %d mthd 0x%04x data 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nve0_fifo_priv*, i32)* @nve0_fifo_isr_subfifo_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_fifo_isr_subfifo_intr(%struct.nve0_fifo_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nve0_fifo_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nve0_fifo_priv* %0, %struct.nve0_fifo_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 8192
  %15 = add nsw i32 262408, %14
  %16 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 8192
  %20 = add nsw i32 262336, %19
  %21 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 8192
  %25 = add nsw i32 262340, %24
  %26 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 8192
  %30 = add nsw i32 262432, %29
  %31 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %27, i32 %30)
  %32 = and i32 %31, 4095
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 458752
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 16380
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 2097152
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %2
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 84
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @nve0_fifo_swmthd(%struct.nve0_fifo_priv* %46, i32 %47, i32 1280, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, -2097153
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 8388608
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @nve0_fifo_swmthd(%struct.nve0_fifo_priv* %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, -8388609
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (%struct.nve0_fifo_priv*, i8*, i32, ...) @nv_error(%struct.nve0_fifo_priv* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @nve0_fifo_subfifo_intr, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @nouveau_bitfield_print(i32 %77, i32 %78)
  %80 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %85 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @nouveau_client_name_for_fifo_chid(i32* %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.nve0_fifo_priv*, i8*, i32, ...) @nv_error(%struct.nve0_fifo_priv* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83, i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %73, %70
  %93 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = mul nsw i32 %94, 8192
  %96 = add nsw i32 262336, %95
  %97 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %93, i32 %96, i32 -2141192184)
  %98 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = mul nsw i32 %99, 8192
  %101 = add nsw i32 262408, %100
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %98, i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nve0_fifo_swmthd(%struct.nve0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nve0_fifo_priv*, i8*, i32, ...) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nouveau_client_name_for_fifo_chid(i32*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

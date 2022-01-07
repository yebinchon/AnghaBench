; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_scaler_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_scaler_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EM28XX_R30_HSCALELOW = common dso_local global i32 0, align 4
@EM28XX_R32_VSCALELOW = common dso_local global i32 0, align 4
@EM28XX_R26_COMPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32)* @em28xx_scaler_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_scaler_set(%struct.em28xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 32, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 16, i32 0
  %23 = or i32 %18, %22
  store i32 %23, i32* %7, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %31 = load i32, i32* @EM28XX_R30_HSCALELOW, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @em28xx_write_regs(%struct.em28xx* %30, i32 %31, i8* %33, i32 2)
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %41 = load i32, i32* @EM28XX_R32_VSCALELOW, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @em28xx_write_regs(%struct.em28xx* %40, i32 %41, i8* %43, i32 2)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %24
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %24
  %51 = phi i1 [ true, %24 ], [ %49, %47 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 48, i32 0
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %14
  %55 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %56 = load i32, i32* @EM28XX_R26_COMPR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %55, i32 %56, i32 %57, i32 48)
  ret i32 %58
}

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i8*, i32) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

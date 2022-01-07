; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32* }

@REG_Y0BAR = common dso_local global i32 0, align 4
@REG_Y1BAR = common dso_local global i32 0, align 4
@REG_Y2BAR = common dso_local global i32 0, align 4
@REG_CTRL1 = common dso_local global i32 0, align 4
@C1_TWOBUFS = common dso_local global i32 0, align 4
@REG_UBAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_ctlr_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_ctlr_dma(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %3 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %4 = load i32, i32* @REG_Y0BAR, align 4
  %5 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %6 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cafe_reg_write(%struct.cafe_camera* %3, i32 %4, i32 %9)
  %11 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %12 = load i32, i32* @REG_Y1BAR, align 4
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %14 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cafe_reg_write(%struct.cafe_camera* %11, i32 %12, i32 %17)
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %20 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %25 = load i32, i32* @REG_Y2BAR, align 4
  %26 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %27 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cafe_reg_write(%struct.cafe_camera* %24, i32 %25, i32 %30)
  %32 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %33 = load i32, i32* @REG_CTRL1, align 4
  %34 = load i32, i32* @C1_TWOBUFS, align 4
  %35 = call i32 @cafe_reg_clear_bit(%struct.cafe_camera* %32, i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %1
  %37 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %38 = load i32, i32* @REG_CTRL1, align 4
  %39 = load i32, i32* @C1_TWOBUFS, align 4
  %40 = call i32 @cafe_reg_set_bit(%struct.cafe_camera* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %23
  %42 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %43 = load i32, i32* @REG_UBAR, align 4
  %44 = call i32 @cafe_reg_write(%struct.cafe_camera* %42, i32 %43, i32 0)
  ret void
}

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_clear_bit(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_set_bit(%struct.cafe_camera*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

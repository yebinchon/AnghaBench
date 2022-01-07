; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_frame_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_frame_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32, i32, i32, i32, i32, i64, i64*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Frame overrun on %d, frames lost\0A\00", align 1
@CF_DMA_ACTIVE = common dso_local global i32 0, align 4
@S_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Frame interrupt in non-operational state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*, i32)* @cafe_frame_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_frame_complete(%struct.cafe_camera* %0, i32 %1) #0 {
  %3 = alloca %struct.cafe_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %7 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %6, i32 0, i32 8
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = call i64 (...) @printk_ratelimit()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (%struct.cafe_camera*, i8*, ...) @cam_err(%struct.cafe_camera* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %10, %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %20 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %19, i32 0, i32 8
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %23 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %24 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %23, i32 0, i32 8
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %27 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %33 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %17
  %35 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %36 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %40 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %39, i32 0, i32 7
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %38, i64* %44, align 8
  %45 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %46 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %81 [
    i32 130, label %48
    i32 129, label %56
    i32 128, label %77
  ]

48:                                               ; preds = %34
  %49 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %50 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %49, i32 0, i32 1
  store i32 129, i32* %50, align 4
  %51 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %52 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %51, i32 0, i32 5
  store i32 0, i32* %52, align 4
  %53 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %54 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %53, i32 0, i32 3
  %55 = call i32 @wake_up(i32* %54)
  br label %84

56:                                               ; preds = %34
  %57 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %58 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %62 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %67 = call i32 @cafe_ctlr_stop(%struct.cafe_camera* %66)
  %68 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %69 = call i32 @cafe_ctlr_irq_disable(%struct.cafe_camera* %68)
  %70 = load i32, i32* @S_IDLE, align 4
  %71 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %72 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %56
  %74 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %75 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %74, i32 0, i32 3
  %76 = call i32 @wake_up(i32* %75)
  br label %84

77:                                               ; preds = %34
  %78 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %79 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %78, i32 0, i32 2
  %80 = call i32 @tasklet_schedule(i32* %79)
  br label %84

81:                                               ; preds = %34
  %82 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %83 = call i32 (%struct.cafe_camera*, i8*, ...) @cam_err(%struct.cafe_camera* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %77, %73, %48
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cafe_ctlr_stop(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_irq_disable(%struct.cafe_camera*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

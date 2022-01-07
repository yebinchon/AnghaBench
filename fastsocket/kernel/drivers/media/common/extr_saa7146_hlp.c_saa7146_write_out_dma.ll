; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_write_out_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_write_out_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_video_dma = type { i32, i32, i32, i32, i32, i32 }

@MC2 = common dso_local global i32 0, align 4
@MASK_02 = common dso_local global i32 0, align 4
@MASK_18 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_write_out_dma(%struct.saa7146_dev* %0, i32 %1, %struct.saa7146_video_dma* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_video_dma*, align 8
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.saa7146_video_dma* %2, %struct.saa7146_video_dma** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %71

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %16, 24
  store i32 %17, i32* %7, align 4
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %6, align 8
  %21 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @saa7146_write(%struct.saa7146_dev* %18, i32 %19, i32 %22)
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 4
  %27 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %6, align 8
  %28 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @saa7146_write(%struct.saa7146_dev* %24, i32 %26, i32 %29)
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 8
  %34 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %6, align 8
  %35 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @saa7146_write(%struct.saa7146_dev* %31, i32 %33, i32 %36)
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 12
  %41 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %6, align 8
  %42 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @saa7146_write(%struct.saa7146_dev* %38, i32 %40, i32 %43)
  %45 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 16
  %48 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %6, align 8
  %49 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @saa7146_write(%struct.saa7146_dev* %45, i32 %47, i32 %50)
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 20
  %55 = load %struct.saa7146_video_dma*, %struct.saa7146_video_dma** %6, align 8
  %56 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @saa7146_write(%struct.saa7146_dev* %52, i32 %54, i32 %57)
  %59 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %60 = load i32, i32* @MC2, align 4
  %61 = load i32, i32* @MASK_02, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 %61, %63
  %65 = load i32, i32* @MASK_18, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 1
  %68 = shl i32 %65, %67
  %69 = or i32 %64, %68
  %70 = call i32 @saa7146_write(%struct.saa7146_dev* %59, i32 %60, i32 %69)
  br label %71

71:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

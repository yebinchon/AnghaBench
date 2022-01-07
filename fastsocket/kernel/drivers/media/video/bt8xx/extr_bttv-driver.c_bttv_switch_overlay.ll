; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_switch_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_switch_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, %struct.bttv_buffer* }
%struct.bttv_fh = type { i32 }
%struct.bttv_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"switch_overlay: enter [new=%p]\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"switch_overlay: old=%p state is %d\0A\00", align 1
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"switch_overlay: done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.bttv_fh*, %struct.bttv_buffer*)* @bttv_switch_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_switch_overlay(%struct.bttv* %0, %struct.bttv_fh* %1, %struct.bttv_buffer* %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.bttv_fh*, align 8
  %6 = alloca %struct.bttv_buffer*, align 8
  %7 = alloca %struct.bttv_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.bttv_fh* %1, %struct.bttv_fh** %5, align 8
  store %struct.bttv_buffer* %2, %struct.bttv_buffer** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %11 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.bttv_buffer* %10)
  %12 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %13 = icmp ne %struct.bttv_buffer* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @VIDEOBUF_DONE, align 4
  %16 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.bttv*, %struct.bttv** %4, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.bttv*, %struct.bttv** %4, align 8
  %25 = getelementptr inbounds %struct.bttv, %struct.bttv* %24, i32 0, i32 2
  %26 = load %struct.bttv_buffer*, %struct.bttv_buffer** %25, align 8
  store %struct.bttv_buffer* %26, %struct.bttv_buffer** %7, align 8
  %27 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %28 = load %struct.bttv*, %struct.bttv** %4, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 2
  store %struct.bttv_buffer* %27, %struct.bttv_buffer** %29, align 8
  %30 = load %struct.bttv*, %struct.bttv** %4, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.bttv*, %struct.bttv** %4, align 8
  %35 = call i32 @bttv_set_dma(%struct.bttv* %34, i32 3)
  %36 = load %struct.bttv*, %struct.bttv** %4, align 8
  %37 = getelementptr inbounds %struct.bttv, %struct.bttv* %36, i32 0, i32 1
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.bttv_buffer*, %struct.bttv_buffer** %7, align 8
  %41 = icmp ne %struct.bttv_buffer* null, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %19
  %43 = load %struct.bttv_buffer*, %struct.bttv_buffer** %7, align 8
  %44 = load %struct.bttv_buffer*, %struct.bttv_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.bttv_buffer* %43, i32 %47)
  %49 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %50 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %49, i32 0, i32 0
  %51 = load %struct.bttv*, %struct.bttv** %4, align 8
  %52 = load %struct.bttv_buffer*, %struct.bttv_buffer** %7, align 8
  %53 = call i32 @bttv_dma_free(i32* %50, %struct.bttv* %51, %struct.bttv_buffer* %52)
  %54 = load %struct.bttv_buffer*, %struct.bttv_buffer** %7, align 8
  %55 = call i32 @kfree(%struct.bttv_buffer* %54)
  br label %56

56:                                               ; preds = %42, %19
  %57 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  %58 = icmp eq %struct.bttv_buffer* null, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.bttv*, %struct.bttv** %4, align 8
  %61 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %62 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %63 = call i32 @free_btres_lock(%struct.bttv* %60, %struct.bttv_fh* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bttv_set_dma(%struct.bttv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bttv_dma_free(i32*, %struct.bttv*, %struct.bttv_buffer*) #1

declare dso_local i32 @kfree(%struct.bttv_buffer*) #1

declare dso_local i32 @free_btres_lock(%struct.bttv*, %struct.bttv_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

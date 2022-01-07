; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_buffer_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_buffer_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dmaqueue = type { i64, %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@SAA7134_REGION_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"timeout on %p\0A\00", align 1
@VIDEOBUF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_buffer_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.saa7134_dmaqueue*, align 8
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.saa7134_dmaqueue*
  store %struct.saa7134_dmaqueue* %7, %struct.saa7134_dmaqueue** %3, align 8
  %8 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %9 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %8, i32 0, i32 1
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  store %struct.saa7134_dev* %10, %struct.saa7134_dev** %4, align 8
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %12 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %16 = call i32 @saa_writeb(i32 %15, i32 0)
  %17 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %18 = call i32 @saa_writeb(i32 %17, i32 128)
  %19 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %20 = call i32 @saa_writeb(i32 %19, i32 0)
  %21 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %22 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %27 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %31 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %32 = load i32, i32* @VIDEOBUF_ERROR, align 4
  %33 = call i32 @saa7134_buffer_finish(%struct.saa7134_dev* %30, %struct.saa7134_dmaqueue* %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %36 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %37 = call i32 @saa7134_buffer_next(%struct.saa7134_dev* %35, %struct.saa7134_dmaqueue* %36)
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @saa7134_buffer_finish(%struct.saa7134_dev*, %struct.saa7134_dmaqueue*, i32) #1

declare dso_local i32 @saa7134_buffer_next(%struct.saa7134_dev*, %struct.saa7134_dmaqueue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

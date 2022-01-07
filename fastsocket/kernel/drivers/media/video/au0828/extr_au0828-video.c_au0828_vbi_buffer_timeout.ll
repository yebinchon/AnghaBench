; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_vbi_buffer_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_vbi_buffer_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32, %struct.TYPE_3__, %struct.au0828_dmaqueue }
%struct.TYPE_3__ = type { %struct.au0828_buffer* }
%struct.au0828_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.au0828_dmaqueue = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au0828_vbi_buffer_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca %struct.au0828_dmaqueue*, align 8
  %5 = alloca %struct.au0828_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.au0828_dev*
  store %struct.au0828_dev* %9, %struct.au0828_dev** %3, align 8
  %10 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %11 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %10, i32 0, i32 4
  store %struct.au0828_dmaqueue* %11, %struct.au0828_dmaqueue** %4, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %13 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %17 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.au0828_buffer*, %struct.au0828_buffer** %18, align 8
  store %struct.au0828_buffer* %19, %struct.au0828_buffer** %5, align 8
  %20 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %21 = icmp ne %struct.au0828_buffer* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %23, i32 0, i32 0
  %25 = call i8* @videobuf_to_vmalloc(%struct.TYPE_4__* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i8* %26, i32 0, i32 %30)
  %32 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %33 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %4, align 8
  %34 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %35 = call i32 @vbi_buffer_filled(%struct.au0828_dev* %32, %struct.au0828_dmaqueue* %33, %struct.au0828_buffer* %34)
  br label %36

36:                                               ; preds = %22, %1
  %37 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %4, align 8
  %38 = call i32 @vbi_get_next_buf(%struct.au0828_dmaqueue* %37, %struct.au0828_buffer** %5)
  %39 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %40 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %45 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %44, i32 0, i32 2
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i32, i32* @HZ, align 4
  %48 = sdiv i32 %47, 10
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @mod_timer(i32* %45, i64 %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %54 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @videobuf_to_vmalloc(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vbi_buffer_filled(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*) #1

declare dso_local i32 @vbi_get_next_buf(%struct.au0828_dmaqueue*, %struct.au0828_buffer**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_get_curr_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_get_curr_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @v4l2_m2m_get_curr_priv(%struct.v4l2_m2m_dev* %0) #0 {
  %2 = alloca %struct.v4l2_m2m_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.v4l2_m2m_dev* %0, %struct.v4l2_m2m_dev** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %2, align 8
  %6 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i8*, i8** %4, align 8
  ret i8* %24
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

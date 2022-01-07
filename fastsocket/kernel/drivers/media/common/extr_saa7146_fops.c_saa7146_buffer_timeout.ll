; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_buffer_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_buffer_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dmaqueue = type { i64, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"dev:%p, dmaq:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"timeout on %p\0A\00", align 1
@VIDEOBUF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_buffer_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.saa7146_dmaqueue*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.saa7146_dmaqueue*
  store %struct.saa7146_dmaqueue* %7, %struct.saa7146_dmaqueue** %3, align 8
  %8 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %8, i32 0, i32 1
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %12 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %3, align 8
  %13 = bitcast %struct.saa7146_dmaqueue* %12 to i8*
  %14 = call i32 @DEB_EE(i8* %13)
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %3, align 8
  %20 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %3, align 8
  %25 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DEB_D(i8* %27)
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %30 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %3, align 8
  %31 = load i32, i32* @VIDEOBUF_ERROR, align 4
  %32 = call i32 @saa7146_buffer_finish(%struct.saa7146_dev* %29, %struct.saa7146_dmaqueue* %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %35 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_buffer_finish(%struct.saa7146_dev*, %struct.saa7146_dmaqueue*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

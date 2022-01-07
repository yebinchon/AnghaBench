; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { i32, i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_fh*, %struct.file*)* @vbi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_stop(%struct.saa7146_fh* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  %7 = alloca i64, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %8, i32 0, i32 2
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %5, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 1
  %13 = load %struct.saa7146_vv*, %struct.saa7146_vv** %12, align 8
  store %struct.saa7146_vv* %13, %struct.saa7146_vv** %6, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %15 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %16 = bitcast %struct.saa7146_fh* %15 to i8*
  %17 = call i32 @DEB_VBI(i8* %16)
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %23 = load i32, i32* @MC1, align 4
  %24 = load i32, i32* @MASK_29, align 4
  %25 = call i32 @saa7146_write(%struct.saa7146_dev* %22, i32 %23, i32 %24)
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %27 = load i32, i32* @MASK_28, align 4
  %28 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %26, i32 %27)
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %30 = load i32, i32* @MC1, align 4
  %31 = load i32, i32* @MASK_20, align 4
  %32 = call i32 @saa7146_write(%struct.saa7146_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %34 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %40 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %41 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %40, i32 0, i32 0
  %42 = load i32, i32* @VIDEOBUF_DONE, align 4
  %43 = call i32 @saa7146_buffer_finish(%struct.saa7146_dev* %39, %struct.TYPE_2__* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %2
  %45 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %46 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %45, i32 0, i32 1
  %47 = call i32 @videobuf_queue_cancel(i32* %46)
  %48 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %49 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %51 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @del_timer(i32* %52)
  %54 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %55 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %54, i32 0, i32 0
  %56 = call i32 @del_timer(i32* %55)
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %58 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_buffer_finish(%struct.saa7146_dev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @videobuf_queue_cancel(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

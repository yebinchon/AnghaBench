; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_dmaqueue = type { i32, %struct.saa7146_buf* }
%struct.saa7146_buf = type { %struct.TYPE_2__, i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, i32*)* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"dev:%p, dmaq:%p, buf:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"immediately activating buffer %p\0A\00", align 1
@VIDEOBUF_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"adding buffer %p to queue. (active buffer present)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_buffer_queue(%struct.saa7146_dev* %0, %struct.saa7146_dmaqueue* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_dmaqueue*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_dmaqueue* %1, %struct.saa7146_dmaqueue** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %12 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %13 = bitcast %struct.saa7146_buf* %12 to i8*
  %14 = call i32 @DEB_EE(i8* %13)
  %15 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %16 = icmp ne %struct.saa7146_dmaqueue* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %21 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %20, i32 0, i32 1
  %22 = load %struct.saa7146_buf*, %struct.saa7146_buf** %21, align 8
  %23 = icmp eq %struct.saa7146_buf* null, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %26 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %27 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %26, i32 0, i32 1
  store %struct.saa7146_buf* %25, %struct.saa7146_buf** %27, align 8
  %28 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %29 = bitcast %struct.saa7146_buf* %28 to i8*
  %30 = call i32 @DEB_D(i8* %29)
  %31 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %32 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %31, i32 0, i32 1
  %33 = load i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, i32*)*, i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, i32*)** %32, align 8
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %35 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %36 = call i32 %33(%struct.saa7146_dev* %34, %struct.saa7146_buf* %35, i32* null)
  br label %51

37:                                               ; preds = %3
  %38 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %39 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %42 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load i32, i32* @VIDEOBUF_QUEUED, align 4
  %45 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %46 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %49 = bitcast %struct.saa7146_buf* %48 to i8*
  %50 = call i32 @DEB_D(i8* %49)
  br label %51

51:                                               ; preds = %37, %24
  ret i32 0
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

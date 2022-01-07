; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_irq_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_irq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"dev:%p, curr:%p\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i64)* @vbi_irq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_irq_done(%struct.saa7146_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %6, i32 0, i32 1
  %8 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  store %struct.saa7146_vv* %8, %struct.saa7146_vv** %5, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %13 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %20 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = bitcast %struct.TYPE_6__* %22 to i8*
  %24 = call i32 @DEB_VBI(i8* %23)
  %25 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %26 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %26, align 8
  %29 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %30 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %39 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %40 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %39, i32 0, i32 1
  %41 = load i32, i32* @VIDEOBUF_DONE, align 4
  %42 = call i32 @saa7146_buffer_finish(%struct.saa7146_dev* %38, %struct.TYPE_7__* %40, i32 %41)
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %45 = bitcast %struct.saa7146_dev* %44 to i8*
  %46 = call i32 @DEB_VBI(i8* %45)
  br label %47

47:                                               ; preds = %43, %17
  %48 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %49 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %50 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %49, i32 0, i32 1
  %51 = call i32 @saa7146_buffer_next(%struct.saa7146_dev* %48, %struct.TYPE_7__* %50, i32 1)
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %53 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32 @saa7146_buffer_finish(%struct.saa7146_dev*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @saa7146_buffer_next(%struct.saa7146_dev*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

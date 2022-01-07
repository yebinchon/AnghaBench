; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_trigger_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_trigger_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@LHREQ_IRQ = common dso_local global i64 0, align 8
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4
@lguest_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Triggering irq %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @trigger_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_irq(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca [2 x i64], align 16
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %5 = load i64, i64* @LHREQ_IRQ, align 8
  store i64 %5, i64* %4, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 1
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %12 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %20 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %16
  %29 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %30 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %37 = call i64 @lg_last_avail(%struct.virtqueue* %36)
  %38 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %39 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35, %28
  br label %58

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* @lguest_fd, align 4
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %50 = call i64 @write(i32 %48, i64* %49, i32 16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %54 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %15, %45, %52, %47
  ret void
}

declare dso_local i64 @lg_last_avail(%struct.virtqueue*) #1

declare dso_local i64 @write(i32, i64*, i32) #1

declare dso_local i32 @err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

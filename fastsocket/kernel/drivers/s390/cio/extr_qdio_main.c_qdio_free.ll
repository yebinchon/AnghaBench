; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qdio_irq*, %struct.TYPE_3__ }
%struct.qdio_irq = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"qfree:%4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_free(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.qdio_irq*, %struct.qdio_irq** %8, align 8
  store %struct.qdio_irq* %9, %struct.qdio_irq** %4, align 8
  %10 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %11 = icmp ne %struct.qdio_irq* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %24 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %27 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %32 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @debug_unregister(i32* %33)
  %35 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %36 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %15
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.qdio_irq* null, %struct.qdio_irq** %41, align 8
  %42 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %43 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %46 = call i32 @qdio_release_memory(%struct.qdio_irq* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %37, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @debug_unregister(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qdio_release_memory(%struct.qdio_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

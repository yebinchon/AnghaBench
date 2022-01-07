; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_retry_set_schib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_retry_set_schib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.set_schib_struct* }
%struct.set_schib_struct = type { i32, i32, i32, i32, i32, i32 }

@cmf_set_schib_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retry_set_schib(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.set_schib_struct*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.set_schib_struct*, %struct.set_schib_struct** %7, align 8
  store %struct.set_schib_struct* %8, %struct.set_schib_struct** %3, align 8
  %9 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %10 = icmp ne %struct.set_schib_struct* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @WARN_ON(i32 1)
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %15 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %14, i32 0, i32 0
  %16 = call i32 @kref_get(i32* %15)
  %17 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %18 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %19 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %22 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %25 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_schib(%struct.ccw_device* %17, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %29 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %31 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %30, i32 0, i32 1
  %32 = call i32 @wake_up(i32* %31)
  %33 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %34 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %33, i32 0, i32 0
  %35 = load i32, i32* @cmf_set_schib_release, align 4
  %36 = call i32 @kref_put(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @set_schib(%struct.ccw_device*, i32, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_empty_framequeues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_empty_framequeues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@ET61X251_MAX_FRAMES = common dso_local global i64 0, align 8
@F_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et61x251_device*)* @et61x251_empty_framequeues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et61x251_empty_framequeues(%struct.et61x251_device* %0) #0 {
  %2 = alloca %struct.et61x251_device*, align 8
  %3 = alloca i64, align 8
  store %struct.et61x251_device* %0, %struct.et61x251_device** %2, align 8
  %4 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %5 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %4, i32 0, i32 2
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %8 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ET61X251_MAX_FRAMES, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, i32* @F_UNUSED, align 4
  %16 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %17 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %15, i32* %21, align 8
  %22 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %23 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %14
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %10

32:                                               ; preds = %10
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

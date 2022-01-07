; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_add_virtqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_add_virtqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.device = type { %struct.virtqueue*, %struct.TYPE_4__*, i32 }
%struct.virtqueue = type { void (%struct.virtqueue*)*, %struct.virtqueue*, %struct.TYPE_5__, i32, i64, %struct.device*, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@LGUEST_VRING_ALIGN = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"Virtqueue page %#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, void (%struct.virtqueue*)*)* @add_virtqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_virtqueue(%struct.device* %0, i32 %1, void (%struct.virtqueue*)* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.virtqueue*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtqueue**, align 8
  %9 = alloca %struct.virtqueue*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %6, align 8
  %11 = call %struct.virtqueue* @malloc(i32 64)
  store %struct.virtqueue* %11, %struct.virtqueue** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LGUEST_VRING_ALIGN, align 4
  %14 = call i32 @vring_size(i32 %12, i32 %13)
  %15 = call i32 (...) @getpagesize()
  %16 = add nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = call i32 (...) @getpagesize()
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @get_pages(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %23 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %22, i32 0, i32 1
  store %struct.virtqueue* null, %struct.virtqueue** %23, align 8
  %24 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %25 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %28 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %27, i32 0, i32 5
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %6, align 8
  %30 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %31 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %30, i32 0, i32 0
  store void (%struct.virtqueue*)* %29, void (%struct.virtqueue*)** %31, align 8
  %32 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %33 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %32, i32 0, i32 4
  store i64 -1, i64* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %36 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @devices, i32 0, i32 0), align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @devices, i32 0, i32 0), align 4
  %40 = sext i32 %38 to i64
  %41 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %42 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @to_guest_phys(i8* %44)
  %46 = call i32 (...) @getpagesize()
  %47 = sdiv i32 %45, %46
  %48 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %49 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %52 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %51, i32 0, i32 3
  %53 = load i32, i32* %5, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @LGUEST_VRING_ALIGN, align 4
  %56 = call i32 @vring_init(i32* %52, i32 %53, i8* %54, i32 %55)
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %3
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br label %70

70:                                               ; preds = %63, %3
  %71 = phi i1 [ false, %3 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @device_config(%struct.device* %74)
  %76 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %77 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %76, i32 0, i32 2
  %78 = call i32 @memcpy(i32 %75, %struct.TYPE_5__* %77, i32 16)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @to_guest_phys(i8* %89)
  %91 = call i32 @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  store %struct.virtqueue** %93, %struct.virtqueue*** %8, align 8
  br label %94

94:                                               ; preds = %99, %70
  %95 = load %struct.virtqueue**, %struct.virtqueue*** %8, align 8
  %96 = load %struct.virtqueue*, %struct.virtqueue** %95, align 8
  %97 = icmp ne %struct.virtqueue* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.virtqueue**, %struct.virtqueue*** %8, align 8
  %101 = load %struct.virtqueue*, %struct.virtqueue** %100, align 8
  %102 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %101, i32 0, i32 1
  store %struct.virtqueue** %102, %struct.virtqueue*** %8, align 8
  br label %94

103:                                              ; preds = %94
  %104 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %105 = load %struct.virtqueue**, %struct.virtqueue*** %8, align 8
  store %struct.virtqueue* %104, %struct.virtqueue** %105, align 8
  ret void
}

declare dso_local %struct.virtqueue* @malloc(i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i8* @get_pages(i32) #1

declare dso_local i32 @to_guest_phys(i8*) #1

declare dso_local i32 @vring_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @device_config(%struct.device*) #1

declare dso_local i32 @verbose(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.c___vxge_hw_channel_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.c___vxge_hw_channel_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_channel = type { i64, i32, i32*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.__vxge_hw_virtualpath* }
%struct.__vxge_hw_virtualpath = type { %struct.__vxge_hw_ring*, %struct.__vxge_hw_fifo* }
%struct.__vxge_hw_ring = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.__vxge_hw_fifo = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vxge_hw_channel_initialize(%struct.__vxge_hw_channel* %0) #0 {
  %2 = alloca %struct.__vxge_hw_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.__vxge_hw_virtualpath*, align 8
  store %struct.__vxge_hw_channel* %0, %struct.__vxge_hw_channel** %2, align 8
  %5 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %6 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %5, i32 0, i32 5
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %8, align 8
  store %struct.__vxge_hw_virtualpath* %9, %struct.__vxge_hw_virtualpath** %4, align 8
  %10 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %16 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %28 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %34 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %14, %1
  %43 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %44 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %70 [
    i32 129, label %46
    i32 128, label %58
  ]

46:                                               ; preds = %42
  %47 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %48 = bitcast %struct.__vxge_hw_channel* %47 to %struct.__vxge_hw_fifo*
  %49 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %4, align 8
  %50 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %49, i32 0, i32 1
  store %struct.__vxge_hw_fifo* %48, %struct.__vxge_hw_fifo** %50, align 8
  %51 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %52 = bitcast %struct.__vxge_hw_channel* %51 to %struct.__vxge_hw_fifo*
  %53 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %57 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  br label %71

58:                                               ; preds = %42
  %59 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %60 = bitcast %struct.__vxge_hw_channel* %59 to %struct.__vxge_hw_ring*
  %61 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %4, align 8
  %62 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %61, i32 0, i32 0
  store %struct.__vxge_hw_ring* %60, %struct.__vxge_hw_ring** %62, align 8
  %63 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %64 = bitcast %struct.__vxge_hw_channel* %63 to %struct.__vxge_hw_ring*
  %65 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %69 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  br label %71

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %58, %46
  %72 = load i32, i32* @VXGE_HW_OK, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

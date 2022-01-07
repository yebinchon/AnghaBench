; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, %struct.pvr2_hdw*, %struct.pvr2_hdw*, %struct.pvr2_hdw*, %struct.pvr2_hdw*, i32, i32*, %struct.pvr2_hdw*, i32, i32, i32, i32, i32* }

@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pvr2_hdw_destroy: hdw=%p\00", align 1
@pvr2_unit_mtx = common dso_local global i32 0, align 4
@PVR_NUM = common dso_local global i64 0, align 8
@unit_pointers = common dso_local global %struct.pvr2_hdw** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_destroy(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %3 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %4 = icmp ne %struct.pvr2_hdw* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %117

6:                                                ; preds = %1
  %7 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %9 = call i32 @pvr2_trace(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pvr2_hdw* %8)
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 12
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 12
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @flush_workqueue(i32* %17)
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 12
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @destroy_workqueue(i32* %21)
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 12
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %14, %6
  %26 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %27 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %26, i32 0, i32 11
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 10
  %31 = call i32 @del_timer_sync(i32* %30)
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %33 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %32, i32 0, i32 9
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %36 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %35, i32 0, i32 8
  %37 = call i32 @del_timer_sync(i32* %36)
  %38 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %39 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %38, i32 0, i32 7
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %39, align 8
  %41 = icmp ne %struct.pvr2_hdw* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 7
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %44, align 8
  %46 = call i32 @kfree(%struct.pvr2_hdw* %45)
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 7
  store %struct.pvr2_hdw* null, %struct.pvr2_hdw** %48, align 8
  br label %49

49:                                               ; preds = %42, %25
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @pvr2_stream_destroy(i32* %57)
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %60 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %59, i32 0, i32 6
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %63 = call i32 @pvr2_i2c_core_done(%struct.pvr2_hdw* %62)
  %64 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %65 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %64, i32 0, i32 5
  %66 = call i32 @v4l2_device_unregister(i32* %65)
  %67 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %68 = call i32 @pvr2_hdw_remove_usb_stuff(%struct.pvr2_hdw* %67)
  %69 = call i32 @mutex_lock(i32* @pvr2_unit_mtx)
  br label %70

70:                                               ; preds = %61
  %71 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %72 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %77 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PVR_NUM, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.pvr2_hdw**, %struct.pvr2_hdw*** @unit_pointers, align 8
  %83 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %84 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.pvr2_hdw*, %struct.pvr2_hdw** %82, i64 %85
  %87 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %86, align 8
  %88 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %89 = icmp eq %struct.pvr2_hdw* %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.pvr2_hdw**, %struct.pvr2_hdw*** @unit_pointers, align 8
  %92 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %93 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.pvr2_hdw*, %struct.pvr2_hdw** %91, i64 %94
  store %struct.pvr2_hdw* null, %struct.pvr2_hdw** %95, align 8
  br label %96

96:                                               ; preds = %90, %81, %75, %70
  br label %97

97:                                               ; preds = %96
  %98 = call i32 @mutex_unlock(i32* @pvr2_unit_mtx)
  %99 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %100 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %99, i32 0, i32 4
  %101 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %100, align 8
  %102 = call i32 @kfree(%struct.pvr2_hdw* %101)
  %103 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %104 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %103, i32 0, i32 3
  %105 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %104, align 8
  %106 = call i32 @kfree(%struct.pvr2_hdw* %105)
  %107 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %108 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %107, i32 0, i32 2
  %109 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %108, align 8
  %110 = call i32 @kfree(%struct.pvr2_hdw* %109)
  %111 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %112 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %111, i32 0, i32 1
  %113 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %112, align 8
  %114 = call i32 @kfree(%struct.pvr2_hdw* %113)
  %115 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %116 = call i32 @kfree(%struct.pvr2_hdw* %115)
  br label %117

117:                                              ; preds = %97, %5
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_hdw*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_stream_destroy(i32*) #1

declare dso_local i32 @pvr2_i2c_core_done(%struct.pvr2_hdw*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pvr2_hdw_remove_usb_stuff(%struct.pvr2_hdw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

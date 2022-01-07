; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i8*, i32, i32, i32*, %struct.ccw_device* }
%struct.ccw_device = type { i32, i32 }

@raw3215 = common dso_local global %struct.raw3215_info** null, align 8
@RAW3215_INBUF_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@raw3215_device_lock = common dso_local global i32 0, align 4
@NR_3215 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RAW3215_BUFFER_SIZE = common dso_local global i64 0, align 8
@raw3215_wakeup = common dso_local global i32 0, align 4
@raw3215_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @raw3215_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3215_probe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.raw3215_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %7 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %6, i64 0
  %8 = load %struct.raw3215_info*, %struct.raw3215_info** %7, align 8
  %9 = icmp ne %struct.raw3215_info* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %12 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %11, i64 0
  %13 = load %struct.raw3215_info*, %struct.raw3215_info** %12, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 1
  %16 = call %struct.raw3215_info* @dev_get_drvdata(i32* %15)
  %17 = icmp eq %struct.raw3215_info* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %116

19:                                               ; preds = %10, %1
  %20 = load i64, i64* @RAW3215_INBUF_SIZE, align 8
  %21 = add i64 32, %20
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @GFP_DMA, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @kmalloc(i64 %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.raw3215_info*
  store %struct.raw3215_info* %26, %struct.raw3215_info** %4, align 8
  %27 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %28 = icmp eq %struct.raw3215_info* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %116

32:                                               ; preds = %19
  %33 = call i32 @spin_lock(i32* @raw3215_device_lock)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %52, %32
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NR_3215, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %39, i64 %41
  %43 = load %struct.raw3215_info*, %struct.raw3215_info** %42, align 8
  %44 = icmp ne %struct.raw3215_info* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %47 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %47, i64 %49
  store %struct.raw3215_info* %46, %struct.raw3215_info** %50, align 8
  br label %55

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %34

55:                                               ; preds = %45, %34
  %56 = call i32 @spin_unlock(i32* @raw3215_device_lock)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @NR_3215, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %62 = call i32 @kfree(%struct.raw3215_info* %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %116

65:                                               ; preds = %55
  %66 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %67 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %68 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %67, i32 0, i32 4
  store %struct.ccw_device* %66, %struct.ccw_device** %68, align 8
  %69 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %70 = bitcast %struct.raw3215_info* %69 to i8*
  %71 = getelementptr inbounds i8, i8* %70, i64 32
  %72 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %73 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %75 = call i32 @memset(%struct.raw3215_info* %74, i32 0, i32 32)
  %76 = load i64, i64* @RAW3215_BUFFER_SIZE, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = load i32, i32* @GFP_DMA, align 4
  %79 = or i32 %77, %78
  %80 = call i8* @kmalloc(i64 %76, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %83 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %85 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %65
  %89 = call i32 @spin_lock(i32* @raw3215_device_lock)
  %90 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %90, i64 %92
  store %struct.raw3215_info* null, %struct.raw3215_info** %93, align 8
  %94 = call i32 @spin_unlock(i32* @raw3215_device_lock)
  %95 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %96 = call i32 @kfree(%struct.raw3215_info* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %116

99:                                               ; preds = %65
  %100 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %101 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %100, i32 0, i32 2
  %102 = call i32 @init_waitqueue_head(i32* %101)
  %103 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %104 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %103, i32 0, i32 1
  %105 = load i32, i32* @raw3215_wakeup, align 4
  %106 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %107 = ptrtoint %struct.raw3215_info* %106 to i64
  %108 = call i32 @tasklet_init(i32* %104, i32 %105, i64 %107)
  %109 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %110 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %109, i32 0, i32 1
  %111 = load %struct.raw3215_info*, %struct.raw3215_info** %4, align 8
  %112 = call i32 @dev_set_drvdata(i32* %110, %struct.raw3215_info* %111)
  %113 = load i32, i32* @raw3215_irq, align 4
  %114 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %115 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %99, %88, %60, %29, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.raw3215_info* @dev_get_drvdata(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.raw3215_info*) #1

declare dso_local i32 @memset(%struct.raw3215_info*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.raw3215_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

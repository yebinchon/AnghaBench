; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_set_schib_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_set_schib_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.set_schib_struct*, i32 }
%struct.set_schib_struct = type { i32, i64, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@DEV_STATE_CMFCHANGE = common dso_local global i64 0, align 8
@CMF_PENDING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@cmf_set_schib_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, i32, i64)* @set_schib_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_schib_wait(%struct.ccw_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.set_schib_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @spin_lock_irq(i32 %13)
  %15 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  br label %149

24:                                               ; preds = %4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.set_schib_struct* @kzalloc(i32 32, i32 %25)
  store %struct.set_schib_struct* %26, %struct.set_schib_struct** %9, align 8
  %27 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %28 = icmp ne %struct.set_schib_struct* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %149

32:                                               ; preds = %24
  %33 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %34 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %33, i32 0, i32 4
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %37 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %36, i32 0, i32 3
  %38 = call i32 @kref_init(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %41 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %44 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %47 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @set_schib(%struct.ccw_device* %48, i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %32
  br label %144

58:                                               ; preds = %32
  %59 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %60 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %144

69:                                               ; preds = %58
  %70 = load i64, i64* @DEV_STATE_CMFCHANGE, align 8
  %71 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* @CMF_PENDING, align 4
  %76 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %77 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %79 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %80 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store %struct.set_schib_struct* %78, %struct.set_schib_struct** %82, align 8
  %83 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %84 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @spin_unlock_irq(i32 %85)
  %87 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %88 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %91 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CMF_PENDING, align 4
  %94 = icmp ne i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @wait_event_interruptible(i32 %89, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %69
  %99 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %100 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @spin_lock_irq(i32 %101)
  %103 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %104 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CMF_PENDING, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %98
  %109 = load i32, i32* @ERESTARTSYS, align 4
  %110 = sub nsw i32 0, %109
  %111 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %112 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %114 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DEV_STATE_CMFCHANGE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %122 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %123 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %108
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %129 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @spin_unlock_irq(i32 %130)
  br label %132

132:                                              ; preds = %127, %69
  %133 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %134 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @spin_lock_irq(i32 %135)
  %137 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %138 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store %struct.set_schib_struct* null, %struct.set_schib_struct** %140, align 8
  %141 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %142 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %132, %66, %57
  %145 = load %struct.set_schib_struct*, %struct.set_schib_struct** %9, align 8
  %146 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %145, i32 0, i32 3
  %147 = load i32, i32* @cmf_set_schib_release, align 4
  %148 = call i32 @kref_put(i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %29, %21
  %150 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %151 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @spin_unlock_irq(i32 %152)
  %154 = load i32, i32* %10, align 4
  ret i32 %154
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.set_schib_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @set_schib(%struct.ccw_device*, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

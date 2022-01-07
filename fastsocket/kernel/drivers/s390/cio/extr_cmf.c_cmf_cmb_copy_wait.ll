; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmf_cmb_copy_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmf_cmb_copy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.copy_block_struct*, i32 }
%struct.copy_block_struct = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@DEV_STATE_CMFUPDATE = common dso_local global i64 0, align 8
@CMF_PENDING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@cmf_copy_block_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @cmf_cmb_copy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmf_cmb_copy_wait(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.copy_block_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32 %8, i64 %9)
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %137

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.copy_block_struct* @kzalloc(i32 12, i32 %21)
  store %struct.copy_block_struct* %22, %struct.copy_block_struct** %3, align 8
  %23 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %24 = icmp ne %struct.copy_block_struct* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %137

28:                                               ; preds = %20
  %29 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %30 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %29, i32 0, i32 2
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %33 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %32, i32 0, i32 1
  %34 = call i32 @kref_init(i32* %33)
  %35 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %36 = call i32 @cmf_copy_block(%struct.ccw_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %132

42:                                               ; preds = %28
  %43 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %132

53:                                               ; preds = %42
  %54 = load i64, i64* @DEV_STATE_CMFUPDATE, align 8
  %55 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %56 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load i32, i32* @CMF_PENDING, align 4
  %60 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %61 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %63 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store %struct.copy_block_struct* %62, %struct.copy_block_struct** %66, align 8
  %67 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %68 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32 %69, i64 %70)
  %72 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %73 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %76 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CMF_PENDING, align 4
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @wait_event_interruptible(i32 %74, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %53
  %84 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %85 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_lock_irqsave(i32 %86, i64 %87)
  %89 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %90 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CMF_PENDING, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %83
  %95 = load i32, i32* @ERESTARTSYS, align 4
  %96 = sub nsw i32 0, %95
  %97 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %98 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %100 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DEV_STATE_CMFUPDATE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %108 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %109 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %94
  br label %113

113:                                              ; preds = %112, %83
  %114 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %115 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32 %116, i64 %117)
  br label %119

119:                                              ; preds = %113, %53
  %120 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %121 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @spin_lock_irqsave(i32 %122, i64 %123)
  %125 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %126 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store %struct.copy_block_struct* null, %struct.copy_block_struct** %128, align 8
  %129 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %130 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %119, %50, %41
  %133 = load %struct.copy_block_struct*, %struct.copy_block_struct** %3, align 8
  %134 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %133, i32 0, i32 1
  %135 = load i32, i32* @cmf_copy_block_release, align 4
  %136 = call i32 @kref_put(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %25, %17
  %138 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %139 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32 %140, i64 %141)
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.copy_block_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @cmf_copy_block(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

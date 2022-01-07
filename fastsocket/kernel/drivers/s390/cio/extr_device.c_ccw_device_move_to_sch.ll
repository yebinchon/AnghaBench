; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_device_move_to_sch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_device_move_to_sch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DPM_ORDER_PARENT_BEFORE_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"device_move(0.%x.%04x,0.%x.%04x)=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, %struct.subchannel*)* @ccw_device_move_to_sch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_move_to_sch(%struct.ccw_device* %0, %struct.subchannel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.subchannel* %1, %struct.subchannel** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.subchannel* @to_subchannel(i32 %12)
  store %struct.subchannel* %13, %struct.subchannel** %6, align 8
  %14 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %15 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %14, i32 0, i32 2
  %16 = call i32 @get_device(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %175

21:                                               ; preds = %2
  %22 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %23 = call i32 @sch_is_pseudo_sch(%struct.subchannel* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %21
  %26 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spin_lock_irq(i32 %28)
  %30 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %39 = call i32 @cio_disable_subchannel(%struct.subchannel* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %42 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @spin_unlock_irq(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %51 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %50, i32 0, i32 2
  %52 = call i32 @put_device(i32* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %175

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %57 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %56, i32 0, i32 4
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %60 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %59, i32 0, i32 2
  %61 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %62 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %61, i32 0, i32 2
  %63 = load i32, i32* @DPM_ORDER_PARENT_BEFORE_DEV, align 4
  %64 = call i32 @device_move(%struct.TYPE_11__* %60, i32* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %66 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %65, i32 0, i32 4
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %55
  %71 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %78 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %84 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %88 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %82, i32 %86, i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %70
  %97 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %98 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @spin_lock_irq(i32 %99)
  %101 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %102 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %103 = ptrtoint %struct.subchannel* %102 to i64
  %104 = trunc i64 %103 to i32
  %105 = call i32 @cio_enable_subchannel(%struct.subchannel* %101, i32 %104)
  %106 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %107 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @spin_unlock_irq(i32 %108)
  br label %110

110:                                              ; preds = %96, %70
  %111 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %112 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %111, i32 0, i32 2
  %113 = call i32 @put_device(i32* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %175

115:                                              ; preds = %55
  %116 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %117 = call i32 @sch_is_pseudo_sch(%struct.subchannel* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %115
  %120 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %121 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @spin_lock_irq(i32 %122)
  %124 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %125 = call i32 @sch_set_cdev(%struct.subchannel* %124, %struct.ccw_device* null)
  %126 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %127 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @spin_unlock_irq(i32 %128)
  %130 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %131 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @css_schedule_eval(i32 %133)
  br label %135

135:                                              ; preds = %119, %115
  %136 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %137 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %136, i32 0, i32 2
  %138 = call i32 @put_device(i32* %137)
  %139 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %140 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @spin_lock_irq(i32 %141)
  %143 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %144 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %148 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %147, i32 0, i32 1
  %149 = bitcast %struct.TYPE_12__* %146 to i8*
  %150 = bitcast %struct.TYPE_12__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %152 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %155 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %157 = call i32 @sch_is_pseudo_sch(%struct.subchannel* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %135
  %160 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %161 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %162 = call i32 @sch_set_cdev(%struct.subchannel* %160, %struct.ccw_device* %161)
  br label %163

163:                                              ; preds = %159, %135
  %164 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %165 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @spin_unlock_irq(i32 %166)
  %168 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %169 = call i32 @sch_is_pseudo_sch(%struct.subchannel* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %163
  %172 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %173 = call i32 @css_update_ssd_info(%struct.subchannel* %172)
  br label %174

174:                                              ; preds = %171, %163
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %110, %49, %18
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @sch_is_pseudo_sch(%struct.subchannel*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_move(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @sch_set_cdev(%struct.subchannel*, %struct.ccw_device*) #1

declare dso_local i32 @css_schedule_eval(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @css_update_ssd_info(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_known_to_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_known_to_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, {}* }

@DASD_STATE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_known_to_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_known_to_new(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = call i32 @dasd_eer_disable(%struct.dasd_device* %3)
  %5 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = bitcast {}** %13 to i32 (%struct.dasd_device*)**
  %15 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %14, align 8
  %16 = icmp ne i32 (%struct.dasd_device*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = bitcast {}** %21 to i32 (%struct.dasd_device*)**
  %23 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %22, align 8
  %24 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %25 = call i32 %23(%struct.dasd_device* %24)
  br label %26

26:                                               ; preds = %17, %9
  %27 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @module_put(i32 %31)
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %42 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @module_put(i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %49, align 8
  %50 = load i32, i32* @DASD_STATE_NEW, align 4
  %51 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %59 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dasd_free_queue(i64 %60)
  br label %62

62:                                               ; preds = %57, %47
  %63 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %64 = call i32 @dasd_put_device(%struct.dasd_device* %63)
  ret i32 0
}

declare dso_local i32 @dasd_eer_disable(%struct.dasd_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dasd_free_queue(i64) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

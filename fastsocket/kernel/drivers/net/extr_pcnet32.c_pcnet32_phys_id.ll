; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, %struct.TYPE_4__, %struct.pcnet32_access }
%struct.TYPE_4__ = type { i64, i8* }
%struct.pcnet32_access = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@pcnet32_led_blink_callback = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pcnet32_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca %struct.pcnet32_access*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %11)
  store %struct.pcnet32_private* %12, %struct.pcnet32_private** %5, align 8
  %13 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %14 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %13, i32 0, i32 2
  store %struct.pcnet32_access* %14, %struct.pcnet32_access** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %19 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %25 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %24, i32 0, i32 1
  %26 = call i32 @init_timer(%struct.TYPE_4__* %25)
  %27 = load i64, i64* @pcnet32_led_blink_callback, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %30 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = ptrtoint %struct.net_device* %32 to i64
  %34 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %35 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  br label %37

37:                                               ; preds = %23, %2
  %38 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %39 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  store i32 4, i32* %9, align 4
  br label %42

42:                                               ; preds = %56, %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.pcnet32_access*, %struct.pcnet32_access** %6, align 8
  %47 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %48(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %61 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %65 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %64, i32 0, i32 1
  %66 = load i32, i32* @jiffies, align 4
  %67 = call i32 @mod_timer(%struct.TYPE_4__* %65, i32 %66)
  %68 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %69 = call i32 @set_current_state(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = sdiv i32 %74, %75
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %59
  %79 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %80 = load i32, i32* @HZ, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %4, align 4
  %84 = mul nsw i32 %83, 1000
  %85 = call i32 @msleep_interruptible(i32 %84)
  %86 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %87 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %86, i32 0, i32 1
  %88 = call i32 @del_timer_sync(%struct.TYPE_4__* %87)
  %89 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %90 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %89, i32 0, i32 0
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  store i32 4, i32* %9, align 4
  br label %93

93:                                               ; preds = %108, %82
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.pcnet32_access*, %struct.pcnet32_access** %6, align 8
  %98 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %97, i32 0, i32 1
  %99 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %99(i32 %100, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %93

111:                                              ; preds = %93
  %112 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %113 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %112, i32 0, i32 0
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  ret i32 0
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_work_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_work_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.work_struct = type { i32 }

@led_work_func.last_jiffies = internal global i64 0, align 8
@led_work_func.count_HZ = internal global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@led_heartbeat = common dso_local global i32 0, align 4
@HEARTBEAT_LEN = common dso_local global i64 0, align 8
@HEARTBEAT_2ND_RANGE_START = common dso_local global i64 0, align 8
@HEARTBEAT_2ND_RANGE_END = common dso_local global i64 0, align 8
@LED_HEARTBEAT = common dso_local global i8 0, align 1
@led_lanrxtx = common dso_local global i32 0, align 4
@led_diskio = common dso_local global i32 0, align 4
@oops_in_progress = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcxl2 = common dso_local global i64 0, align 8
@LED4 = common dso_local global i8 0, align 1
@LED5 = common dso_local global i8 0, align 1
@LED6 = common dso_local global i8 0, align 1
@LED7 = common dso_local global i8 0, align 1
@lastleds = common dso_local global i8 0, align 1
@led_wq = common dso_local global i32 0, align 4
@led_task = common dso_local global i32 0, align 4
@LED_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @led_work_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_work_func(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i8, align 1
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i8 0, i8* %3, align 1
  %4 = load i64, i64* @jiffies, align 8
  %5 = load i64, i64* @led_work_func.last_jiffies, align 8
  %6 = sub i64 %4, %5
  %7 = load i64, i64* @led_work_func.count_HZ, align 8
  %8 = add i64 %7, %6
  store i64 %8, i64* @led_work_func.count_HZ, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* @led_work_func.last_jiffies, align 8
  %10 = load i64, i64* @led_work_func.count_HZ, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* @led_work_func.count_HZ, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* @led_heartbeat, align 4
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i64, i64* @led_work_func.count_HZ, align 8
  %20 = load i64, i64* @HEARTBEAT_LEN, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @led_work_func.count_HZ, align 8
  %24 = load i64, i64* @HEARTBEAT_2ND_RANGE_START, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i64, i64* @led_work_func.count_HZ, align 8
  %28 = load i64, i64* @HEARTBEAT_2ND_RANGE_END, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26, %18
  %31 = load i8, i8* @LED_HEARTBEAT, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  br label %37

37:                                               ; preds = %30, %26, %22
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* @led_lanrxtx, align 4
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = call zeroext i8 (...) @led_get_net_activity()
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, %44
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %3, align 1
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i32, i32* @led_diskio, align 4
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = call zeroext i8 (...) @led_get_diskio_activity()
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %3, align 1
  br label %60

60:                                               ; preds = %53, %49
  %61 = load i32, i32* @oops_in_progress, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %60
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %66 = load i64, i64* @pcxl2, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i64, i64* @led_work_func.count_HZ, align 8
  %70 = load i64, i64* @HZ, align 8
  %71 = udiv i64 %70, 2
  %72 = icmp ule i64 %69, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 255
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %3, align 1
  br label %115

76:                                               ; preds = %64
  %77 = load i64, i64* @led_work_func.count_HZ, align 8
  %78 = load i64, i64* @HZ, align 8
  %79 = udiv i64 %78, 2
  %80 = icmp ule i64 %77, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load i8, i8* @LED4, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @LED5, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %83, %85
  %87 = load i8, i8* @LED6, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = load i8, i8* @LED7, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = load i8, i8* %3, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, %93
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %3, align 1
  br label %114

98:                                               ; preds = %76
  %99 = load i8, i8* @LED4, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @LED5, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = load i8, i8* @LED6, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = load i8, i8* @LED7, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %106, %108
  %110 = load i8, i8* %3, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %109
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %3, align 1
  br label %114

114:                                              ; preds = %98, %81
  br label %115

115:                                              ; preds = %114, %68
  br label %116

116:                                              ; preds = %115, %60
  %117 = load i8, i8* %3, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @lastleds, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i8, i8* %3, align 1
  %124 = call i32 @led_func_ptr(i8 zeroext %123)
  %125 = load i8, i8* %3, align 1
  store i8 %125, i8* @lastleds, align 1
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, i32* @led_wq, align 4
  %128 = load i32, i32* @LED_UPDATE_INTERVAL, align 4
  %129 = call i32 @queue_delayed_work(i32 %127, i32* @led_task, i32 %128)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local zeroext i8 @led_get_net_activity(...) #1

declare dso_local zeroext i8 @led_get_diskio_activity(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @led_func_ptr(i8 zeroext) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

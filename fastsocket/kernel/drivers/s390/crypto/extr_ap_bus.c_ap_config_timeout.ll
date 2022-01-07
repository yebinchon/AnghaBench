; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_config_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_config_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ap_work_queue = common dso_local global i32 0, align 4
@ap_config_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ap_config_time = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ap_config_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ap_config_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_config_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @ap_work_queue, align 4
  %4 = call i32 @queue_work(i32 %3, i32* @ap_config_work)
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @ap_config_time, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ap_config_timer, i32 0, i32 0), align 8
  %11 = call i32 @add_timer(%struct.TYPE_3__* @ap_config_timer)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

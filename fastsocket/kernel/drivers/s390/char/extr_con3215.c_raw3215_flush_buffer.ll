; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i64, i32, i32 }

@RAW3215_FLUSHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_flush_buffer(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca i64, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %4 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %5 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @get_ccwdev_lock(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32 %7, i64 %8)
  %10 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %11 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @RAW3215_FLUSHING, align 4
  %16 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %17 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %21 = call i32 @raw3215_try_io(%struct.raw3215_info* %20)
  %22 = load i32, i32* @RAW3215_FLUSHING, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %25 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %14, %1
  %29 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %30 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @get_ccwdev_lock(i32 %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32 %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

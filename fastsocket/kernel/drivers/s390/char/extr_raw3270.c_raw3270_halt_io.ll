; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_halt_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_halt_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i32 }
%struct.raw3270_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*, %struct.raw3270_request*)* @raw3270_halt_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_halt_io(%struct.raw3270* %0, %struct.raw3270_request* %1) #0 {
  %3 = alloca %struct.raw3270*, align 8
  %4 = alloca %struct.raw3270_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.raw3270* %0, %struct.raw3270** %3, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %4, align 8
  %7 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %8 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_ccwdev_lock(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %14 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %15 = call i32 @raw3270_halt_io_nolock(%struct.raw3270* %13, %struct.raw3270_request* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %17 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_ccwdev_lock(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32 %19, i64 %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @raw3270_halt_io_nolock(%struct.raw3270*, %struct.raw3270_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hpet.c_hpet_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hpet.c_hpet_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hpet_dev* }
%struct.hpet_dev = type { i64, i32, i32 }

@hpet_lock = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @hpet_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hpet_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.hpet_dev*, %struct.hpet_dev** %9, align 8
  store %struct.hpet_dev* %10, %struct.hpet_dev** %7, align 8
  %11 = load %struct.hpet_dev*, %struct.hpet_dev** %7, align 8
  %12 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = load %struct.hpet_dev*, %struct.hpet_dev** %7, align 8
  %19 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @poll_wait(%struct.file* %17, i32* %19, i32* %20)
  %22 = call i32 @spin_lock_irq(i32* @hpet_lock)
  %23 = load %struct.hpet_dev*, %struct.hpet_dev** %7, align 8
  %24 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = call i32 @spin_unlock_irq(i32* @hpet_lock)
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* @POLLRDNORM, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

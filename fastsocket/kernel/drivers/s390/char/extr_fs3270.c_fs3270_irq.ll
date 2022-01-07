; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs3270 = type { i32, i32 }
%struct.raw3270_request = type { i32, i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RAW3270_IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs3270*, %struct.raw3270_request*, %struct.irb*)* @fs3270_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs3270_irq(%struct.fs3270* %0, %struct.raw3270_request* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.fs3270*, align 8
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca %struct.irb*, align 8
  store %struct.fs3270* %0, %struct.fs3270** %4, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %7 = load %struct.irb*, %struct.irb** %6, align 8
  %8 = getelementptr inbounds %struct.irb, %struct.irb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %17 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %19 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %18, i32 0, i32 1
  %20 = call i32 @wake_up(i32* %19)
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %23 = icmp ne %struct.raw3270_request* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.irb*, %struct.irb** %6, align 8
  %26 = getelementptr inbounds %struct.irb, %struct.irb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %37 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %46

38:                                               ; preds = %24
  %39 = load %struct.irb*, %struct.irb** %6, align 8
  %40 = getelementptr inbounds %struct.irb, %struct.irb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %45 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %33
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* @RAW3270_IO_DONE, align 4
  ret i32 %48
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

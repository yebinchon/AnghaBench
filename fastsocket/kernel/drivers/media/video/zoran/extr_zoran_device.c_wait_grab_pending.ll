; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_wait_grab_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_wait_grab_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i64, i64, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_grab_pending(%struct.zoran* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zoran*, align 8
  %4 = alloca i64, align 8
  store %struct.zoran* %0, %struct.zoran** %3, align 8
  %5 = load %struct.zoran*, %struct.zoran** %3, align 8
  %6 = getelementptr inbounds %struct.zoran, %struct.zoran* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.zoran*, %struct.zoran** %3, align 8
  %12 = getelementptr inbounds %struct.zoran, %struct.zoran* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.zoran*, %struct.zoran** %3, align 8
  %15 = getelementptr inbounds %struct.zoran, %struct.zoran* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.zoran*, %struct.zoran** %3, align 8
  %18 = getelementptr inbounds %struct.zoran, %struct.zoran* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @wait_event_interruptible(i32 %13, i32 %21)
  %23 = load i32, i32* @current, align 4
  %24 = call i64 @signal_pending(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %10
  %30 = load %struct.zoran*, %struct.zoran** %3, align 8
  %31 = getelementptr inbounds %struct.zoran, %struct.zoran* %30, i32 0, i32 2
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.zoran*, %struct.zoran** %3, align 8
  %35 = call i32 @zr36057_set_memgrab(%struct.zoran* %34, i32 0)
  %36 = load %struct.zoran*, %struct.zoran** %3, align 8
  %37 = getelementptr inbounds %struct.zoran, %struct.zoran* %36, i32 0, i32 2
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %29, %26, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zr36057_set_memgrab(%struct.zoran*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

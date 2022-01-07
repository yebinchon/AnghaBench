; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subch_data_s = type { i32, i32, i32, i32 }

@event_sd = common dso_local global %struct.subch_data_s* null, align 8
@CHUNKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scdrv_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.subch_data_s*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load %struct.subch_data_s*, %struct.subch_data_s** @event_sd, align 8
  store %struct.subch_data_s* %7, %struct.subch_data_s** %6, align 8
  %8 = load i32, i32* @CHUNKSIZE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %10 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %14 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %17 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %20 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ia64_sn_irtr_recv(i32 %15, i32 %18, i32 %21, i32* %4)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %27, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %29 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %33 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @scdrv_dispatch_event(i32 %34, i32 %35)
  %37 = load i32, i32* @CHUNKSIZE, align 4
  store i32 %37, i32* %4, align 4
  %38 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %39 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %43 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %46 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %49 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ia64_sn_irtr_recv(i32 %44, i32 %47, i32 %50, i32* %4)
  store i32 %51, i32* %3, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.subch_data_s*, %struct.subch_data_s** %6, align 8
  %54 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ia64_sn_irtr_recv(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scdrv_dispatch_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

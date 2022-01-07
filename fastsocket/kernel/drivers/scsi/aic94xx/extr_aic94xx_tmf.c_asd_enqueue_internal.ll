; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_enqueue_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_enqueue_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { void (%struct.asd_ascb*, %struct.done_list_struct*)*, i32, %struct.TYPE_3__, i32 }
%struct.done_list_struct = type opaque
%struct.TYPE_3__ = type { i64, void (i64)*, i64 }
%struct.done_list_struct.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@AIC94XX_SCB_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ascb*, void (%struct.asd_ascb*, %struct.done_list_struct.0*)*, void (i64)*)* @asd_enqueue_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_enqueue_internal(%struct.asd_ascb* %0, void (%struct.asd_ascb*, %struct.done_list_struct.0*)* %1, void (i64)* %2) #0 {
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca void (%struct.asd_ascb*, %struct.done_list_struct.0*)*, align 8
  %6 = alloca void (i64)*, align 8
  %7 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store void (%struct.asd_ascb*, %struct.done_list_struct.0*)* %1, void (%struct.asd_ascb*, %struct.done_list_struct.0*)** %5, align 8
  store void (i64)* %2, void (i64)** %6, align 8
  %8 = load void (%struct.asd_ascb*, %struct.done_list_struct.0*)*, void (%struct.asd_ascb*, %struct.done_list_struct.0*)** %5, align 8
  %9 = bitcast void (%struct.asd_ascb*, %struct.done_list_struct.0*)* %8 to void (%struct.asd_ascb*, %struct.done_list_struct*)*
  %10 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %11 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %10, i32 0, i32 0
  store void (%struct.asd_ascb*, %struct.done_list_struct*)* %9, void (%struct.asd_ascb*, %struct.done_list_struct*)** %11, align 8
  %12 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %13 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %12, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %15 = ptrtoint %struct.asd_ascb* %14 to i64
  %16 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %17 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load void (i64)*, void (i64)** %6, align 8
  %20 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %21 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store void (i64)* %19, void (i64)** %22, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @AIC94XX_SCB_TIMEOUT, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %27 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 %25, i64* %28, align 8
  %29 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %30 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %29, i32 0, i32 2
  %31 = call i32 @add_timer(%struct.TYPE_3__* %30)
  %32 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %33 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %36 = call i32 @asd_post_ascb_list(i32 %34, %struct.asd_ascb* %35, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %42 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %41, i32 0, i32 2
  %43 = call i32 @del_timer(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %40, %3
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @asd_post_ascb_list(i32, %struct.asd_ascb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

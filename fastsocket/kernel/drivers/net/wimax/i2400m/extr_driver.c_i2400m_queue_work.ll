; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_queue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32* }
%struct.work_struct = type opaque
%struct.i2400m_work = type { i32, i32, i32 }
%struct.work_struct.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_queue_work(%struct.i2400m* %0, void (%struct.work_struct*)* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca void (%struct.work_struct*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2400m_work*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load i64, i64* %10, align 8
  %22 = add i64 12, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.i2400m_work* @kzalloc(i32 %23, i32 %24)
  store %struct.i2400m_work* %25, %struct.i2400m_work** %12, align 8
  %26 = load %struct.i2400m_work*, %struct.i2400m_work** %12, align 8
  %27 = icmp eq %struct.i2400m_work* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %51

29:                                               ; preds = %5
  %30 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %31 = call i32 @i2400m_get(%struct.i2400m* %30)
  %32 = load %struct.i2400m_work*, %struct.i2400m_work** %12, align 8
  %33 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2400m_work*, %struct.i2400m_work** %12, align 8
  %35 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @memcpy(i32 %36, i8* %37, i64 %38)
  %40 = load %struct.i2400m_work*, %struct.i2400m_work** %12, align 8
  %41 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %40, i32 0, i32 0
  %42 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %7, align 8
  %43 = bitcast void (%struct.work_struct*)* %42 to void (%struct.work_struct.0*)*
  %44 = call i32 @INIT_WORK(i32* %41, void (%struct.work_struct.0*)* %43)
  %45 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %46 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.i2400m_work*, %struct.i2400m_work** %12, align 8
  %49 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %48, i32 0, i32 0
  %50 = call i32 @queue_work(i32* %47, i32* %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %29, %28
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.i2400m_work* @kzalloc(i32, i32) #1

declare dso_local i32 @i2400m_get(%struct.i2400m*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

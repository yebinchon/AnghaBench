; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_read_cmb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_read_cmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cmb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cmb_data = type { %struct.cmb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @read_cmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cmb(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = call i32 @cmf_cmb_copy_wait(%struct.ccw_device* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %73

28:                                               ; preds = %15
  %29 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.cmb_data*
  %35 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %34, i32 0, i32 0
  %36 = load %struct.cmb*, %struct.cmb** %35, align 8
  store %struct.cmb* %36, %struct.cmb** %6, align 8
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %66 [
    i32 128, label %38
    i32 129, label %42
    i32 132, label %46
    i32 130, label %50
    i32 131, label %54
    i32 134, label %58
    i32 133, label %62
  ]

38:                                               ; preds = %28
  %39 = load %struct.cmb*, %struct.cmb** %6, align 8
  %40 = getelementptr inbounds %struct.cmb, %struct.cmb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %73

42:                                               ; preds = %28
  %43 = load %struct.cmb*, %struct.cmb** %6, align 8
  %44 = getelementptr inbounds %struct.cmb, %struct.cmb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %73

46:                                               ; preds = %28
  %47 = load %struct.cmb*, %struct.cmb** %6, align 8
  %48 = getelementptr inbounds %struct.cmb, %struct.cmb* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %67

50:                                               ; preds = %28
  %51 = load %struct.cmb*, %struct.cmb** %6, align 8
  %52 = getelementptr inbounds %struct.cmb, %struct.cmb* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  br label %67

54:                                               ; preds = %28
  %55 = load %struct.cmb*, %struct.cmb** %6, align 8
  %56 = getelementptr inbounds %struct.cmb, %struct.cmb* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %67

58:                                               ; preds = %28
  %59 = load %struct.cmb*, %struct.cmb** %6, align 8
  %60 = getelementptr inbounds %struct.cmb, %struct.cmb* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %67

62:                                               ; preds = %28
  %63 = load %struct.cmb*, %struct.cmb** %6, align 8
  %64 = getelementptr inbounds %struct.cmb, %struct.cmb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  br label %67

66:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %73

67:                                               ; preds = %62, %58, %54, %50, %46
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.cmb*, %struct.cmb** %6, align 8
  %70 = getelementptr inbounds %struct.cmb, %struct.cmb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @time_to_avg_nsec(i32 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %67, %66, %42, %38, %27
  %74 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %75 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32 %76, i64 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @cmf_cmb_copy_wait(%struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @time_to_avg_nsec(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

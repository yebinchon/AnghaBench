; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_scl_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_scl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i32 (%struct.qib_devdata*, i32, i32, i32)* }

@SCL_WAIT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SCL interface stuck low > %d uSec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i64)* @scl_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scl_out(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @udelay(i32 1)
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 1, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 1
  %15 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %14, align 8
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ]
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %15(%struct.qib_devdata* %16, i32 0, i32 %23, i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = call i32 @udelay(i32 2)
  br label %58

30:                                               ; preds = %22
  %31 = load i32, i32* @SCL_WAIT_USEC, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %47, %30
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 1
  %39 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %38, align 8
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %41 = call i32 %39(%struct.qib_devdata* %40, i32 0, i32 0, i32 0)
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %50

45:                                               ; preds = %35
  %46 = call i32 @udelay(i32 2)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %6, align 4
  br label %32

50:                                               ; preds = %44, %32
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %55 = load i32, i32* @SCL_WAIT_USEC, align 4
  %56 = call i32 @qib_dev_err(%struct.qib_devdata* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %60 = call i32 @i2c_wait_for_writes(%struct.qib_devdata* %59)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @i2c_wait_for_writes(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

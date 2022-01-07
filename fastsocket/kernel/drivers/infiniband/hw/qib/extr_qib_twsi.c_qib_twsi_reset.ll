; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i64, i32 (%struct.qib_devdata*, i32, i32, i32)* }

@.str = private unnamed_addr constant [27 x i8] c"GPIO pins not at rest: %d\0A\00", align 1
@TWSI_BUF_WAIT_USEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_twsi_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = shl i64 1, %9
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 1, %13
  %15 = or i64 %10, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 2
  %19 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %18, align 8
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %19(%struct.qib_devdata* %20, i32 0, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %27, %1
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %29 = call i32 @scl_out(%struct.qib_devdata* %28, i32 0)
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = call i32 @scl_out(%struct.qib_devdata* %30, i32 1)
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = call i32 @sda_in(%struct.qib_devdata* %32, i32 0)
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 2
  %42 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %41, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = call i32 %42(%struct.qib_devdata* %43, i32 0, i32 0, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @qib_dev_err(%struct.qib_devdata* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %39
  %57 = call i32 @udelay(i32 1)
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = call i32 @sda_out(%struct.qib_devdata* %58, i32 0)
  %60 = call i32 @udelay(i32 1)
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = call i32 @sda_out(%struct.qib_devdata* %61, i32 1)
  %63 = load i32, i32* @TWSI_BUF_WAIT_USEC, align 4
  %64 = call i32 @udelay(i32 %63)
  br label %65

65:                                               ; preds = %56, %36
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  ret i32 %69
}

declare dso_local i32 @scl_out(%struct.qib_devdata*, i32) #1

declare dso_local i32 @sda_in(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sda_out(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

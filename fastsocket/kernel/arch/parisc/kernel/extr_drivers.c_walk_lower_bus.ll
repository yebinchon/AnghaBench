; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_walk_lower_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_walk_lower_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HPHW_IOA = common dso_local global i64 0, align 8
@MAX_NATIVE_DEVICES = common dso_local global i64 0, align 8
@NATIVE_DEVICE_OFFSET = common dso_local global i64 0, align 8
@FLEX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @walk_lower_bus(%struct.parisc_device* %0) #0 {
  %2 = alloca %struct.parisc_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.parisc_device* %0, %struct.parisc_device** %2, align 8
  %5 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %6 = call i32 @BUS_CONVERTER(%struct.parisc_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %10 = call i64 @IS_LOWER_PORT(%struct.parisc_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %53

13:                                               ; preds = %8
  %14 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %15 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HPHW_IOA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %22 = call i32 @READ_IO_IO_LOW(%struct.parisc_device* %21)
  %23 = shl i32 %22, 16
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @MAX_NATIVE_DEVICES, align 8
  %27 = load i64, i64* @NATIVE_DEVICE_OFFSET, align 8
  %28 = mul i64 %26, %27
  %29 = add i64 %25, %28
  store i64 %29, i64* %4, align 8
  br label %47

30:                                               ; preds = %13
  %31 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %32 = call i32 @READ_IO_IO_LOW(%struct.parisc_device* %31)
  %33 = load i32, i32* @FLEX_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* @FLEX_MASK, align 4
  %37 = and i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  %39 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %40 = call i32 @READ_IO_IO_HIGH(%struct.parisc_device* %39)
  %41 = load i32, i32* @FLEX_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* @FLEX_MASK, align 4
  %45 = and i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %30, %20
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %51 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %50, i32 0, i32 0
  %52 = call i32 @walk_native_bus(i64 %48, i64 %49, i32* %51)
  br label %53

53:                                               ; preds = %47, %12
  ret void
}

declare dso_local i32 @BUS_CONVERTER(%struct.parisc_device*) #1

declare dso_local i64 @IS_LOWER_PORT(%struct.parisc_device*) #1

declare dso_local i32 @READ_IO_IO_LOW(%struct.parisc_device*) #1

declare dso_local i32 @READ_IO_IO_HIGH(%struct.parisc_device*) #1

declare dso_local i32 @walk_native_bus(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

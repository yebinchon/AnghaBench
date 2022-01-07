; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_serial_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.hso_serial = type { %struct.TYPE_2__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_device*)* @hso_free_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_serial_device(%struct.hso_device* %0) #0 {
  %2 = alloca %struct.hso_device*, align 8
  %3 = alloca %struct.hso_serial*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %2, align 8
  %4 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %5 = bitcast %struct.hso_device* %4 to %struct.hso_serial*
  %6 = call %struct.hso_serial* @dev2ser(%struct.hso_serial* %5)
  store %struct.hso_serial* %6, %struct.hso_serial** %3, align 8
  %7 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %8 = icmp ne %struct.hso_serial* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %12 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @set_serial_by_index(i32 %13, i32* null)
  %15 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %16 = call i32 @hso_serial_common_free(%struct.hso_serial* %15)
  %17 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %18 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %10
  %22 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %28 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %36 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @hso_free_shared_int(%struct.TYPE_2__* %37)
  br label %45

39:                                               ; preds = %21
  %40 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %10
  %47 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %48 = call i32 @hso_free_tiomget(%struct.hso_serial* %47)
  %49 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %50 = call i32 @kfree(%struct.hso_serial* %49)
  %51 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %52 = bitcast %struct.hso_device* %51 to %struct.hso_serial*
  %53 = call i32 @kfree(%struct.hso_serial* %52)
  br label %54

54:                                               ; preds = %46, %9
  ret void
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.hso_serial*) #1

declare dso_local i32 @set_serial_by_index(i32, i32*) #1

declare dso_local i32 @hso_serial_common_free(%struct.hso_serial*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hso_free_shared_int(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hso_free_tiomget(%struct.hso_serial*) #1

declare dso_local i32 @kfree(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

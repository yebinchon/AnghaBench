; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_std_serial_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_std_serial_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@hso_std_serial_write_bulk_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to submit urb - res %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_serial*)* @hso_std_serial_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_std_serial_write_data(%struct.hso_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hso_serial* %0, %struct.hso_serial** %3, align 8
  %6 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %7 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %10 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %13 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %18 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 127
  %28 = call i32 @usb_sndbulkpipe(%struct.TYPE_7__* %21, i32 %27)
  %29 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %30 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %33 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @hso_std_serial_write_bulk_callback, align 4
  %36 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %37 = call i32 @usb_fill_bulk_urb(i32 %11, %struct.TYPE_7__* %16, i32 %28, i32 %31, i32 %34, i32 %35, %struct.hso_serial* %36)
  %38 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %39 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i32 @usb_submit_urb(i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %1
  %46 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.hso_serial*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_request_firmware_work_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_request_firmware_work_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware_work = type { i32, i32, i32 (%struct.firmware*, i32)*, i32, i32, i32 }
%struct.firmware = type opaque
%struct.firmware.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @request_firmware_work_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_firmware_work_func(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.firmware_work*, align 8
  %5 = alloca %struct.firmware.0*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.firmware_work*
  store %struct.firmware_work* %8, %struct.firmware_work** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %15 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %18 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %21 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @_request_firmware(%struct.firmware.0** %5, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %25 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %24, i32 0, i32 2
  %26 = load i32 (%struct.firmware*, i32)*, i32 (%struct.firmware*, i32)** %25, align 8
  %27 = load %struct.firmware.0*, %struct.firmware.0** %5, align 8
  %28 = bitcast %struct.firmware.0* %27 to %struct.firmware*
  %29 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %30 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %26(%struct.firmware* %28, i32 %31)
  %33 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %34 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @module_put(i32 %35)
  %37 = load %struct.firmware_work*, %struct.firmware_work** %4, align 8
  %38 = call i32 @kfree(%struct.firmware_work* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %13, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @_request_firmware(%struct.firmware.0**, i32, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.firmware_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

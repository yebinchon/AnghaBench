; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_reread_bus_info_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_reread_bus_info_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i64* }

@RCODE_COMPLETE = common dso_local global i64 0, align 8
@REREAD_BIB_ERROR = common dso_local global i32 0, align 4
@REREAD_BIB_GONE = common dso_local global i32 0, align 4
@REREAD_BIB_CHANGED = common dso_local global i32 0, align 4
@REREAD_BIB_UNCHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_device*, i32)* @reread_bus_info_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reread_bus_info_block(%struct.fw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @read_rom(%struct.fw_device* %12, i32 %13, i32 %14, i64* %6)
  %16 = load i64, i64* @RCODE_COMPLETE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @REREAD_BIB_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %11
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @REREAD_BIB_GONE, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %23, %20
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %31 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %29, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @REREAD_BIB_CHANGED, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  %45 = load i32, i32* @REREAD_BIB_UNCHANGED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %38, %26, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @read_rom(%struct.fw_device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_dcdbas.c_smi_request_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_dcdbas.c_smi_request_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.smi_cmd = type { i32, i32 }

@smi_data_lock = common dso_local global i32 0, align 4
@smi_data_buf_size = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@smi_data_buf = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @smi_request_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smi_request_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smi_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @simple_strtoul(i8* %12, i32* null, i32 10)
  store i64 %13, i64* %10, align 8
  %14 = call i32 @mutex_lock(i32* @smi_data_lock)
  %15 = load i32, i32* @smi_data_buf_size, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %11, align 8
  br label %56

21:                                               ; preds = %4
  %22 = load i64, i64* @smi_data_buf, align 8
  %23 = inttoptr i64 %22 to %struct.smi_cmd*
  store %struct.smi_cmd* %23, %struct.smi_cmd** %9, align 8
  %24 = load i64, i64* %10, align 8
  switch i64 %24, label %52 [
    i64 2, label %25
    i64 1, label %33
    i64 0, label %47
  ]

25:                                               ; preds = %21
  %26 = load %struct.smi_cmd*, %struct.smi_cmd** %9, align 8
  %27 = call i64 @dcdbas_smi_request(%struct.smi_cmd* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %30, %25
  br label %55

33:                                               ; preds = %21
  %34 = load %struct.smi_cmd*, %struct.smi_cmd** %9, align 8
  %35 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @virt_to_phys(i32 %36)
  %38 = load %struct.smi_cmd*, %struct.smi_cmd** %9, align 8
  %39 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.smi_cmd*, %struct.smi_cmd** %9, align 8
  %41 = call i64 @dcdbas_smi_request(%struct.smi_cmd* %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %44, %33
  br label %55

47:                                               ; preds = %21
  %48 = load i64, i64* @smi_data_buf, align 8
  %49 = load i32, i32* @smi_data_buf_size, align 4
  %50 = call i32 @memset(i64 %48, i32 0, i32 %49)
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %11, align 8
  br label %55

52:                                               ; preds = %21
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %52, %47, %46, %32
  br label %56

56:                                               ; preds = %55, %18
  %57 = call i32 @mutex_unlock(i32* @smi_data_lock)
  %58 = load i64, i64* %11, align 8
  ret i64 %58
}

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dcdbas_smi_request(%struct.smi_cmd*) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

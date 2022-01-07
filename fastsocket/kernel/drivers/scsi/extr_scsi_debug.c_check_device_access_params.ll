; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_check_device_access_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_check_device_access_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_dev_info = type { i32 }

@sdebug_capacity = common dso_local global i64 0, align 8
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@ADDR_OUT_OF_RANGE = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_store_sectors = common dso_local global i32 0, align 4
@INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdebug_dev_info*, i64, i32)* @check_device_access_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_device_access_params(%struct.sdebug_dev_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sdebug_dev_info* %0, %struct.sdebug_dev_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  %11 = add i64 %8, %10
  %12 = load i64, i64* @sdebug_capacity, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %16 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %17 = load i32, i32* @ADDR_OUT_OF_RANGE, align 4
  %18 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %15, i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* @check_condition_result, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @sdebug_store_sectors, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %26 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %27 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %28 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %25, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @check_condition_result, align 4
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %24, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

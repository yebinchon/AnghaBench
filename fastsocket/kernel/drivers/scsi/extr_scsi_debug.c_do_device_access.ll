; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_do_device_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_do_device_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.sdebug_dev_info = type { i32 }

@sdebug_store_sectors = common dso_local global i32 0, align 4
@fake_storep = common dso_local global i8* null, align 8
@scsi_debug_sector_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*, i64, i32, i32)* @do_device_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_device_access(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.sdebug_dev_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.scsi_cmnd*, i8*, i32)*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 (%struct.scsi_cmnd*, i8*, i32)* @fetch_to_dev_buffer, i32 (%struct.scsi_cmnd*, i8*, i32)* @fill_from_dev_buffer
  store i32 (%struct.scsi_cmnd*, i8*, i32)* %18, i32 (%struct.scsi_cmnd*, i8*, i32)** %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @sdebug_store_sectors, align 4
  %21 = call i32 @do_div(i64 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %22, %23
  %25 = load i32, i32* @sdebug_store_sectors, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %28, %29
  %31 = load i32, i32* @sdebug_store_sectors, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %27, %5
  %34 = load i32 (%struct.scsi_cmnd*, i8*, i32)*, i32 (%struct.scsi_cmnd*, i8*, i32)** %14, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %36 = load i8*, i8** @fake_storep, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @scsi_debug_sector_size, align 4
  %39 = mul i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub i32 %42, %43
  %45 = load i32, i32* @scsi_debug_sector_size, align 4
  %46 = mul i32 %44, %45
  %47 = call i32 %34(%struct.scsi_cmnd* %35, i8* %41, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32 (%struct.scsi_cmnd*, i8*, i32)*, i32 (%struct.scsi_cmnd*, i8*, i32)** %14, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %56 = load i8*, i8** @fake_storep, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @scsi_debug_sector_size, align 4
  %59 = mul i32 %57, %58
  %60 = call i32 %54(%struct.scsi_cmnd* %55, i8* %56, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %53, %50, %33
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @fetch_to_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

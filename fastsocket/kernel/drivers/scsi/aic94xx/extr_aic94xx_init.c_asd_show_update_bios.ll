; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_show_update_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_show_update_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asd_ha_struct = type { i64 }

@flash_error_table = common dso_local global %struct.TYPE_2__* null, align 8
@FLASH_IN_PROGRESS = common dso_local global i64 0, align 8
@FLASH_OK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"status=%x %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @asd_show_update_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_show_update_bios(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.asd_ha_struct*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.asd_ha_struct* @dev_to_asd_ha(%struct.device* %9)
  store %struct.asd_ha_struct* %10, %struct.asd_ha_struct** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_error_table, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_error_table, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %27 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %11

35:                                               ; preds = %30, %11
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FLASH_IN_PROGRESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @FLASH_OK, align 8
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %44 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_error_table, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_error_table, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %53, i8* %59)
  ret i32 %60
}

declare dso_local %struct.asd_ha_struct* @dev_to_asd_ha(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

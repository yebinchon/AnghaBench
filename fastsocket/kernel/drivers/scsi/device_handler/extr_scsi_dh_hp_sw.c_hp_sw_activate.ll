; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.hp_sw_dh_data = type { i64, i32*, i32 (i8*, i32)*, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@HP_SW_PATH_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32 (i8*, i32)*, i8*)* @hp_sw_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_activate(%struct.scsi_device* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hp_sw_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = call %struct.hp_sw_dh_data* @get_hp_sw_data(%struct.scsi_device* %11)
  store %struct.hp_sw_dh_data* %12, %struct.hp_sw_dh_data** %9, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %14 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %15 = call i32 @hp_sw_tur(%struct.scsi_device* %13, %struct.hp_sw_dh_data* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SCSI_DH_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %21 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HP_SW_PATH_PASSIVE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %27 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %30 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %32 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %33 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %32, i32 0, i32 2
  store i32 (i8*, i32)* %31, i32 (i8*, i32)** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %37 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %39 = call i32 @hp_sw_start_stop(%struct.hp_sw_dh_data* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SCSI_DH_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %58

44:                                               ; preds = %25
  %45 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %46 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %9, align 8
  %48 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %47, i32 0, i32 2
  store i32 (i8*, i32)* null, i32 (i8*, i32)** %48, align 8
  br label %49

49:                                               ; preds = %44, %19, %3
  %50 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %51 = icmp ne i32 (i8*, i32)* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 %53(i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.hp_sw_dh_data* @get_hp_sw_data(%struct.scsi_device*) #1

declare dso_local i32 @hp_sw_tur(%struct.scsi_device*, %struct.hp_sw_dh_data*) #1

declare dso_local i32 @hp_sw_start_stop(%struct.hp_sw_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

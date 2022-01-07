; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_check_ownership.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_check_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_dh_data = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.c9_inquiry }
%struct.c9_inquiry = type { i32, i32 }

@RDAC_STATE_ACTIVE = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@RDAC_MODE_IOSHIP = common dso_local global i64 0, align 8
@RDAC_MODE_AVT = common dso_local global i64 0, align 8
@RDAC_MODE = common dso_local global i64 0, align 8
@RDAC_LUN_OWNED = common dso_local global i32 0, align 4
@RDAC_LUN_UNOWNED = common dso_local global i32 0, align 4
@RDAC_STATE_PASSIVE = common dso_local global i32 0, align 4
@RDAC_PREFERRED = common dso_local global i32 0, align 4
@RDAC_NON_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.rdac_dh_data*)* @check_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ownership(%struct.scsi_device* %0, %struct.rdac_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.rdac_dh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c9_inquiry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.rdac_dh_data* %1, %struct.rdac_dh_data** %4, align 8
  %7 = load i32, i32* @RDAC_STATE_ACTIVE, align 4
  %8 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %9 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %12 = call i32 @submit_inquiry(%struct.scsi_device* %10, i32 201, i32 8, %struct.rdac_dh_data* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SCSI_DH_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %2
  %17 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %18 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.c9_inquiry* %19, %struct.c9_inquiry** %6, align 8
  %20 = load %struct.c9_inquiry*, %struct.c9_inquiry** %6, align 8
  %21 = getelementptr inbounds %struct.c9_inquiry, %struct.c9_inquiry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 5
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i64, i64* @RDAC_MODE_IOSHIP, align 8
  %28 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %29 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %45

30:                                               ; preds = %16
  %31 = load %struct.c9_inquiry*, %struct.c9_inquiry** %6, align 8
  %32 = getelementptr inbounds %struct.c9_inquiry, %struct.c9_inquiry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 7
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @RDAC_MODE_AVT, align 8
  %38 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %39 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load i64, i64* @RDAC_MODE, align 8
  %42 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %43 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.c9_inquiry*, %struct.c9_inquiry** %6, align 8
  %47 = getelementptr inbounds %struct.c9_inquiry, %struct.c9_inquiry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @RDAC_LUN_OWNED, align 4
  %53 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %54 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %69

55:                                               ; preds = %45
  %56 = load i32, i32* @RDAC_LUN_UNOWNED, align 4
  %57 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %58 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %60 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RDAC_MODE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @RDAC_STATE_PASSIVE, align 4
  %66 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %67 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %55
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.c9_inquiry*, %struct.c9_inquiry** %6, align 8
  %71 = getelementptr inbounds %struct.c9_inquiry, %struct.c9_inquiry* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @RDAC_PREFERRED, align 4
  %77 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %78 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @RDAC_NON_PREFERRED, align 4
  %81 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %4, align 8
  %82 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %2
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @submit_inquiry(%struct.scsi_device*, i32, i32, %struct.rdac_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

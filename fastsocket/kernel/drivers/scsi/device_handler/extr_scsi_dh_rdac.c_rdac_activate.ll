; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_dh_data = type { i32, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@RDAC_LUN_UNOWNED = common dso_local global i32 0, align 4
@RDAC_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32 (i8*, i32)*, i8*)* @rdac_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdac_activate(%struct.scsi_device* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rdac_dh_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = call %struct.rdac_dh_data* @get_rdac_data(%struct.scsi_device* %11)
  store %struct.rdac_dh_data* %12, %struct.rdac_dh_data** %8, align 8
  %13 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %16 = call i32 @check_ownership(%struct.scsi_device* %14, %struct.rdac_dh_data* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SCSI_DH_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %23 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %47 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %21
  %26 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %27 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RDAC_LUN_UNOWNED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %48

33:                                               ; preds = %21
  %34 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %35 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RDAC_LUN_UNOWNED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %41 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RDAC_PREFERRED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %39, %33
  br label %48

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47, %46, %32
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %53 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @queue_mode_select(%struct.scsi_device* %52, i32 (i8*, i32)* %53, i8* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SCSI_DH_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %71

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %20
  %63 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %64 = icmp ne i32 (i8*, i32)* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 %66(i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.rdac_dh_data* @get_rdac_data(%struct.scsi_device*) #1

declare dso_local i32 @check_ownership(%struct.scsi_device*, %struct.rdac_dh_data*) #1

declare dso_local i32 @queue_mode_select(%struct.scsi_device*, i32 (i8*, i32)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

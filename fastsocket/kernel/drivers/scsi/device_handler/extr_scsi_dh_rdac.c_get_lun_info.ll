; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_get_lun_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_get_lun_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.rdac_dh_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.c8_inquiry }
%struct.c8_inquiry = type { i32, i8*, i8*, i32, i32, i32* }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_DH_NOSYS = common dso_local global i32 0, align 4
@ARRAY_LABEL_LEN = common dso_local global i32 0, align 4
@UNIQUE_ID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i32*)* @get_lun_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lun_info(%struct.scsi_device* %0, %struct.rdac_dh_data* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.rdac_dh_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.c8_inquiry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store %struct.rdac_dh_data* %1, %struct.rdac_dh_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %7, align 8
  %15 = call i32 @submit_inquiry(%struct.scsi_device* %13, i32 200, i32 40, %struct.rdac_dh_data* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @SCSI_DH_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %110

19:                                               ; preds = %4
  %20 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %7, align 8
  %21 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.c8_inquiry* %22, %struct.c8_inquiry** %12, align 8
  %23 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %24 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 200
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @SCSI_DH_NOSYS, align 4
  store i32 %28, i32* %5, align 4
  br label %112

29:                                               ; preds = %19
  %30 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %31 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 101
  br i1 %36, label %61, label %37

37:                                               ; preds = %29
  %38 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %39 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 100
  br i1 %44, label %61, label %45

45:                                               ; preds = %37
  %46 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %47 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 105
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %55 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 100
  br i1 %60, label %61, label %63

61:                                               ; preds = %53, %45, %37, %29
  %62 = load i32, i32* @SCSI_DH_NOSYS, align 4
  store i32 %62, i32* %5, align 4
  br label %112

63:                                               ; preds = %53
  %64 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %65 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %7, align 8
  %70 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %90, %63
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @ARRAY_LABEL_LEN, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %78 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* @ARRAY_LABEL_LEN, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  store i8 0, i8* %98, align 1
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @UNIQUE_ID_LEN, align 4
  %101 = call i32 @memset(i32* %99, i32 0, i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %104 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.c8_inquiry*, %struct.c8_inquiry** %12, align 8
  %107 = getelementptr inbounds %struct.c8_inquiry, %struct.c8_inquiry* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @memcpy(i32* %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %93, %4
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %61, %27
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @submit_inquiry(%struct.scsi_device*, i32, i32, %struct.rdac_dh_data*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_vpd_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_vpd_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32*, i32, i8, i8, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: kmalloc buffer failed\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@SCSI_DH_DEV_TEMP_BUSY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: No target port descriptors found\0A\00", align 1
@TPGS_STATE_OPTIMIZED = common dso_local global i32 0, align 4
@TPGS_MODE_NONE = common dso_local global i32 0, align 4
@SCSI_DH_DEV_UNSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: port group %02x rel port %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.alua_dh_data*)* @alua_vpd_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_vpd_inquiry(%struct.scsi_device* %0, %struct.alua_dh_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.alua_dh_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.alua_dh_data* %1, %struct.alua_dh_data** %5, align 8
  br label %9

9:                                                ; preds = %48, %2
  %10 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %11 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %12 = call i32 @submit_vpd_inquiry(%struct.scsi_device* %10, %struct.alua_dh_data* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SCSI_DH_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %142

18:                                               ; preds = %9
  %19 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %20 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %26 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %24, %29
  %31 = add nsw i32 %30, 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %34 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %18
  %38 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @realloc_buffer(%struct.alua_dh_data* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %45 = load i32, i32* @ALUA_DH_NAME, align 4
  %46 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %43, %struct.scsi_device* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %47, i32* %3, align 4
  br label %142

48:                                               ; preds = %37
  br label %9

49:                                               ; preds = %18
  %50 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %51 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %100, %49
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %58 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = bitcast i32* %62 to i8*
  %64 = icmp ult i8* %56, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %55
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 15
  switch i32 %70, label %99 [
    i32 4, label %71
    i32 5, label %85
  ]

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 6
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %76, %80
  %82 = trunc i32 %81 to i8
  %83 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %84 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %83, i32 0, i32 2
  store i8 %82, i8* %84, align 4
  br label %100

85:                                               ; preds = %65
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 6
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 7
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %90, %94
  %96 = trunc i32 %95 to i8
  %97 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %98 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %97, i32 0, i32 3
  store i8 %96, i8* %98, align 1
  br label %100

99:                                               ; preds = %65
  br label %100

100:                                              ; preds = %99, %85, %71
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %104, 4
  %106 = load i8*, i8** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %8, align 8
  br label %55

109:                                              ; preds = %55
  %110 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %111 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %110, i32 0, i32 3
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load i32, i32* @KERN_INFO, align 4
  %117 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %118 = load i32, i32* @ALUA_DH_NAME, align 4
  %119 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %116, %struct.scsi_device* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @TPGS_STATE_OPTIMIZED, align 4
  %121 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %122 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @TPGS_MODE_NONE, align 4
  %124 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %125 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @SCSI_DH_DEV_UNSUPP, align 4
  store i32 %126, i32* %7, align 4
  br label %140

127:                                              ; preds = %109
  %128 = load i32, i32* @KERN_INFO, align 4
  %129 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %130 = load i32, i32* @ALUA_DH_NAME, align 4
  %131 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %132 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %131, i32 0, i32 3
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %136 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %135, i32 0, i32 2
  %137 = load i8, i8* %136, align 4
  %138 = zext i8 %137 to i32
  %139 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %128, %struct.scsi_device* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %134, i32 %138)
  br label %140

140:                                              ; preds = %127, %115
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %42, %16
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @submit_vpd_inquiry(%struct.scsi_device*, %struct.alua_dh_data*) #1

declare dso_local i64 @realloc_buffer(%struct.alua_dh_data*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

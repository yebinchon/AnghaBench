; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_check_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }
%struct.rdac_dh_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@RDAC_LOG_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"array %s, ctlr %d, I/O returned with sense %02x/%02x/%02x\00", align 1
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@RDAC_STATE_PASSIVE = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @rdac_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdac_check_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  %6 = alloca %struct.rdac_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %8 = call %struct.rdac_dh_data* @get_rdac_data(%struct.scsi_device* %7)
  store %struct.rdac_dh_data* %8, %struct.rdac_dh_data** %6, align 8
  %9 = load i32, i32* @RDAC_LOG_SENSE, align 4
  %10 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %11 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %12 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %18 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RDAC_LOG(i32 %9, %struct.scsi_device* %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %125 [
    i32 129, label %35
    i32 130, label %84
    i32 128, label %100
  ]

35:                                               ; preds = %2
  %36 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %46, i32* %3, align 4
  br label %127

47:                                               ; preds = %40, %35
  %48 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  br label %127

59:                                               ; preds = %52, %47
  %60 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 161
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %70, i32* %3, align 4
  br label %127

71:                                               ; preds = %64, %59
  %72 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 161
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %82, i32* %3, align 4
  br label %127

83:                                               ; preds = %76, %71
  br label %125

84:                                               ; preds = %2
  %85 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 148
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* @RDAC_STATE_PASSIVE, align 4
  %96 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %97 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @SUCCESS, align 4
  store i32 %98, i32* %3, align 4
  br label %127

99:                                               ; preds = %89, %84
  br label %125

100:                                              ; preds = %2
  %101 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %102 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 41
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %111, i32* %3, align 4
  br label %127

112:                                              ; preds = %105, %100
  %113 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 139
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %119 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %123, i32* %3, align 4
  br label %127

124:                                              ; preds = %117, %112
  br label %125

125:                                              ; preds = %2, %124, %99, %83
  %126 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %122, %110, %94, %81, %69, %57, %45
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.rdac_dh_data* @get_rdac_data(%struct.scsi_device*) #1

declare dso_local i32 @RDAC_LOG(i32, %struct.scsi_device*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

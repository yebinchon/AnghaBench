; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_show_fc_host_supported_classes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_show_fc_host_supported_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }

@FC_COS_UNSPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_fc_host_supported_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_fc_host_supported_classes(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.Scsi_Host* @transport_class_to_shost(%struct.device* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %8, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %12 = call i64 @fc_host_supported_classes(%struct.Scsi_Host* %11)
  %13 = load i64, i64* @FC_COS_UNSPECIFIED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @snprintf(i8* %16, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %20 = call i64 @fc_host_supported_classes(%struct.Scsi_Host* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @get_fc_cos_names(i64 %20, i8* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.Scsi_Host* @transport_class_to_shost(%struct.device*) #1

declare dso_local i64 @fc_host_supported_classes(%struct.Scsi_Host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @get_fc_cos_names(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

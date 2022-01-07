; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_bsg_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_bsg_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, %struct.request_queue*, %struct.device, %struct.device, %struct.TYPE_6__*, i32 }
%struct.request_queue = type { %struct.sas_rphy* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sas_rphy = type { i32, %struct.request_queue*, %struct.device, %struct.device, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.request_queue* }

@.str = private unnamed_addr constant [30 x i8] c"%s can't handle SMP requests\0A\00", align 1
@sas_non_host_smp_request = common dso_local global i32 0, align 4
@sas_host_smp_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sas_host%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QUEUE_FLAG_BIDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.sas_rphy*)* @sas_bsg_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_bsg_initialize(%struct.Scsi_Host* %0, %struct.sas_rphy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_rphy*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca void (%struct.device*)*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.sas_rphy* %1, %struct.sas_rphy** %5, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_7__* @to_sas_internal(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %3, align 4
  br label %97

28:                                               ; preds = %2
  %29 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %30 = icmp ne %struct.sas_rphy* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* @sas_non_host_smp_request, align 4
  %33 = call %struct.request_queue* @blk_init_queue(i32 %32, i32* null)
  store %struct.request_queue* %33, %struct.request_queue** %6, align 8
  %34 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %35 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %34, i32 0, i32 3
  store %struct.device* %35, %struct.device** %8, align 8
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = call i8* @dev_name(%struct.device* %36)
  store i8* %37, i8** %10, align 8
  store void (%struct.device*)* null, void (%struct.device*)** %11, align 8
  br label %49

38:                                               ; preds = %28
  %39 = load i32, i32* @sas_host_smp_request, align 4
  %40 = call %struct.request_queue* @blk_init_queue(i32 %39, i32* null)
  store %struct.request_queue* %40, %struct.request_queue** %6, align 8
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 2
  store %struct.device* %42, %struct.device** %8, align 8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @snprintf(i8* %43, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  store i8* %48, i8** %10, align 8
  store void (%struct.device*)* @sas_host_release, void (%struct.device*)** %11, align 8
  br label %49

49:                                               ; preds = %38, %31
  %50 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %51 = icmp ne %struct.request_queue* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %97

55:                                               ; preds = %49
  %56 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load void (%struct.device*)*, void (%struct.device*)** %11, align 8
  %60 = call i32 @bsg_register_queue(%struct.request_queue* %56, %struct.device* %57, i8* %58, void (%struct.device*)* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %65 = call i32 @blk_cleanup_queue(%struct.request_queue* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %97

68:                                               ; preds = %55
  %69 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %70 = icmp ne %struct.sas_rphy* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %73 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %74 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %73, i32 0, i32 1
  store %struct.request_queue* %72, %struct.request_queue** %74, align 8
  br label %81

75:                                               ; preds = %68
  %76 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %78 = bitcast %struct.Scsi_Host* %77 to %struct.sas_rphy*
  %79 = call %struct.TYPE_8__* @to_sas_host_attrs(%struct.sas_rphy* %78)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store %struct.request_queue* %76, %struct.request_queue** %80, align 8
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %83 = icmp ne %struct.sas_rphy* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %86, i32 0, i32 0
  store %struct.sas_rphy* %85, %struct.sas_rphy** %87, align 8
  br label %93

88:                                               ; preds = %81
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %90 = bitcast %struct.Scsi_Host* %89 to %struct.sas_rphy*
  %91 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %92 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %91, i32 0, i32 0
  store %struct.sas_rphy* %90, %struct.sas_rphy** %92, align 8
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* @QUEUE_FLAG_BIDI, align 4
  %95 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %96 = call i32 @queue_flag_set_unlocked(i32 %94, %struct.request_queue* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %63, %52, %21
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_7__* @to_sas_internal(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.request_queue* @blk_init_queue(i32, i32*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local void @sas_host_release(%struct.device*) #1

declare dso_local i32 @bsg_register_queue(%struct.request_queue*, %struct.device*, i8*, void (%struct.device*)*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local %struct.TYPE_8__* @to_sas_host_attrs(%struct.sas_rphy*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.c_NCR_700_change_queue_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.c_NCR_700_change_queue_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.NCR_700_Host_Parameters = type { i32 }

@NCR_700_START_TAG_NEGOTIATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @NCR_700_change_queue_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR_700_change_queue_type(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.NCR_700_Host_Parameters*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = call i64 @scsi_get_tag_type(%struct.scsi_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = call i64 @scsi_get_tag_type(%struct.scsi_device* %17)
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i1 [ true, %9 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.NCR_700_Host_Parameters*
  store %struct.NCR_700_Host_Parameters* %32, %struct.NCR_700_Host_Parameters** %6, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @scsi_set_tag_type(%struct.scsi_device* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @scsi_target_quiesce(i32 %41)
  br label %43

43:                                               ; preds = %38, %22
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %48 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %47, i32 %52)
  %54 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %55 = call i32 @sdev_id(%struct.scsi_device* %54)
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %6, align 8
  %59 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %75

62:                                               ; preds = %43
  %63 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @scsi_activate_tcq(%struct.scsi_device* %63, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %72 = load i32, i32* @NCR_700_START_TAG_NEGOTIATION, align 4
  %73 = call i32 @NCR_700_set_tag_neg_state(%struct.scsi_device* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %62
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @scsi_target_resume(i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @scsi_get_tag_type(%struct.scsi_device*) #1

declare dso_local i32 @scsi_set_tag_type(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_target_quiesce(i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @sdev_id(%struct.scsi_device*) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @NCR_700_set_tag_neg_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_target_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

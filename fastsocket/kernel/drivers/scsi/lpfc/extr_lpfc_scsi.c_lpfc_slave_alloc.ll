; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32 }
%struct.fc_rport = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@LPFC_DISC_IOCB_BUFF_COUNT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"0704 At limitation of %d preallocated command buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"0705 Allocation request of %d command buffers will exceed max of %d.  Reducing allocation request to %d.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"0708 Allocation request of %d command buffers did not succeed.  Allocated %d buffers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @lpfc_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %4, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %5, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = call i32 @scsi_target(%struct.scsi_device* %20)
  %22 = call %struct.fc_rport* @starget_to_rport(i32 %21)
  store %struct.fc_rport* %22, %struct.fc_rport** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %24 = icmp ne %struct.fc_rport* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %27 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %1
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %125

32:                                               ; preds = %25
  %33 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %34 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 2
  %40 = call i32 @atomic_inc_return(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 2
  %53 = mul nsw i32 %48, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %125

57:                                               ; preds = %32
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LPFC_DISC_IOCB_BUFF_COUNT, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sge i32 %58, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load i32, i32* @LOG_FCP, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %2, align 4
  br label %125

71:                                               ; preds = %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LPFC_DISC_IOCB_BUFF_COUNT, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %74, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %71
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %83 = load i32, i32* @KERN_WARNING, align 4
  %84 = load i32, i32* @LOG_FCP, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88, i32 %93)
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %81, %71
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @lpfc_new_scsi_buf(%struct.lpfc_vport* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i32, i32* @LOG_FCP, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %101
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %115
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %65, %56, %29
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_new_scsi_buf(%struct.lpfc_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

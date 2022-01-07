; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_scsi_to_fcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_scsi_to_fcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcp_cmnd = type { i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@FCP_PTA_ORDERED = common dso_local global i32 0, align 4
@FCP_PTA_SIMPLE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@FCP_CFL_RDDATA = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FCP_CFL_WRDATA = common dso_local global i32 0, align 4
@SCSI_PROT_DIF_TYPE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcp_cmnd*, %struct.scsi_cmnd*)* @zfcp_fc_scsi_to_fcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_scsi_to_fcp(%struct.fcp_cmnd* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fcp_cmnd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca [2 x i8], align 1
  store %struct.fcp_cmnd* %0, %struct.fcp_cmnd** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %11, i32 0, i32 4
  %13 = bitcast i32* %12 to %struct.scsi_lun*
  %14 = call i32 @int_to_scsilun(i32 %10, %struct.scsi_lun* %13)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %17 = call i64 @scsi_populate_tag_msg(%struct.scsi_cmnd* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %35 [
    i32 129, label %23
    i32 128, label %29
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @FCP_PTA_ORDERED, align 4
  %25 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @FCP_PTA_SIMPLE, align 4
  %31 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %32 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %19, %29, %23
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @FCP_PTA_SIMPLE, align 4
  %38 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %35
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @FCP_CFL_RDDATA, align 4
  %48 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %49 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DMA_TO_DEVICE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @FCP_CFL_WRDATA, align 4
  %60 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %61 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %66 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @memcpy(i32 %67, i32 %70, i32 %73)
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %75)
  %77 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %78 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = call i64 @scsi_get_prot_type(%struct.scsi_cmnd* %79)
  %81 = load i64, i64* @SCSI_PROT_DIF_TYPE1, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %64
  %84 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %85 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %86, %91
  %93 = mul nsw i32 %92, 8
  %94 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %95 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %83, %64
  ret void
}

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i64 @scsi_populate_tag_msg(%struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

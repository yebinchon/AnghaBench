; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_build_fcp_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_build_fcp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i32, %struct.TYPE_4__, i32, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fcp_cmnd = type { i64, i32, i32, i64, i32, i32, i64 }
%struct.scsi_lun = type { i32 }

@FCP_PTA_HEADQ = common dso_local global i64 0, align 8
@FCP_PTA_ORDERED = common dso_local global i64 0, align 8
@FCP_PTA_SIMPLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_build_fcp_cmnd(%struct.bnx2fc_cmd* %0, %struct.fcp_cmnd* %1) #0 {
  %3 = alloca %struct.bnx2fc_cmd*, align 8
  %4 = alloca %struct.fcp_cmnd*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca [2 x i8], align 1
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %3, align 8
  store %struct.fcp_cmnd* %1, %struct.fcp_cmnd** %4, align 8
  %7 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %7, i32 0, i32 3
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %11 = call i32 @memset(%struct.fcp_cmnd* %10, i32 0, i32 40)
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_lun*
  %21 = call i32 @int_to_scsilun(i32 %16, %struct.scsi_lun* %20)
  %22 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @htonl(i32 %24)
  %26 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32 %30, i32 %33, i32 %36)
  %38 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %39 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %47 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %52 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %55 = call i64 @scsi_populate_tag_msg(%struct.scsi_cmnd* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %2
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %69 [
    i32 129, label %61
    i32 128, label %65
  ]

61:                                               ; preds = %57
  %62 = load i64, i64* @FCP_PTA_HEADQ, align 8
  %63 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %73

65:                                               ; preds = %57
  %66 = load i64, i64* @FCP_PTA_ORDERED, align 8
  %67 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %73

69:                                               ; preds = %57
  %70 = load i64, i64* @FCP_PTA_SIMPLE, align 8
  %71 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %72 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %65, %61
  br label %77

74:                                               ; preds = %2
  %75 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %76 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32 @memset(%struct.fcp_cmnd*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @scsi_populate_tag_msg(%struct.scsi_cmnd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

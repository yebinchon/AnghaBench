; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_terminator_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_terminator_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.cumanascsi2_info = type { i32, i64 }

@ALATCH_ENA_TERM = common dso_local global i32 0, align 4
@CUMANASCSI2_ALATCH = common dso_local global i64 0, align 8
@ALATCH_DIS_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, i32)* @cumanascsi_2_terminator_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cumanascsi_2_terminator_ctl(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cumanascsi2_info*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %9, %struct.cumanascsi2_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %14 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @ALATCH_ENA_TERM, align 4
  %16 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %17 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writeb(i32 %15, i64 %20)
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %24 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* @ALATCH_DIS_TERM, align 4
  %26 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %27 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb(i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

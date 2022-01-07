; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_powertec.c_powertecscsi_terminator_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_powertec.c_powertecscsi_terminator_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.powertec_info = type { i64, i32 }

@POWERTEC_TERM_ENABLE = common dso_local global i32 0, align 4
@POWERTEC_TERM_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, i32)* @powertecscsi_terminator_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powertecscsi_terminator_ctl(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.powertec_info*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.powertec_info*
  store %struct.powertec_info* %9, %struct.powertec_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @POWERTEC_TERM_ENABLE, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = load %struct.powertec_info*, %struct.powertec_info** %5, align 8
  %18 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.powertec_info*, %struct.powertec_info** %5, align 8
  %20 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.powertec_info*, %struct.powertec_info** %5, align 8
  %23 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @POWERTEC_TERM_CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writeb(i32 %21, i64 %26)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

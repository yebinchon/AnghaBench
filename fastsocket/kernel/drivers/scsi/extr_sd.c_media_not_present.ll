; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_media_not_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_media_not_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32 }

@NOT_READY = common dso_local global i64 0, align 8
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, %struct.scsi_sense_hdr*)* @media_not_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_not_present(%struct.scsi_disk* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %6 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %7 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NOT_READY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UNIT_ATTENTION, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

23:                                               ; preds = %16, %10
  %24 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 58
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %31 = call i32 @set_media_not_present(%struct.scsi_disk* %30)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %28, %22, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @set_media_not_present(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

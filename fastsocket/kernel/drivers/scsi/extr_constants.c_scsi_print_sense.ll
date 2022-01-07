; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_print_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_print_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_print_sense(i8* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_sense_hdr, align 4
  store i8* %0, i8** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load i32, i32* @KERN_INFO, align 4
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = call i32 @scmd_printk(i32 %6, %struct.scsi_cmnd* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %13 = call i32 @scsi_decode_sense_buffer(i32 %11, i32 %12, %struct.scsi_sense_hdr* %5)
  %14 = call i32 @scsi_show_sense_hdr(%struct.scsi_sense_hdr* %5)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %19 = call i32 @scsi_decode_sense_extras(i32 %17, i32 %18, %struct.scsi_sense_hdr* %5)
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = call i32 @scmd_printk(i32 %20, %struct.scsi_cmnd* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scsi_show_extd_sense(i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @scsi_decode_sense_buffer(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_show_sense_hdr(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_decode_sense_extras(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_show_extd_sense(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

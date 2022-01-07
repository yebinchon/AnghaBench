; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_cmd_print_sense_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_cmd_print_sense_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_cmd_print_sense_hdr(%struct.scsi_cmnd* %0, i8* %1, %struct.scsi_sense_hdr* %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %6, align 8
  %7 = load i32, i32* @KERN_INFO, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @scmd_printk(i32 %7, %struct.scsi_cmnd* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %12 = call i32 @scsi_show_sense_hdr(%struct.scsi_sense_hdr* %11)
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @scmd_printk(i32 %13, %struct.scsi_cmnd* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @scsi_show_extd_sense(i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i8*) #1

declare dso_local i32 @scsi_show_sense_hdr(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_show_extd_sense(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

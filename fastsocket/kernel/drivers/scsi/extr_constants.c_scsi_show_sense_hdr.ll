; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_show_sense_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_show_sense_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Sense Key : %s \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Sense Key : 0x%x \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"[deferred] \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"[current] \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"[descriptor]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_show_sense_hdr(%struct.scsi_sense_hdr* %0) #0 {
  %2 = alloca %struct.scsi_sense_hdr*, align 8
  %3 = alloca i8*, align 8
  store %struct.scsi_sense_hdr* %0, %struct.scsi_sense_hdr** %2, align 8
  %4 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @scsi_sense_key_string(i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %20 = call i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 114
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %18
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i8* @scsi_sense_key_string(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_initname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_initname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_hba_name = type { i8* }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BS_%d : Getting Initiator Name Failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"BS_%d : Initiator Name MBX Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.beiscsi_hba*)* @beiscsi_get_initname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_get_initname(i8* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_hba_name*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %5, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %11 = call i32 @be_cmd_get_initname(%struct.beiscsi_hba* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %18 = call i32 @beiscsi_log(%struct.beiscsi_hba* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %22, i32 %23, %struct.be_mcc_wrb** %8, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %31 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @beiscsi_log(%struct.beiscsi_hba* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %37 = call %struct.be_cmd_hba_name* @embedded_payload(%struct.be_mcc_wrb* %36)
  store %struct.be_cmd_hba_name* %37, %struct.be_cmd_hba_name** %9, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.be_cmd_hba_name*, %struct.be_cmd_hba_name** %9, align 8
  %40 = getelementptr inbounds %struct.be_cmd_hba_name, %struct.be_cmd_hba_name* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %27, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @be_cmd_get_initname(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, %struct.be_mcc_wrb**, i32*) #1

declare dso_local %struct.be_cmd_hba_name* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

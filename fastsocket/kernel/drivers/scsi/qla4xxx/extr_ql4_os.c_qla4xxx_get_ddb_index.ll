; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_ddb_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_ddb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@MAX_DDB_ENTRIES = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Free DDB index not available\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Found a free DDB index at %d\0A\00", align 1
@MBOX_STS_COMMAND_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"DDB index = %d not available trying next\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Free FW DDB not available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_get_ddb_index(%struct.scsi_qla_host* %0, i64* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %47, %30, %2
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @MAX_DDB_ENTRIES, align 8
  %13 = call i64 @find_first_zero_bit(i32 %11, i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MAX_DDB_ENTRIES, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %18, %struct.scsi_qla_host* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @DEBUG2(i32 %20)
  %22 = load i32, i32* @QLA_ERROR, align 4
  store i32 %22, i32* %7, align 4
  br label %60

23:                                               ; preds = %8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_and_set_bit(i64 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %8

31:                                               ; preds = %23
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %32, %struct.scsi_qla_host* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = call i32 @DEBUG2(i32 %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @qla4xxx_req_ddb_entry(%struct.scsi_qla_host* %37, i64 %38, i64* %5)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @QLA_ERROR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @MBOX_STS_COMMAND_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @KERN_INFO, align 4
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %48, %struct.scsi_qla_host* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %8

52:                                               ; preds = %43
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %55 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %53, %struct.scsi_qla_host* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @DEBUG2(i32 %55)
  br label %57

57:                                               ; preds = %52, %31
  %58 = load i64, i64* %6, align 8
  %59 = load i64*, i64** %4, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %17
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @qla4xxx_req_ddb_entry(%struct.scsi_qla_host*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

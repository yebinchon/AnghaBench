; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_get_container_serial_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_get_container_serial_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32 }
%struct.aac_get_serial_resp = type { i32, i32 }
%struct.scsi_cmnd = type { i8*, i32, i32 (%struct.scsi_cmnd*)* }

@CT_OK = common dso_local global i64 0, align 8
@INQD_PDT_DA = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fib*)* @get_container_serial_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_container_serial_callback(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_get_serial_resp*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca [13 x i8], align 1
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %8 = load %struct.fib*, %struct.fib** %4, align 8
  %9 = icmp eq %struct.fib* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %15 = load %struct.fib*, %struct.fib** %4, align 8
  %16 = call i32 @aac_valid_context(%struct.scsi_cmnd* %14, %struct.fib* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.fib*, %struct.fib** %4, align 8
  %21 = call i64 @fib_data(%struct.fib* %20)
  %22 = inttoptr i64 %21 to %struct.aac_get_serial_resp*
  store %struct.aac_get_serial_resp* %22, %struct.aac_get_serial_resp** %5, align 8
  %23 = load %struct.aac_get_serial_resp*, %struct.aac_get_serial_resp** %5, align 8
  %24 = getelementptr inbounds %struct.aac_get_serial_resp, %struct.aac_get_serial_resp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @CT_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %19
  %31 = load i8, i8* @INQD_PDT_DA, align 1
  %32 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = load %struct.aac_get_serial_resp*, %struct.aac_get_serial_resp** %5, align 8
  %43 = getelementptr inbounds %struct.aac_get_serial_resp, %struct.aac_get_serial_resp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call signext i8 @snprintf(i8* %41, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 3
  store i8 %46, i8* %47, align 1
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %49 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %50 = call i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd* %48, i8* %49, i32 13)
  br label %51

51:                                               ; preds = %30, %19
  %52 = load i32, i32* @DID_OK, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* @COMMAND_COMPLETE, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %53, %55
  %57 = load i32, i32* @SAM_STAT_GOOD, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fib*, %struct.fib** %4, align 8
  %62 = call i32 @aac_fib_complete(%struct.fib* %61)
  %63 = load %struct.fib*, %struct.fib** %4, align 8
  %64 = call i32 @aac_fib_free(%struct.fib* %63)
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 2
  %67 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %66, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %69 = call i32 %67(%struct.scsi_cmnd* %68)
  br label %70

70:                                               ; preds = %51, %18
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_valid_context(%struct.scsi_cmnd*, %struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local signext i8 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @scsi_sg_copy_from_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

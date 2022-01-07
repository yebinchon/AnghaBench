; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Future Domain MCS-600/700 Driver %s\0A\00", align 1
@DRIVER_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"HOST #%d: %s\0A\00", align 1
@adapter_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"FIFO Size=0x%x, FIFO Count=%d\0A\00", align 1
@FIFO_Size = common dso_local global i32 0, align 4
@FIFO_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"DriverCalls=%d, Interrupts=%d, BytesRead=%d, BytesWrite=%d\0A\0A\00", align 1
@TOTAL_INTR = common dso_local global i32 0, align 4
@INTR_Processed = common dso_local global i32 0, align 4
@Bytes_Read = common dso_local global i32 0, align 4
@Bytes_Written = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @fd_mcs_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_mcs_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %86

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8**, i8*** %10, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8*, i8** @DRIVER_VERSION, align 8
  %31 = call i64 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** @adapter_name, align 8
  %44 = call i64 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43)
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* @FIFO_Size, align 4
  %54 = load i32, i32* @FIFO_COUNT, align 4
  %55 = call i64 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* @TOTAL_INTR, align 4
  %65 = load i32, i32* @INTR_Processed, align 4
  %66 = load i32, i32* @Bytes_Read, align 4
  %67 = load i32, i32* @Bytes_Written, align 4
  %68 = call i64 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %86

78:                                               ; preds = %20
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %77, %17
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

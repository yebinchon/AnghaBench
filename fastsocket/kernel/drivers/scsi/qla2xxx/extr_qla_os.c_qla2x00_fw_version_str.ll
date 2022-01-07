; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_fw_version_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_fw_version_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%d.%02d.%02d \00", align 1
@BIT_9 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"FLX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"EF\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_qla_host*, i8*)* @qla2x00_fw_version_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla2x00_fw_version_str(%struct.scsi_qla_host* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BIT_9, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcat(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %3, align 8
  br label %69

32:                                               ; preds = %2
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  switch i32 %36, label %49 [
    i32 7, label %37
    i32 23, label %40
    i32 55, label %43
    i32 119, label %46
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %58

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcat(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %58

43:                                               ; preds = %32
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %58

46:                                               ; preds = %32
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcat(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %58

49:                                               ; preds = %32
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %57 = call i32 @strcat(i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %49, %46, %43, %40, %37
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 256
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i8*, i8** %5, align 8
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %67, %28
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

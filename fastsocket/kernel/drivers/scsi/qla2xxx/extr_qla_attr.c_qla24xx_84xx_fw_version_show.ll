; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla24xx_84xx_fw_version_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla24xx_84xx_fw_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qla24xx_84xx_fw_version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_84xx_fw_version_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %12, i32* %8, align 4
  %13 = bitcast [2 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @class_to_shost(%struct.device* %14)
  %16 = call %struct.TYPE_6__* @shost_priv(i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %11, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %21 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %37 = call i32 @qla84xx_verify_chip(%struct.TYPE_6__* %35, i64* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @QLA_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %42, %38
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %46, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @shost_priv(i32) #2

declare dso_local i32 @class_to_shost(%struct.device*) #2

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @qla84xx_verify_chip(%struct.TYPE_6__*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

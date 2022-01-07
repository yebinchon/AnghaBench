; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_get_page2_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_get_page2_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.ses_device*, %struct.TYPE_2__ }
%struct.ses_device = type { i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.enclosure_component = type { i32 }
%struct.scsi_device = type { i32 }

@ENCLOSURE_COMPONENT_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_ARRAY_DEVICE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.enclosure_device*, %struct.enclosure_component*)* @ses_get_page2_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ses_get_page2_descriptor(%struct.enclosure_device* %0, %struct.enclosure_component* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.enclosure_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ses_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.enclosure_component*, %struct.enclosure_component** %5, align 8
  %15 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %18 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.scsi_device* @to_scsi_device(i32 %20)
  store %struct.scsi_device* %21, %struct.scsi_device** %10, align 8
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %23 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %22, i32 0, i32 0
  %24 = load %struct.ses_device*, %struct.ses_device** %23, align 8
  store %struct.ses_device* %24, %struct.ses_device** %11, align 8
  %25 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %26 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 12
  %29 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %30 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 11
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %28, i64 %35
  store i8* %36, i8** %12, align 8
  %37 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %38 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %13, align 8
  %41 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %42 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %43 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %46 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ses_recv_diag(%struct.scsi_device* %41, i32 2, i8* %44, i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %97, %2
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %52 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 10
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %50, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %93, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %59
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %93

85:                                               ; preds = %76, %66
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** %13, align 8
  store i8* %91, i8** %3, align 8
  br label %103

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %84
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %59

96:                                               ; preds = %59
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %12, align 8
  br label %49

102:                                              ; preds = %49
  store i8* null, i8** %3, align 8
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i8*, i8** %3, align 8
  ret i8* %104
}

declare dso_local %struct.scsi_device* @to_scsi_device(i32) #1

declare dso_local i32 @ses_recv_diag(%struct.scsi_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

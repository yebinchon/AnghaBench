; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_set_page2_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_set_page2_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.ses_device*, %struct.TYPE_2__ }
%struct.ses_device = type { i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.enclosure_component = type { i32 }
%struct.scsi_device = type { i32 }

@ENCLOSURE_COMPONENT_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_ARRAY_DEVICE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enclosure_device*, %struct.enclosure_component*, i8*)* @ses_set_page2_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_page2_descriptor(%struct.enclosure_device* %0, %struct.enclosure_component* %1, i8* %2) #0 {
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.enclosure_component*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca %struct.ses_device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.enclosure_component*, %struct.enclosure_component** %5, align 8
  %16 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %19 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.scsi_device* @to_scsi_device(i32 %21)
  store %struct.scsi_device* %22, %struct.scsi_device** %11, align 8
  %23 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %24 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %23, i32 0, i32 0
  %25 = load %struct.ses_device*, %struct.ses_device** %24, align 8
  store %struct.ses_device* %25, %struct.ses_device** %12, align 8
  %26 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %27 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 12
  %30 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %31 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 11
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %29, i64 %36
  store i8* %37, i8** %13, align 8
  %38 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %39 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %44 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 8
  %47 = call i32 @memset(i8* %42, i32 0, i64 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %110, %3
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %51 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 10
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %115

57:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %106, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %58
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %65
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %106

84:                                               ; preds = %75, %65
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @memcpy(i8* %90, i8* %91, i32 4)
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, 128
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 1
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 240
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %100, align 1
  br label %105

105:                                              ; preds = %89, %84
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %58

109:                                              ; preds = %58
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %114, i8** %13, align 8
  br label %48

115:                                              ; preds = %48
  %116 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %117 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %118 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %121 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ses_send_diag(%struct.scsi_device* %116, i32 2, i8* %119, i64 %122)
  ret i32 %123
}

declare dso_local %struct.scsi_device* @to_scsi_device(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ses_send_diag(%struct.scsi_device*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_soft_wwnn_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_soft_wwnn_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@EINVAL = common dso_local global i64 0, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"lpfc%d: soft_wwnn set. Value will take effect upon setting of the soft_wwpn\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_soft_wwnn_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_soft_wwnn_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %10, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_vport*
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 0
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  store %struct.lpfc_hba* %23, %struct.lpfc_hba** %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sub i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34, %4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = icmp ult i32 %43, 16
  br i1 %44, label %72, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp ugt i32 %46, 18
  br i1 %47, label %72, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 17
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 120
  br i1 %56, label %72, label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 18
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 48
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 120
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %60, %51, %45, %42, %37
  %73 = load i64, i64* @EINVAL, align 8
  %74 = sub i64 0, %73
  store i64 %74, i64* %5, align 8
  br label %175

75:                                               ; preds = %66, %57
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %77 = call i32 @memset(i32* %76, i32 0, i32 32)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %157, %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ult i32 %79, 16
  br i1 %80, label %81, label %160

81:                                               ; preds = %78
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sge i32 %84, 97
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 102
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = shl i32 %92, 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 97
  %99 = add nsw i32 %98, 10
  %100 = or i32 %93, %99
  store i32 %100, i32* %13, align 4
  br label %145

101:                                              ; preds = %86, %81
  %102 = load i8*, i8** %8, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sge i32 %104, 65
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load i8*, i8** %8, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 70
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 %112, 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = sub nsw i32 %117, 65
  %119 = add nsw i32 %118, 10
  %120 = or i32 %113, %119
  store i32 %120, i32* %13, align 4
  br label %144

121:                                              ; preds = %106, %101
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 48
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load i8*, i8** %8, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 57
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load i32, i32* %13, align 4
  %133 = shl i32 %132, 4
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  %136 = load i8, i8* %134, align 1
  %137 = sext i8 %136 to i32
  %138 = sub nsw i32 %137, 48
  %139 = or i32 %133, %138
  store i32 %139, i32* %13, align 4
  br label %143

140:                                              ; preds = %126, %121
  %141 = load i64, i64* @EINVAL, align 8
  %142 = sub i64 0, %141
  store i64 %142, i64* %5, align 8
  br label %175

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %111
  br label %145

145:                                              ; preds = %144, %91
  %146 = load i32, i32* %12, align 4
  %147 = urem i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, 255
  %152 = load i32, i32* %12, align 4
  %153 = udiv i32 %152, 2
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %154
  store i32 %151, i32* %155, align 4
  store i32 0, i32* %13, align 4
  br label %156

156:                                              ; preds = %149, %145
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %78

160:                                              ; preds = %78
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %162 = call i32 @wwn_to_u64(i32* %161)
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @KERN_NOTICE, align 4
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dev_printk(i32 %165, i32* %169, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = load i64, i64* %9, align 8
  store i64 %174, i64* %5, align 8
  br label %175

175:                                              ; preds = %160, %140, %72
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wwn_to_u64(i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

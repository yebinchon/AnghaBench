; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptspi.c_mptspi_initTarget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptspi.c_mptspi_initTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.scsi_device = type { i64, i64, i32, i8* }

@TYPE_PROCESSOR = common dso_local global i64 0, align 8
@MPT_TARGET_FLAGS_SAF_TE_ISSUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.scsi_device*)* @mptspi_initTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptspi_initTarget(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.scsi_device* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.scsi_device* %2, %struct.scsi_device** %6, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %137

12:                                               ; preds = %3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %137

16:                                               ; preds = %12
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TYPE_PROCESSOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %16
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load i32, i32* @MPT_TARGET_FLAGS_SAF_TE_ISSUED, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mptspi_writeIOCPage4(%struct.TYPE_13__* %41, i32 %44, i32 %47)
  br label %132

49:                                               ; preds = %27, %16
  %50 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TYPE_PROCESSOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %131

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MPT_TARGET_FLAGS_SAF_TE_ISSUED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %131, label %62

62:                                               ; preds = %55
  %63 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 49
  br i1 %66, label %67, label %130

67:                                               ; preds = %62
  %68 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %69 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 44
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 83
  br i1 %74, label %75, label %129

75:                                               ; preds = %67
  %76 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %77 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 45
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 65
  br i1 %82, label %83, label %129

83:                                               ; preds = %75
  %84 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 46
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 70
  br i1 %90, label %91, label %129

91:                                               ; preds = %83
  %92 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %93 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 47
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 45
  br i1 %98, label %99, label %129

99:                                               ; preds = %91
  %100 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %101 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 48
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 84
  br i1 %106, label %107, label %129

107:                                              ; preds = %99
  %108 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %109 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 49
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 69
  br i1 %114, label %115, label %129

115:                                              ; preds = %107
  %116 = load i32, i32* @MPT_TARGET_FLAGS_SAF_TE_ISSUED, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @mptspi_writeIOCPage4(%struct.TYPE_13__* %121, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %115, %107, %99, %91, %83, %75, %67
  br label %130

130:                                              ; preds = %129, %62
  br label %131

131:                                              ; preds = %130, %55, %49
  br label %132

132:                                              ; preds = %131, %35
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %136 = call i32 @mptspi_setTargetNegoParms(%struct.TYPE_13__* %133, %struct.TYPE_12__* %134, %struct.scsi_device* %135)
  br label %137

137:                                              ; preds = %132, %15, %11
  ret void
}

declare dso_local i32 @mptspi_writeIOCPage4(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mptspi_setTargetNegoParms(%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

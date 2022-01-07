; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_reset_device_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_reset_device_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32*, %struct.TYPE_13__*, i32, i32, i64, i8*, i8*, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*)* }

@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_S_FINISHED = common dso_local global i64 0, align 8
@TW_S_INITIAL = common dso_local global i64 0, align 8
@TW_S_COMPLETED = common dso_local global i64 0, align 8
@DID_RESET = common dso_local global i32 0, align 4
@TW_Q_START = common dso_local global i8* null, align 8
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @twl_reset_device_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_reset_device_extension(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = call i32 @scsi_block_requests(%struct.TYPE_13__* %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @TW_IN_RESET, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i32 @TWL_CLEAR_DB_INTERRUPT(%struct.TYPE_11__* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %107, %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TW_Q_LENGTH, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %110

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TW_S_FINISHED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %106

45:                                               ; preds = %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TW_S_INITIAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TW_S_COMPLETED, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %55
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %105

74:                                               ; preds = %65
  %75 = load i32, i32* @DID_RESET, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %79, i64 %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %76, i32* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %87, i64 %89
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %96, i64 %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = call i32 %93(%struct.TYPE_12__* %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @twl_unmap_scsi_data(%struct.TYPE_11__* %102, i32 %103)
  br label %105

105:                                              ; preds = %74, %65
  br label %106

106:                                              ; preds = %105, %55, %45, %35
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %31

110:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %130, %110
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @TW_Q_LENGTH, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load i64, i64* @TW_S_INITIAL, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %123, i64* %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %111

133:                                              ; preds = %111
  %134 = load i8*, i8** @TW_Q_START, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 7
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @TW_Q_START, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32 %146, i64 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = call i64 @twl_reset_sequence(%struct.TYPE_11__* %149, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %133
  br label %163

153:                                              ; preds = %133
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = call i32 @TWL_UNMASK_INTERRUPTS(%struct.TYPE_11__* %154)
  %156 = load i32, i32* @TW_IN_RESET, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = call i32 @clear_bit(i32 %156, i32* %158)
  %160 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %153, %152
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = call i32 @scsi_unblock_requests(%struct.TYPE_13__* %169)
  br label %171

171:                                              ; preds = %166, %163
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @scsi_block_requests(%struct.TYPE_13__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_11__*) #1

declare dso_local i32 @TWL_CLEAR_DB_INTERRUPT(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @twl_unmap_scsi_data(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @twl_reset_sequence(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TWL_UNMASK_INTERRUPTS(%struct.TYPE_11__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

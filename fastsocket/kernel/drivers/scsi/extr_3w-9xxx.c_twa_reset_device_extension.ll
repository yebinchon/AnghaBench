; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_reset_device_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_reset_device_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32*, i32, i32, %struct.TYPE_10__*, i64, i8*, i8*, i64, i64, i8*, i8*, %struct.TYPE_12__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*)* }

@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_S_FINISHED = common dso_local global i64 0, align 8
@TW_S_INITIAL = common dso_local global i64 0, align 8
@TW_S_COMPLETED = common dso_local global i64 0, align 8
@DID_RESET = common dso_local global i32 0, align 4
@TW_Q_START = common dso_local global i8* null, align 8
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @twa_reset_device_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_reset_device_extension(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @TW_IN_RESET, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @TW_DISABLE_INTERRUPTS(%struct.TYPE_11__* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = call i32 @TW_MASK_COMMAND_INTERRUPT(%struct.TYPE_11__* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %97, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TW_Q_LENGTH, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %100

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TW_S_FINISHED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TW_S_INITIAL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TW_S_COMPLETED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 12
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %58, i64 %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = icmp ne %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %55
  %65 = load i32, i32* @DID_RESET, align 4
  %66 = shl i32 %65, 16
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 12
  %69 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %69, i64 %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %66, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 12
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %77, i64 %79
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 12
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %86, i64 %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i32 %83(%struct.TYPE_12__* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @twa_unmap_scsi_data(%struct.TYPE_11__* %92, i32 %93)
  br label %95

95:                                               ; preds = %64, %55
  br label %96

96:                                               ; preds = %95, %45, %35, %25
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %21

100:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %120, %100
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @TW_Q_LENGTH, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load i64, i64* @TW_S_INITIAL, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %101

123:                                              ; preds = %101
  %124 = load i8*, i8** @TW_Q_START, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 11
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @TW_Q_START, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 10
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 9
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 8
  store i64 0, i64* %133, align 8
  %134 = load i8*, i8** @TW_Q_START, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 7
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @TW_Q_START, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32 %146, i64 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = call i64 @twa_reset_sequence(%struct.TYPE_11__* %149, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %123
  br label %163

153:                                              ; preds = %123
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = call i32 @TW_ENABLE_AND_CLEAR_INTERRUPTS(%struct.TYPE_11__* %154)
  %156 = load i32, i32* @TW_IN_RESET, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = call i32 @clear_bit(i32 %156, i32* %158)
  %160 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %153, %152
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @TW_DISABLE_INTERRUPTS(%struct.TYPE_11__*) #1

declare dso_local i32 @TW_MASK_COMMAND_INTERRUPT(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @twa_unmap_scsi_data(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @twa_reset_sequence(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TW_ENABLE_AND_CLEAR_INTERRUPTS(%struct.TYPE_11__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

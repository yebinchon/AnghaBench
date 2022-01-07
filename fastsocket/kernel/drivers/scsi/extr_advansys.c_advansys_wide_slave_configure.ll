; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_wide_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_wide_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, %struct.TYPE_5__*, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i16, i16, i64, i16, i32, i32 }

@ADV_CHIP_ASC38C1600 = common dso_local global i64 0, align 8
@ASC_MC_TAGQNG_ABLE = common dso_local global i32 0, align 4
@ASC_MC_NUMBER_OF_MAX_CMD = common dso_local global i64 0, align 8
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.TYPE_6__*)* @advansys_wide_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advansys_wide_slave_configure(%struct.scsi_device* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %6, align 2
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %113

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i16, i16* %6, align 2
  %37 = call i32 @advansys_wide_enable_wdtr(i32 %35, i16 zeroext %36)
  br label %38

38:                                               ; preds = %34, %29, %20
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i16, i16* %6, align 2
  %55 = call i32 @advansys_wide_enable_sdtr(i32 %53, i16 zeroext %54)
  br label %56

56:                                               ; preds = %52, %47, %38
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ADV_CHIP_ASC38C1600, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i16, i16* %6, align 2
  %71 = call i32 @advansys_wide_enable_ppr(%struct.TYPE_6__* %68, i32 %69, i16 zeroext %70)
  br label %72

72:                                               ; preds = %67, %62, %56
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i16, i16* %74, align 8
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* %6, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %72
  %82 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ASC_MC_TAGQNG_ABLE, align 4
  %89 = load i16, i16* %7, align 2
  %90 = call i32 @AdvReadWordLram(i32 %87, i32 %88, i16 zeroext %89)
  %91 = load i16, i16* %6, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* %7, align 2
  %94 = zext i16 %93 to i32
  %95 = or i32 %94, %92
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %7, align 2
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ASC_MC_TAGQNG_ABLE, align 4
  %99 = load i16, i16* %7, align 2
  %100 = call i32 @AdvWriteWordLram(i32 %97, i32 %98, i16 zeroext %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* @ASC_MC_NUMBER_OF_MAX_CMD, align 8
  %103 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @AdvWriteByteLram(i32 %101, i64 %107, i32 %110)
  br label %112

112:                                              ; preds = %86, %81, %72
  br label %113

113:                                              ; preds = %112, %2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i16, i16* %115, align 8
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* %6, align 2
  %119 = zext i16 %118 to i32
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %113
  %123 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %124 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %129 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %128, i32 %129, i32 %132)
  br label %142

134:                                              ; preds = %122, %113
  %135 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %136 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %137 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %135, i32 0, i32 %140)
  br label %142

142:                                              ; preds = %134, %127
  ret void
}

declare dso_local i32 @advansys_wide_enable_wdtr(i32, i16 zeroext) #1

declare dso_local i32 @advansys_wide_enable_sdtr(i32, i16 zeroext) #1

declare dso_local i32 @advansys_wide_enable_ppr(%struct.TYPE_6__*, i32, i16 zeroext) #1

declare dso_local i32 @AdvReadWordLram(i32, i32, i16 zeroext) #1

declare dso_local i32 @AdvWriteWordLram(i32, i32, i16 zeroext) #1

declare dso_local i32 @AdvWriteByteLram(i32, i64, i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

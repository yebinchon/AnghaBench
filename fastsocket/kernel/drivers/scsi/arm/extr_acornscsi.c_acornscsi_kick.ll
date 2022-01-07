; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.scsi_cmnd*, %struct.TYPE_12__, %struct.scsi_cmnd* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }

@INTR_IDLE = common dso_local global i32 0, align 4
@SBIC_ASR = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@ASR_BSY = common dso_local global i32 0, align 4
@ASR_CIP = common dso_local global i32 0, align 4
@SBIC_DESTID = common dso_local global i32 0, align 4
@SBIC_CMND = common dso_local global i32 0, align 4
@CMND_SELWITHATN = common dso_local global i32 0, align 4
@PHASE_CONNECTING = common dso_local global i32 0, align 4
@INTR_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @acornscsi_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornscsi_kick(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 7
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %10, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = icmp ne %struct.scsi_cmnd* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.scsi_cmnd* @queue_remove_exclude(i32* %16, i32 %19)
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = icmp ne %struct.scsi_cmnd* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @INTR_IDLE, align 4
  store i32 %24, i32* %2, align 4
  br label %149

25:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 5
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %34, align 8
  %36 = icmp ne %struct.scsi_cmnd* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 5
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %42, align 8
  %44 = call i32 @queue_add_cmd_tail(i32* %40, %struct.scsi_cmnd* %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %49, align 8
  br label %50

50:                                               ; preds = %37, %32, %26
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = load i32, i32* @SBIC_ASR, align 4
  %53 = call i32 @sbic_arm_read(%struct.TYPE_18__* %51, i32 %52)
  %54 = load i32, i32* @ASR_INT, align 4
  %55 = load i32, i32* @ASR_BSY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ASR_CIP, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %50
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = load i32, i32* @SBIC_DESTID, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sbic_arm_write(%struct.TYPE_18__* %62, i32 %63, i32 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = load i32, i32* @SBIC_CMND, align 4
  %72 = load i32, i32* @CMND_SELWITHATN, align 4
  %73 = call i32 @sbic_arm_write(%struct.TYPE_18__* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %50
  %75 = load i32, i32* @PHASE_CONNECTING, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 5
  store %struct.scsi_cmnd* %79, %struct.scsi_cmnd** %81, align 8
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %147

99:                                               ; preds = %74
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %106, %111
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @set_bit(i64 %112, i32 %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @acornscsi_cmdtype(i32 %126)
  switch i32 %127, label %146 [
    i32 128, label %128
    i32 129, label %134
    i32 130, label %140
  ]

128:                                              ; preds = %99
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %146

134:                                              ; preds = %99
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %146

140:                                              ; preds = %99
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %99, %140, %134, %128
  br label %147

147:                                              ; preds = %146, %74
  %148 = load i32, i32* @INTR_PROCESSING, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %23
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.scsi_cmnd* @queue_remove_exclude(i32*, i32) #1

declare dso_local i32 @queue_add_cmd_tail(i32*, %struct.scsi_cmnd*) #1

declare dso_local i32 @sbic_arm_read(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sbic_arm_write(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @acornscsi_cmdtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

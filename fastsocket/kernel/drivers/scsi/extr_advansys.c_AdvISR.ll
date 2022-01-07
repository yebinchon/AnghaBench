; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvISR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i64, i64, i32 }

@IOPB_INTR_STATUS_REG = common dso_local global i32 0, align 4
@ADV_INTR_STATUS_INTRA = common dso_local global i32 0, align 4
@ADV_INTR_STATUS_INTRB = common dso_local global i32 0, align 4
@ADV_INTR_STATUS_INTRC = common dso_local global i32 0, align 4
@ADV_FALSE = common dso_local global i32 0, align 4
@ASC_MC_INTRB_CODE = common dso_local global i32 0, align 4
@ADV_CHIP_ASC3550 = common dso_local global i64 0, align 8
@ADV_CHIP_ASC38C0800 = common dso_local global i64 0, align 8
@ADV_ASYNC_CARRIER_READY_FAILURE = common dso_local global i32 0, align 4
@IOPB_TICKLE = common dso_local global i32 0, align 4
@ADV_TICKLE_A = common dso_local global i32 0, align 4
@ADV_TICKLE_NOP = common dso_local global i32 0, align 4
@ASC_RQ_DONE = common dso_local global i32 0, align 4
@ASC_RQ_GOOD = common dso_local global i32 0, align 4
@QD_NO_ERROR = common dso_local global i32 0, align 4
@ADV_SCSIQ_DONE = common dso_local global i32 0, align 4
@ADV_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @AdvISR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvISR(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IOPB_INTR_STATUS_REG, align 4
  %16 = call i32 @AdvReadByteRegister(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ADV_INTR_STATUS_INTRA, align 4
  %19 = load i32, i32* @ADV_INTR_STATUS_INTRB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ADV_INTR_STATUS_INTRC, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ADV_FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %152

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ADV_INTR_STATUS_INTRB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ASC_MC_INTRB_CODE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @AdvReadByteLram(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ADV_CHIP_ASC38C0800, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42, %32
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @ADV_ASYNC_CARRIER_READY_FAILURE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IOPB_TICKLE, align 4
  %60 = load i32, i32* @ADV_TICKLE_A, align 4
  %61 = call i32 @AdvWriteByteRegister(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @IOPB_TICKLE, align 4
  %70 = load i32, i32* @ADV_TICKLE_NOP, align 4
  %71 = call i32 @AdvWriteByteRegister(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %57
  br label %73

73:                                               ; preds = %72, %52, %48
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @adv_async_callback(%struct.TYPE_10__* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %27
  br label %79

79:                                               ; preds = %112, %78
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @ASC_RQ_DONE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %150

89:                                               ; preds = %79
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = call i64 @ADV_U32_TO_VADDR(i32 %95)
  %97 = inttoptr i64 %96 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %9, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @ASC_RQ_GOOD, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %89
  %103 = load i32, i32* @QD_NO_ERROR, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %102, %89
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @ASC_GET_CARRP(i32 %116)
  %118 = call i64 @ADV_U32_TO_VADDR(i32 %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_11__*
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = call i32 @ADV_VADDR_TO_U32(%struct.TYPE_11__* %124)
  %126 = call i32 @cpu_to_le32(i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, -1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ADV_TID_TO_TIDMASK(i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @ADV_SCSIQ_DONE, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = call i32 @adv_isr_callback(%struct.TYPE_10__* %147, %struct.TYPE_9__* %148)
  br label %79

150:                                              ; preds = %79
  %151 = load i32, i32* @ADV_TRUE, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %25
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @AdvReadByteRegister(i32, i32) #1

declare dso_local i32 @AdvReadByteLram(i32, i32, i32) #1

declare dso_local i32 @AdvWriteByteRegister(i32, i32, i32) #1

declare dso_local i32 @adv_async_callback(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ADV_U32_TO_VADDR(i32) #1

declare dso_local i32 @ASC_GET_CARRP(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ADV_VADDR_TO_U32(%struct.TYPE_11__*) #1

declare dso_local i32 @ADV_TID_TO_TIDMASK(i32) #1

declare dso_local i32 @adv_isr_callback(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

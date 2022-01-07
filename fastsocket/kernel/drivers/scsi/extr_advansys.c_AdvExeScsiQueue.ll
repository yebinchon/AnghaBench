; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvExeScsiQueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvExeScsiQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32 }

@ADV_MAX_TID = common dso_local global i64 0, align 8
@QHSTA_M_INVALID_DEVICE = common dso_local global i32 0, align 4
@QD_WITH_ERROR = common dso_local global i32 0, align 4
@ADV_ERROR = common dso_local global i32 0, align 4
@ADV_BUSY = common dso_local global i32 0, align 4
@ASC_CQ_STOPPER = common dso_local global i32 0, align 4
@ADV_SCSIQ_DONE = common dso_local global i32 0, align 4
@ADV_CHIP_ASC3550 = common dso_local global i64 0, align 8
@ADV_CHIP_ASC38C0800 = common dso_local global i64 0, align 8
@IOPB_TICKLE = common dso_local global i32 0, align 4
@ADV_TICKLE_A = common dso_local global i32 0, align 4
@ADV_TICKLE_NOP = common dso_local global i32 0, align 4
@ADV_CHIP_ASC38C1600 = common dso_local global i64 0, align 8
@IOPDW_COMMA = common dso_local global i32 0, align 4
@ADV_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @AdvExeScsiQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvExeScsiQueue(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADV_MAX_TID, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @QHSTA_M_INVALID_DEVICE, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @QD_WITH_ERROR, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ADV_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %144

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ADV_BUSY, align 4
  store i32 %31, i32* %3, align 4
  br label %144

32:                                               ; preds = %22
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @le32_to_cpu(i8* %35)
  %37 = call i64 @ADV_U32_TO_VADDR(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_8__*
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @ASC_CQ_STOPPER, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @ADV_SCSIQ_DONE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = call i32 @virt_to_bus(%struct.TYPE_8__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 31
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = call i32 @ADV_VADDR_TO_U32(%struct.TYPE_8__* %63)
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = call i32 @ADV_VADDR_TO_U32(%struct.TYPE_8__* %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i8* %92, i8** %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %32
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ADV_CHIP_ASC38C0800, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %105, %32
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @IOPB_TICKLE, align 4
  %114 = load i32, i32* @ADV_TICKLE_A, align 4
  %115 = call i32 @AdvWriteByteRegister(i32 %112, i32 %113, i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @IOPB_TICKLE, align 4
  %124 = load i32, i32* @ADV_TICKLE_NOP, align 4
  %125 = call i32 @AdvWriteByteRegister(i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %111
  br label %142

127:                                              ; preds = %105
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ADV_CHIP_ASC38C1600, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @IOPDW_COMMA, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @le32_to_cpu(i8* %138)
  %140 = call i32 @AdvWriteDWordRegister(i32 %134, i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %133, %127
  br label %142

142:                                              ; preds = %141, %126
  %143 = load i32, i32* @ADV_SUCCESS, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %30, %14
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @ADV_U32_TO_VADDR(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ADV_VADDR_TO_U32(%struct.TYPE_8__*) #1

declare dso_local i32 @AdvWriteByteRegister(i32, i32, i32) #1

declare dso_local i32 @AdvWriteDWordRegister(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

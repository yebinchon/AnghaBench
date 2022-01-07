; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvResetChipAndSB.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvResetChipAndSB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@ADV_MAX_TID = common dso_local global i32 0, align 4
@ASC_MC_WDTR_ABLE = common dso_local global i32 0, align 4
@ASC_MC_SDTR_ABLE = common dso_local global i32 0, align 4
@ADV_CHIP_ASC38C1600 = common dso_local global i64 0, align 8
@ASC_MC_PPR_ABLE = common dso_local global i32 0, align 4
@ASC_MC_TAGQNG_ABLE = common dso_local global i32 0, align 4
@ASC_MC_NUMBER_OF_MAX_CMD = common dso_local global i64 0, align 8
@ASC_MC_BIOS_SIGNATURE = common dso_local global i32 0, align 4
@IOPW_RISC_CSR = common dso_local global i32 0, align 4
@ADV_RISC_CSR_STOP = common dso_local global i32 0, align 4
@IOPW_CTRL_REG = common dso_local global i32 0, align 4
@ADV_CTRL_REG_CMD_RESET = common dso_local global i32 0, align 4
@ADV_CTRL_REG_CMD_WR_IO_REG = common dso_local global i32 0, align 4
@ADV_CHIP_ASC38C0800 = common dso_local global i64 0, align 8
@ADV_TRUE = common dso_local global i32 0, align 4
@ADV_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @AdvResetChipAndSB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvResetChipAndSB(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* @ADV_MAX_TID, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ASC_MC_WDTR_ABLE, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @AdvReadWordLram(i32 %21, i32 %22, i64 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ASC_MC_SDTR_ABLE, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @AdvReadWordLram(i32 %25, i32 %26, i64 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ADV_CHIP_ASC38C1600, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ASC_MC_PPR_ABLE, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @AdvReadWordLram(i32 %35, i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ASC_MC_TAGQNG_ABLE, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @AdvReadWordLram(i32 %40, i32 %41, i64 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %59, %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ADV_MAX_TID, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* @ASC_MC_NUMBER_OF_MAX_CMD, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %17, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AdvReadByteLram(i32 %49, i64 %53, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ASC_MC_BIOS_SIGNATURE, align 4
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @AdvReadWordLram(i32 %63, i32 %64, i64 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ASC_MC_BIOS_SIGNATURE, align 4
  %69 = call i32 @AdvWriteWordLram(i32 %67, i32 %68, i64 0)
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @IOPW_RISC_CSR, align 4
  %72 = load i32, i32* @ADV_RISC_CSR_STOP, align 4
  %73 = call i32 @AdvWriteWordRegister(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @IOPW_CTRL_REG, align 4
  %76 = load i32, i32* @ADV_CTRL_REG_CMD_RESET, align 4
  %77 = call i32 @AdvWriteWordRegister(i32 %74, i32 %75, i32 %76)
  %78 = call i32 @mdelay(i32 100)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @IOPW_CTRL_REG, align 4
  %81 = load i32, i32* @ADV_CTRL_REG_CMD_WR_IO_REG, align 4
  %82 = call i32 @AdvWriteWordRegister(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ADV_CHIP_ASC38C1600, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %62
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = call i32 @AdvInitAsc38C1600Driver(%struct.TYPE_6__* %91)
  store i32 %92, i32* %3, align 4
  br label %106

93:                                               ; preds = %62
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ADV_CHIP_ASC38C0800, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %101 = call i32 @AdvInitAsc38C0800Driver(%struct.TYPE_6__* %100)
  store i32 %101, i32* %3, align 4
  br label %105

102:                                              ; preds = %93
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = call i32 @AdvInitAsc3550Driver(%struct.TYPE_6__* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @ADV_TRUE, align 4
  store i32 %110, i32* %3, align 4
  br label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @ADV_FALSE, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @ASC_MC_BIOS_SIGNATURE, align 4
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @AdvWriteWordLram(i32 %114, i32 %115, i64 %116)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @ASC_MC_WDTR_ABLE, align 4
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @AdvWriteWordLram(i32 %118, i32 %119, i64 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ASC_MC_SDTR_ABLE, align 4
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @AdvWriteWordLram(i32 %122, i32 %123, i64 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ADV_CHIP_ASC38C1600, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %113
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @ASC_MC_PPR_ABLE, align 4
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @AdvWriteWordLram(i32 %132, i32 %133, i64 %134)
  br label %136

136:                                              ; preds = %131, %113
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @ASC_MC_TAGQNG_ABLE, align 4
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @AdvWriteWordLram(i32 %137, i32 %138, i64 %139)
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %156, %136
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @ADV_MAX_TID, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = load i64, i64* @ASC_MC_NUMBER_OF_MAX_CMD, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %17, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @AdvWriteByteLram(i32 %146, i64 %150, i32 %154)
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %141

159:                                              ; preds = %141
  %160 = load i32, i32* %3, align 4
  %161 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AdvReadWordLram(i32, i32, i64) #2

declare dso_local i32 @AdvReadByteLram(i32, i64, i32) #2

declare dso_local i32 @AdvWriteWordLram(i32, i32, i64) #2

declare dso_local i32 @AdvWriteWordRegister(i32, i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @AdvInitAsc38C1600Driver(%struct.TYPE_6__*) #2

declare dso_local i32 @AdvInitAsc38C0800Driver(%struct.TYPE_6__*) #2

declare dso_local i32 @AdvInitAsc3550Driver(%struct.TYPE_6__*) #2

declare dso_local i32 @AdvWriteByteLram(i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

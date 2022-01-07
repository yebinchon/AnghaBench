; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__, i32, %struct.TYPE_18__, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_22__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_22__, i32 }
%struct.TYPE_18__ = type { i32 (i32, %struct.TYPE_22__*, i32, i32)*, i32, i32 (i32, %struct.TYPE_22__*, i32, i32)* }
%struct.TYPE_16__ = type { i64 }

@LOG_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"starttransfer: buffer %p length 0x%06x reqlen 0x%06x\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"null buffer passed to fas216_starttransfer\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SCp: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Cmnd SCp: \00", align 1
@PHASE_DATAOUT = common dso_local global i64 0, align 8
@DMA_OUT = common dso_local global i32 0, align 4
@DMA_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"PIO transfer\00", align 1
@REG_SOF = common dso_local global i32 0, align 4
@REG_STP = common dso_local global i32 0, align 4
@CMD_TRANSFERINFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"pseudo transfer\00", align 1
@CMD_WITHDMA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"block dma transfer\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"total dma transfer\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"invalid FAS216 DMA type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @fas216_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_transfer(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = load i32, i32* @LOG_BUFFER, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %5, i32 %6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16, i32 %21)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %31 = load i32, i32* @LOG_ERROR, align 4
  %32 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %30, i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = call i32 @print_SCp(%struct.TYPE_22__* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = call i32 @print_SCp(%struct.TYPE_22__* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %185

42:                                               ; preds = %1
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 129, i32* %4, align 4
  br label %59

58:                                               ; preds = %42
  store i32 131, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PHASE_DATAOUT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @DMA_OUT, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @DMA_IN, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32 (i32, %struct.TYPE_22__*, i32, i32)*, i32 (i32, %struct.TYPE_22__*, i32, i32)** %73, align 8
  %75 = icmp ne i32 (i32, %struct.TYPE_22__*, i32, i32)* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32 (i32, %struct.TYPE_22__*, i32, i32)*, i32 (i32, %struct.TYPE_22__*, i32, i32)** %79, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 %80(i32 %83, %struct.TYPE_22__* %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %76, %70
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 129
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @fas216_set_stc(%struct.TYPE_21__* %98, i32 %103)
  br label %113

105:                                              ; preds = %90
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @fas216_set_stc(%struct.TYPE_21__* %106, i32 %111)
  br label %113

113:                                              ; preds = %105, %97
  %114 = load i32, i32* %4, align 4
  switch i32 %114, label %179 [
    i32 131, label %115
    i32 130, label %135
    i32 128, label %161
    i32 129, label %170
  ]

115:                                              ; preds = %113
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %117 = load i32, i32* @LOG_BUFFER, align 4
  %118 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %116, i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %120 = load i32, i32* @REG_SOF, align 4
  %121 = call i32 @fas216_writeb(%struct.TYPE_21__* %119, i32 %120, i32 0)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %123 = load i32, i32* @REG_STP, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @fas216_writeb(%struct.TYPE_21__* %122, i32 %123, i32 %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %131 = call i32 @fas216_cmd(%struct.TYPE_21__* %129, i32 %130)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @fas216_pio(%struct.TYPE_21__* %132, i32 %133)
  br label %185

135:                                              ; preds = %113
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %137 = load i32, i32* @LOG_BUFFER, align 4
  %138 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %136, i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %140 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %141 = load i32, i32* @CMD_WITHDMA, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @fas216_cmd(%struct.TYPE_21__* %139, i32 %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load i32 (i32, %struct.TYPE_22__*, i32, i32)*, i32 (i32, %struct.TYPE_22__*, i32, i32)** %146, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i32, i32* %3, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 %147(i32 %150, %struct.TYPE_22__* %153, i32 %154, i32 %159)
  br label %185

161:                                              ; preds = %113
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %163 = load i32, i32* @LOG_BUFFER, align 4
  %164 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %162, i32 %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %166 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %167 = load i32, i32* @CMD_WITHDMA, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @fas216_cmd(%struct.TYPE_21__* %165, i32 %168)
  br label %185

170:                                              ; preds = %113
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %172 = load i32, i32* @LOG_BUFFER, align 4
  %173 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %171, i32 %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %175 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %176 = load i32, i32* @CMD_WITHDMA, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @fas216_cmd(%struct.TYPE_21__* %174, i32 %177)
  br label %185

179:                                              ; preds = %113
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %181 = load i32, i32* @LOG_BUFFER, align 4
  %182 = load i32, i32* @LOG_ERROR, align 4
  %183 = or i32 %181, %182
  %184 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @fas216_log(%struct.TYPE_21__* %180, i32 %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %185

185:                                              ; preds = %29, %179, %170, %161, %135, %115
  ret void
}

declare dso_local i32 @fas216_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @print_SCp(%struct.TYPE_22__*, i8*, i8*) #1

declare dso_local i32 @fas216_set_stc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @fas216_pio(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c___fas216_start_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c___fas216_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.message = type { i32, i32, i32* }

@CMD_NOP = common dso_local global i32 0, align 4
@CMD_WITHDMA = common dso_local global i32 0, align 4
@CMD_FLUSHFIFO = common dso_local global i32 0, align 4
@REG_SDID = common dso_local global i32 0, align 4
@REG_STIM = common dso_local global i32 0, align 4
@PHASE_SELSTEPS = common dso_local global i32 0, align 4
@REG_FF = common dso_local global i32 0, align 4
@REG_CFIS = common dso_local global i32 0, align 4
@CFIS_CF = common dso_local global i32 0, align 4
@CMD_SELECTATN = common dso_local global i32 0, align 4
@CMD_SELECTATN3 = common dso_local global i32 0, align 4
@CMD_SELECTATNSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.scsi_cmnd*)* @__fas216_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fas216_start_command(%struct.TYPE_16__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.message*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i32 @fas216_set_stc(%struct.TYPE_16__* %10, i32 0)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = load i32, i32* @CMD_NOP, align 4
  %14 = load i32, i32* @CMD_WITHDMA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @fas216_cmd(%struct.TYPE_16__* %12, i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = load i32, i32* @CMD_FLUSHFIFO, align 4
  %19 = call i32 @fas216_cmd(%struct.TYPE_16__* %17, i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = load i32, i32* @REG_SDID, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @BUSID(i64 %26)
  %28 = call i32 @fas216_writeb(%struct.TYPE_16__* %20, i32 %21, i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = load i32, i32* @REG_STIM, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fas216_writeb(%struct.TYPE_16__* %29, i32 %30, i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @fas216_set_sync(%struct.TYPE_16__* %36, i64 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = call i32 @msgqueue_msglength(i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %129

52:                                               ; preds = %49, %2
  store i32 0, i32* %7, align 4
  %53 = load i32, i32* @PHASE_SELSTEPS, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %86, %52
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = call %struct.message* @msgqueue_getmsg(i32* %60, i32 %61)
  store %struct.message* %63, %struct.message** %6, align 8
  %64 = icmp ne %struct.message* %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.message*, %struct.message** %6, align 8
  %69 = getelementptr inbounds %struct.message, %struct.message* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = load i32, i32* @REG_FF, align 4
  %75 = load %struct.message*, %struct.message** %6, align 8
  %76 = getelementptr inbounds %struct.message, %struct.message* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fas216_writeb(%struct.TYPE_16__* %73, i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %66

86:                                               ; preds = %66
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = load i32, i32* @REG_CFIS, align 4
  %90 = call i32 @fas216_readb(%struct.TYPE_16__* %88, i32 %89)
  %91 = load i32, i32* @CFIS_CF, align 4
  %92 = and i32 %90, %91
  %93 = sub nsw i32 %87, %92
  %94 = load %struct.message*, %struct.message** %6, align 8
  %95 = getelementptr inbounds %struct.message, %struct.message* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %57

96:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = load i32, i32* @REG_FF, align 4
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @fas216_writeb(%struct.TYPE_16__* %104, i32 %105, i32 %112)
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %97

117:                                              ; preds = %97
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = load i32, i32* @CMD_SELECTATN, align 4
  %123 = call i32 @fas216_cmd(%struct.TYPE_16__* %121, i32 %122)
  br label %128

124:                                              ; preds = %117
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = load i32, i32* @CMD_SELECTATN3, align 4
  %127 = call i32 @fas216_cmd(%struct.TYPE_16__* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %147

129:                                              ; preds = %49
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = call %struct.message* @msgqueue_getmsg(i32* %132, i32 0)
  store %struct.message* %133, %struct.message** %9, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = load i32, i32* @REG_FF, align 4
  %136 = load %struct.message*, %struct.message** %9, align 8
  %137 = getelementptr inbounds %struct.message, %struct.message* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @fas216_writeb(%struct.TYPE_16__* %134, i32 %135, i32 %140)
  %142 = load %struct.message*, %struct.message** %9, align 8
  %143 = getelementptr inbounds %struct.message, %struct.message* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = load i32, i32* @CMD_SELECTATNSTOP, align 4
  %146 = call i32 @fas216_cmd(%struct.TYPE_16__* %144, i32 %145)
  br label %147

147:                                              ; preds = %129, %128
  ret void
}

declare dso_local i32 @fas216_set_stc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @BUSID(i64) #1

declare dso_local i32 @fas216_set_sync(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @msgqueue_msglength(i32*) #1

declare dso_local %struct.message* @msgqueue_getmsg(i32*, i32) #1

declare dso_local i32 @fas216_readb(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

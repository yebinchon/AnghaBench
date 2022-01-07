; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_analyze_tf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_analyze_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ata_taskfile = type { i32, i32 }

@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_DRDY = common dso_local global i32 0, align 4
@AC_ERR_HSM = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_ICRC = common dso_local global i32 0, align 4
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@ATA_UNC = common dso_local global i32 0, align 4
@AC_ERR_MEDIA = common dso_local global i32 0, align 4
@ATA_IDNF = common dso_local global i32 0, align 4
@AC_ERR_INVALID = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, %struct.ata_taskfile*)* @ata_eh_analyze_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_analyze_tf(%struct.ata_queued_cmd* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %4, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %11 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ATA_BUSY, align 4
  %18 = load i32, i32* @ATA_DRQ, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ATA_DRDY, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = load i32, i32* @ATA_DRDY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @AC_ERR_HSM, align 4
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @ATA_EH_RESET, align 4
  store i32 %31, i32* %3, align 4
  br label %143

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ATA_ERR, align 4
  %35 = load i32, i32* @ATA_DF, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @AC_ERR_DEV, align 4
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %143

46:                                               ; preds = %39
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %126 [
    i32 129, label %52
    i32 128, label %86
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ATA_ICRC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ATA_UNC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @AC_ERR_MEDIA, align 4
  %70 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ATA_IDNF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @AC_ERR_INVALID, align 4
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %74
  br label %126

86:                                               ; preds = %46
  %87 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %87, i32 0, i32 5
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %86
  %96 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %97 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %107, 4
  %109 = call i32 @atapi_eh_request_sense(%struct.TYPE_8__* %98, i32 %103, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %95
  %113 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %114 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %124

118:                                              ; preds = %95
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %121 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %112
  br label %125

125:                                              ; preds = %124, %86
  br label %126

126:                                              ; preds = %125, %46, %85
  %127 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %128 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @AC_ERR_HSM, align 4
  %131 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %129, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %126
  %138 = load i32, i32* @ATA_EH_RESET, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %126
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %45, %25
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @atapi_eh_request_sense(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

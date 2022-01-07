; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_atapi_qc_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_atapi_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i64*, i32 (%struct.scsi_cmnd*)*, %struct.scsi_cmnd*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.scsi_cmnd = type { i32*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"ENTER, err_mask 0x%X\0A\00", align 1
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i8* null, align 8
@AC_ERR_DEV = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @atapi_qc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @VPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 6
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i1 [ true, %24 ], [ %33, %27 ]
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i1 [ false, %1 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %36
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %50 = call i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %53 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %61 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %60, i32 0, i32 5
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %51
  %67 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %68 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %69 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %68, i32 0, i32 4
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %69, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %73 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %72, i32 0, i32 3
  %74 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %73, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %76 = call i32 %74(%struct.scsi_cmnd* %75)
  %77 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %78 = call i32 @ata_qc_free(%struct.ata_queued_cmd* %77)
  br label %141

79:                                               ; preds = %36
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @AC_ERR_DEV, align 4
  %82 = and i32 %80, %81
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %90 = call i32 @atapi_request_sense(%struct.ata_queued_cmd* %89)
  br label %141

91:                                               ; preds = %79
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %97 = call i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd* %96)
  br label %132

98:                                               ; preds = %91
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @INQUIRY, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %98
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 3
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %115 = call i32* @ata_scsi_rbuf_get(%struct.scsi_cmnd* %114, i32 1, i64* %6)
  store i32* %115, i32** %7, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 5, i32* %122, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 50, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = call i32 @ata_scsi_rbuf_put(%struct.scsi_cmnd* %126, i32 1, i64* %6)
  br label %128

128:                                              ; preds = %125, %107, %98
  %129 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %95
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %135 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %134, i32 0, i32 3
  %136 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %135, align 8
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %138 = call i32 %136(%struct.scsi_cmnd* %137)
  %139 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %140 = call i32 @ata_qc_free(%struct.ata_queued_cmd* %139)
  br label %141

141:                                              ; preds = %133, %85, %66
  ret void
}

declare dso_local i32 @VPRINTK(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_qc_free(%struct.ata_queued_cmd*) #1

declare dso_local i32 @atapi_request_sense(%struct.ata_queued_cmd*) #1

declare dso_local i32* @ata_scsi_rbuf_get(%struct.scsi_cmnd*, i32, i64*) #1

declare dso_local i32 @ata_scsi_rbuf_put(%struct.scsi_cmnd*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

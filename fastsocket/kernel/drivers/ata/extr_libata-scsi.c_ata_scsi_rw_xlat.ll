; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_rw_xlat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_rw_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_TFLAG_FUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no-byte command\0A\00", align 1
@ATA_QCFLAG_IO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_rw_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_rw_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 5
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %20, %1
  %31 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %100 [
    i32 133, label %38
    i32 130, label %38
    i32 131, label %61
    i32 128, label %61
    i32 132, label %77
    i32 129, label %77
  ]

38:                                               ; preds = %34, %34
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 10
  %43 = zext i1 %42 to i32
  %44 = call i32 @unlikely(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %146

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @scsi_10_lba_len(i32* %48, i32* %7, i32* %8)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 8
  %54 = call i32 @unlikely(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %47
  br label %102

61:                                               ; preds = %34, %34
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 6
  %66 = zext i1 %65 to i32
  %67 = call i32 @unlikely(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %146

70:                                               ; preds = %61
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @scsi_6_lba_len(i32* %71, i32* %7, i32* %8)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 256, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %102

77:                                               ; preds = %34, %34
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 16
  %82 = zext i1 %81 to i32
  %83 = call i32 @unlikely(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %146

86:                                               ; preds = %77
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @scsi_16_lba_len(i32* %87, i32* %7, i32* %8)
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 8
  %93 = call i32 @unlikely(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %86
  br label %102

100:                                              ; preds = %34
  %101 = call i32 @DPRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %146

102:                                              ; preds = %99, %76, %60
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %154

106:                                              ; preds = %102
  %107 = load i32, i32* @ATA_QCFLAG_IO, align 4
  %108 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %109 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %112, %117
  %119 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %120 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %122 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %121, i32 0, i32 3
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %124 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %130 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ata_build_rw_tf(i32* %122, i32 %125, i32 %126, i32 %127, i32 %128, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i64 @likely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %158

139:                                              ; preds = %106
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @ERANGE, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %150

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %100, %85, %69, %46
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %149 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %147, i32 %148, i32 36, i32 0)
  store i32 1, i32* %2, align 4
  br label %158

150:                                              ; preds = %144
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %152 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %153 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %151, i32 %152, i32 33, i32 0)
  store i32 1, i32* %2, align 4
  br label %158

154:                                              ; preds = %105
  %155 = load i32, i32* @SAM_STAT_GOOD, align 4
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %157 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  store i32 1, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %150, %146, %138
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @scsi_10_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @scsi_6_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @scsi_16_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @ata_build_rw_tf(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

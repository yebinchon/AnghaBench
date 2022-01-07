; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-eh.c_ide_ata_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-eh.c_ide_ata_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }
%struct.request = type { i32 }

@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@IDE_DFLAG_NOWERR = common dso_local global i32 0, align 4
@ERROR_RESET = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_ABORTED = common dso_local global i32 0, align 4
@IDE_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_CMD_INIT_DEV_PARAMS = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i32 0, align 4
@BAD_CRC = common dso_local global i32 0, align 4
@ATA_BBK = common dso_local global i32 0, align 4
@ATA_UNC = common dso_local global i32 0, align 4
@ERROR_MAX = common dso_local global i32 0, align 4
@ATA_TRK0NF = common dso_local global i32 0, align 4
@ERROR_RECAL = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@IDE_HFLAG_ERROR_STOPS_FIFO = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@IDE_SFLAG_RECALIBRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.request*, i32, i32)* @ide_ata_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_ata_error(%struct.TYPE_12__* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ATA_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ATA_DF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IDE_DFLAG_NOWERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24, %4
  %32 = load i32, i32* @ERROR_RESET, align 4
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %104

37:                                               ; preds = %24, %19
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ATA_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ATA_ABORTED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IDE_DFLAG_LBA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = call i32 %58(%struct.TYPE_11__* %59)
  %61 = load i32, i32* @ATA_CMD_INIT_DEV_PARAMS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @ide_stopped, align 4
  store i32 %64, i32* %5, align 4
  br label %208

65:                                               ; preds = %53, %46
  br label %102

66:                                               ; preds = %42
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BAD_CRC, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @BAD_CRC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %101

77:                                               ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @ATA_BBK, align 4
  %80 = load i32, i32* @ATA_UNC, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @ERROR_MAX, align 4
  %86 = load %struct.request*, %struct.request** %7, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %100

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @ATA_TRK0NF, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @ERROR_RECAL, align 4
  %95 = load %struct.request*, %struct.request** %7, align 8
  %96 = getelementptr inbounds %struct.request, %struct.request* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %88
  br label %100

100:                                              ; preds = %99, %84
  br label %101

101:                                              ; preds = %100, %72
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %37
  br label %104

104:                                              ; preds = %103, %31
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ATA_DRQ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %104
  %110 = load %struct.request*, %struct.request** %7, align 8
  %111 = call i64 @rq_data_dir(%struct.request* %110)
  %112 = load i64, i64* @READ, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %109
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IDE_HFLAG_ERROR_STOPS_FIFO, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  br label %131

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i32 [ %129, %126 ], [ 1, %130 ]
  store i32 %132, i32* %11, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = load i64, i64* @READ, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @SECTOR_SIZE, align 4
  %137 = mul nsw i32 %135, %136
  %138 = call i32 @ide_pad_transfer(%struct.TYPE_12__* %133, i64 %134, i32 %137)
  br label %139

139:                                              ; preds = %131, %114, %109, %104
  %140 = load %struct.request*, %struct.request** %7, align 8
  %141 = getelementptr inbounds %struct.request, %struct.request* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ERROR_MAX, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %139
  %146 = load %struct.request*, %struct.request** %7, align 8
  %147 = call i64 @blk_noretry_request(%struct.request* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145, %139
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = load %struct.request*, %struct.request** %7, align 8
  %152 = call i32 @ide_kill_rq(%struct.TYPE_12__* %150, %struct.request* %151)
  %153 = load i32, i32* @ide_stopped, align 4
  store i32 %153, i32* %5, align 4
  br label %208

154:                                              ; preds = %145
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %158, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = call i32 %159(%struct.TYPE_11__* %160)
  %162 = load i32, i32* @ATA_BUSY, align 4
  %163 = load i32, i32* @ATA_DRQ, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %154
  %168 = load i32, i32* @ERROR_RESET, align 4
  %169 = load %struct.request*, %struct.request** %7, align 8
  %170 = getelementptr inbounds %struct.request, %struct.request* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %154
  %174 = load %struct.request*, %struct.request** %7, align 8
  %175 = getelementptr inbounds %struct.request, %struct.request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ERROR_RESET, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @ERROR_RESET, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load %struct.request*, %struct.request** %7, align 8
  %183 = getelementptr inbounds %struct.request, %struct.request* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = call i32 @ide_do_reset(%struct.TYPE_12__* %186)
  store i32 %187, i32* %5, align 4
  br label %208

188:                                              ; preds = %173
  %189 = load %struct.request*, %struct.request** %7, align 8
  %190 = getelementptr inbounds %struct.request, %struct.request* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ERROR_RECAL, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @ERROR_RECAL, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load i32, i32* @IDE_SFLAG_RECALIBRATE, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %188
  %203 = load %struct.request*, %struct.request** %7, align 8
  %204 = getelementptr inbounds %struct.request, %struct.request* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* @ide_stopped, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %202, %181, %149, %63
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @ide_pad_transfer(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @blk_noretry_request(%struct.request*) #1

declare dso_local i32 @ide_kill_rq(%struct.TYPE_12__*, %struct.request*) #1

declare dso_local i32 @ide_do_reset(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_7__*, %struct.TYPE_8__, %struct.ata_port* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ata_port = type { i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_port*, %struct.TYPE_8__*)*, i32 (%struct.ata_queued_cmd*)* }

@ATA_FLAG_PIO_POLLING = common dso_local global i32 0, align 4
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_DFLAG_CDB_INTR = common dso_local global i32 0, align 4
@HSM_ST_LAST = common dso_local global i8* null, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@HSM_ST_FIRST = common dso_local global i8* null, align 8
@HSM_ST = common dso_local global i8* null, align 8
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 2
  %7 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  store %struct.ata_port* %7, %struct.ata_port** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ATA_FLAG_PIO_POLLING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %38 [
    i32 128, label %19
    i32 129, label %19
    i32 131, label %19
    i32 132, label %19
    i32 133, label %26
  ]

19:                                               ; preds = %14, %14, %14, %14
  %20 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  br label %39

26:                                               ; preds = %14
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @BUG()
  br label %37

37:                                               ; preds = %35, %26
  br label %39

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %38, %37, %19
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ata_dev_select(%struct.ata_port* %41, i32 %46, i32 1, i32 0)
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %239 [
    i32 129, label %52
    i32 130, label %82
    i32 128, label %116
    i32 131, label %161
    i32 132, label %161
    i32 133, label %200
  ]

52:                                               ; preds = %40
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %62 = call i32 @ata_qc_set_polling(%struct.ata_queued_cmd* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %65 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %66 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %65, i32 0, i32 1
  %67 = call i32 @ata_tf_to_host(%struct.ata_port* %64, %struct.TYPE_8__* %66)
  %68 = load i8*, i8** @HSM_ST_LAST, align 8
  %69 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %70 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %72 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %80 = call i32 @ata_sff_queue_pio_task(%struct.ata_port* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %63
  br label %242

82:                                               ; preds = %40
  %83 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %84 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @WARN_ON_ONCE(i32 %88)
  %90 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32 (%struct.ata_port*, %struct.TYPE_8__*)*, i32 (%struct.ata_port*, %struct.TYPE_8__*)** %93, align 8
  %95 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %96 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %97 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %96, i32 0, i32 1
  %98 = call i32 %94(%struct.ata_port* %95, %struct.TYPE_8__* %97)
  %99 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %100 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %102, align 8
  %104 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %105 = call i32 %103(%struct.ata_queued_cmd* %104)
  %106 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %107 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %109, align 8
  %111 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %112 = call i32 %110(%struct.ata_queued_cmd* %111)
  %113 = load i8*, i8** @HSM_ST_LAST, align 8
  %114 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %115 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %242

116:                                              ; preds = %40
  %117 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %126 = call i32 @ata_qc_set_polling(%struct.ata_queued_cmd* %125)
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %129 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %130 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %129, i32 0, i32 1
  %131 = call i32 @ata_tf_to_host(%struct.ata_port* %128, %struct.TYPE_8__* %130)
  %132 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %133 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %127
  %140 = load i8*, i8** @HSM_ST_FIRST, align 8
  %141 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %142 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %144 = call i32 @ata_sff_queue_pio_task(%struct.ata_port* %143, i32 0)
  br label %160

145:                                              ; preds = %127
  %146 = load i8*, i8** @HSM_ST, align 8
  %147 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %148 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %150 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %158 = call i32 @ata_sff_queue_pio_task(%struct.ata_port* %157, i32 0)
  br label %159

159:                                              ; preds = %156, %145
  br label %160

160:                                              ; preds = %159, %139
  br label %242

161:                                              ; preds = %40, %40
  %162 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %163 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %171 = call i32 @ata_qc_set_polling(%struct.ata_queued_cmd* %170)
  br label %172

172:                                              ; preds = %169, %161
  %173 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %174 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %175 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %174, i32 0, i32 1
  %176 = call i32 @ata_tf_to_host(%struct.ata_port* %173, %struct.TYPE_8__* %175)
  %177 = load i8*, i8** @HSM_ST_FIRST, align 8
  %178 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %179 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %181 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %180, i32 0, i32 0
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %172
  %189 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %190 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188, %172
  %197 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %198 = call i32 @ata_sff_queue_pio_task(%struct.ata_port* %197, i32 0)
  br label %199

199:                                              ; preds = %196, %188
  br label %242

200:                                              ; preds = %40
  %201 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %202 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %206 = and i32 %204, %205
  %207 = call i32 @WARN_ON_ONCE(i32 %206)
  %208 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %209 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %208, i32 0, i32 2
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32 (%struct.ata_port*, %struct.TYPE_8__*)*, i32 (%struct.ata_port*, %struct.TYPE_8__*)** %211, align 8
  %213 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %214 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %215 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %214, i32 0, i32 1
  %216 = call i32 %212(%struct.ata_port* %213, %struct.TYPE_8__* %215)
  %217 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %218 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %217, i32 0, i32 2
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %220, align 8
  %222 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %223 = call i32 %221(%struct.ata_queued_cmd* %222)
  %224 = load i8*, i8** @HSM_ST_FIRST, align 8
  %225 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %226 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  %227 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %228 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %200
  %236 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %237 = call i32 @ata_sff_queue_pio_task(%struct.ata_port* %236, i32 0)
  br label %238

238:                                              ; preds = %235, %200
  br label %242

239:                                              ; preds = %40
  %240 = call i32 @WARN_ON_ONCE(i32 1)
  %241 = load i32, i32* @AC_ERR_SYSTEM, align 4
  store i32 %241, i32* %2, align 4
  br label %243

242:                                              ; preds = %238, %199, %160, %82, %81
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %239
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ata_dev_select(%struct.ata_port*, i32, i32, i32) #1

declare dso_local i32 @ata_qc_set_polling(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_tf_to_host(%struct.ata_port*, %struct.TYPE_8__*) #1

declare dso_local i32 @ata_sff_queue_pio_task(%struct.ata_port*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

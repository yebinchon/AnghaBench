; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_abort_srb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_abort_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i32, %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk*, i32*, %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk*, i64 }
%struct.scsi_ctrl_blk = type { i32, i64, i64, %struct.scsi_ctrl_blk*, i32 (i32*, i32*)*, i8*, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@TUL_Mask = common dso_local global i64 0, align 8
@SCSI_ABORT_SNOOZE = common dso_local global i32 0, align 4
@SCSI_ABORT_BUSY = common dso_local global i32 0, align 4
@HOST_ABORTED = common dso_local global i8* null, align 8
@SCF_DONE = common dso_local global i32 0, align 4
@SCF_POST = common dso_local global i32 0, align 4
@SCSI_ABORT_SUCCESS = common dso_local global i32 0, align 4
@SCSI_ABORT_NOT_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*, %struct.scsi_cmnd*)* @initio_abort_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_abort_srb(%struct.initio_host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.initio_host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scsi_ctrl_blk*, align 8
  %8 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %14 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %19 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %18, i32 0, i32 5
  %20 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %19, align 8
  %21 = icmp eq %struct.scsi_ctrl_blk* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %24 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TUL_Mask, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 31, i64 %27)
  %29 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %30 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %34 = call i32 @tulip_main(%struct.initio_host* %33)
  %35 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %36 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %35, i32 0, i32 1
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %40 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %39, i32 0, i32 0
  store i64 1, i64* %40, align 8
  %41 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %42 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TUL_Mask, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i32 15, i64 %45)
  %47 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %48 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %47, i32 0, i32 1
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* @SCSI_ABORT_SNOOZE, align 4
  store i32 %51, i32* %3, align 4
  br label %267

52:                                               ; preds = %17, %2
  %53 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %54 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %53, i32 0, i32 7
  %55 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %54, align 8
  store %struct.scsi_ctrl_blk* %55, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %55, %struct.scsi_ctrl_blk** %8, align 8
  br label %56

56:                                               ; preds = %141, %52
  %57 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %58 = icmp ne %struct.scsi_ctrl_blk* %57, null
  br i1 %58, label %59, label %146

59:                                               ; preds = %56
  %60 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %61 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %60, i32 0, i32 6
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %61, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %64 = icmp eq %struct.scsi_cmnd* %62, %63
  br i1 %64, label %65, label %141

65:                                               ; preds = %59
  %66 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %67 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %68 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %67, i32 0, i32 5
  %69 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %68, align 8
  %70 = icmp eq %struct.scsi_ctrl_blk* %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %73 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %72, i32 0, i32 1
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* @SCSI_ABORT_BUSY, align 4
  store i32 %76, i32* %3, align 4
  br label %267

77:                                               ; preds = %65
  %78 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %79 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %80 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %79, i32 0, i32 7
  %81 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %80, align 8
  %82 = icmp eq %struct.scsi_ctrl_blk* %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %85 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %84, i32 0, i32 3
  %86 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %85, align 8
  %87 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %88 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %87, i32 0, i32 7
  store %struct.scsi_ctrl_blk* %86, %struct.scsi_ctrl_blk** %88, align 8
  %89 = icmp eq %struct.scsi_ctrl_blk* %86, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %92 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %91, i32 0, i32 6
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %92, align 8
  br label %93

93:                                               ; preds = %90, %83
  br label %110

94:                                               ; preds = %77
  %95 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %96 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %95, i32 0, i32 3
  %97 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %96, align 8
  %98 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %8, align 8
  %99 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %98, i32 0, i32 3
  store %struct.scsi_ctrl_blk* %97, %struct.scsi_ctrl_blk** %99, align 8
  %100 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %101 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %102 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %101, i32 0, i32 6
  %103 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %102, align 8
  %104 = icmp eq %struct.scsi_ctrl_blk* %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %8, align 8
  %107 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %108 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %107, i32 0, i32 6
  store %struct.scsi_ctrl_blk* %106, %struct.scsi_ctrl_blk** %108, align 8
  br label %109

109:                                              ; preds = %105, %94
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** @HOST_ABORTED, align 8
  %113 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %114 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @SCF_DONE, align 4
  %116 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %117 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %121 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SCF_POST, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %111
  %127 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %128 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %127, i32 0, i32 4
  %129 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %128, align 8
  %130 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %131 = bitcast %struct.initio_host* %130 to i32*
  %132 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %133 = bitcast %struct.scsi_ctrl_blk* %132 to i32*
  %134 = call i32 %129(i32* %131, i32* %133)
  br label %135

135:                                              ; preds = %126, %111
  %136 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %137 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %136, i32 0, i32 1
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  %140 = load i32, i32* @SCSI_ABORT_SUCCESS, align 4
  store i32 %140, i32* %3, align 4
  br label %267

141:                                              ; preds = %59
  %142 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %142, %struct.scsi_ctrl_blk** %8, align 8
  %143 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %144 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %143, i32 0, i32 3
  %145 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %144, align 8
  store %struct.scsi_ctrl_blk* %145, %struct.scsi_ctrl_blk** %7, align 8
  br label %56

146:                                              ; preds = %56
  %147 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %148 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %147, i32 0, i32 3
  %149 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %148, align 8
  store %struct.scsi_ctrl_blk* %149, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %149, %struct.scsi_ctrl_blk** %8, align 8
  br label %150

150:                                              ; preds = %256, %146
  %151 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %152 = icmp ne %struct.scsi_ctrl_blk* %151, null
  br i1 %152, label %153, label %261

153:                                              ; preds = %150
  %154 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %155 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %154, i32 0, i32 6
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %155, align 8
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %158 = icmp eq %struct.scsi_cmnd* %156, %157
  br i1 %158, label %159, label %256

159:                                              ; preds = %153
  %160 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %161 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %162 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %161, i32 0, i32 5
  %163 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %162, align 8
  %164 = icmp eq %struct.scsi_ctrl_blk* %160, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %167 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %166, i32 0, i32 1
  %168 = load i64, i64* %6, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32, i32* @SCSI_ABORT_BUSY, align 4
  store i32 %170, i32* %3, align 4
  br label %267

171:                                              ; preds = %159
  %172 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %173 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %178 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %177, i32 0, i32 1
  %179 = load i64, i64* %6, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* %178, i64 %179)
  %181 = load i32, i32* @SCSI_ABORT_BUSY, align 4
  store i32 %181, i32* %3, align 4
  br label %267

182:                                              ; preds = %171
  %183 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %184 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %187 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 4
  %192 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %193 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %194 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %193, i32 0, i32 3
  %195 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %194, align 8
  %196 = icmp eq %struct.scsi_ctrl_blk* %192, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %182
  %198 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %199 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %198, i32 0, i32 3
  %200 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %199, align 8
  %201 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %202 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %201, i32 0, i32 3
  store %struct.scsi_ctrl_blk* %200, %struct.scsi_ctrl_blk** %202, align 8
  %203 = icmp eq %struct.scsi_ctrl_blk* %200, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %206 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %205, i32 0, i32 2
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %206, align 8
  br label %207

207:                                              ; preds = %204, %197
  br label %224

208:                                              ; preds = %182
  %209 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %210 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %209, i32 0, i32 3
  %211 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %210, align 8
  %212 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %8, align 8
  %213 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %212, i32 0, i32 3
  store %struct.scsi_ctrl_blk* %211, %struct.scsi_ctrl_blk** %213, align 8
  %214 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %215 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %216 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %215, i32 0, i32 2
  %217 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %216, align 8
  %218 = icmp eq %struct.scsi_ctrl_blk* %214, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %208
  %220 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %8, align 8
  %221 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %222 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %221, i32 0, i32 2
  store %struct.scsi_ctrl_blk* %220, %struct.scsi_ctrl_blk** %222, align 8
  br label %223

223:                                              ; preds = %219, %208
  br label %224

224:                                              ; preds = %223, %207
  %225 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %226 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %225, i32 0, i32 3
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %226, align 8
  %227 = load i8*, i8** @HOST_ABORTED, align 8
  %228 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %229 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %228, i32 0, i32 5
  store i8* %227, i8** %229, align 8
  %230 = load i32, i32* @SCF_DONE, align 4
  %231 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %232 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %236 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @SCF_POST, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %224
  %242 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %243 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %242, i32 0, i32 4
  %244 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %243, align 8
  %245 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %246 = bitcast %struct.initio_host* %245 to i32*
  %247 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %248 = bitcast %struct.scsi_ctrl_blk* %247 to i32*
  %249 = call i32 %244(i32* %246, i32* %248)
  br label %250

250:                                              ; preds = %241, %224
  %251 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %252 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %251, i32 0, i32 1
  %253 = load i64, i64* %6, align 8
  %254 = call i32 @spin_unlock_irqrestore(i32* %252, i64 %253)
  %255 = load i32, i32* @SCSI_ABORT_SUCCESS, align 4
  store i32 %255, i32* %3, align 4
  br label %267

256:                                              ; preds = %153
  %257 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %257, %struct.scsi_ctrl_blk** %8, align 8
  %258 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %259 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %258, i32 0, i32 3
  %260 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %259, align 8
  store %struct.scsi_ctrl_blk* %260, %struct.scsi_ctrl_blk** %7, align 8
  br label %150

261:                                              ; preds = %150
  %262 = load %struct.initio_host*, %struct.initio_host** %4, align 8
  %263 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %262, i32 0, i32 1
  %264 = load i64, i64* %6, align 8
  %265 = call i32 @spin_unlock_irqrestore(i32* %263, i64 %264)
  %266 = load i32, i32* @SCSI_ABORT_NOT_RUNNING, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %261, %250, %176, %165, %135, %71, %22
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tulip_main(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

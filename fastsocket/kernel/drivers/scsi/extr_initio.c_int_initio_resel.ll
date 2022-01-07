; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_int_initio_resel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_int_initio_resel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk*, i64, %struct.target_control*, %struct.target_control* }
%struct.scsi_ctrl_blk = type { i32, i64, i64 }
%struct.target_control = type { i32, i32, i32 }

@SCB_SELECT = common dso_local global i32 0, align 4
@TUL_SBusId = common dso_local global i64 0, align 8
@TUL_SIdent = common dso_local global i64 0, align 8
@TUL_SConfig = common dso_local global i64 0, align 8
@TUL_SPeriod = common dso_local global i64 0, align 8
@TCF_DRV_EN_TAG = common dso_local global i32 0, align 4
@MSG_IN = common dso_local global i64 0, align 8
@TUL_SCnt0 = common dso_local global i64 0, align 8
@TSC_XF_FIFO_IN = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8
@MSG_STAG = common dso_local global i64 0, align 8
@MSG_OTAG = common dso_local global i64 0, align 8
@SCB_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_initio_resel(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.target_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %11 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %10, i32 0, i32 1
  %12 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %11, align 8
  store %struct.scsi_ctrl_blk* %12, %struct.scsi_ctrl_blk** %4, align 8
  %13 = icmp ne %struct.scsi_ctrl_blk* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SCB_SELECT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i32, i32* @SCB_SELECT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %30 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %29, i32 0, i32 1
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %33 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TUL_SBusId, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %40 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TUL_SIdent, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  %45 = and i32 %44, 15
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %9, align 8
  %47 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %48 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %47, i32 0, i32 5
  %49 = load %struct.target_control*, %struct.target_control** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.target_control, %struct.target_control* %49, i64 %50
  store %struct.target_control* %51, %struct.target_control** %5, align 8
  %52 = load %struct.target_control*, %struct.target_control** %5, align 8
  %53 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %54 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %53, i32 0, i32 4
  store %struct.target_control* %52, %struct.target_control** %54, align 8
  %55 = load %struct.target_control*, %struct.target_control** %5, align 8
  %56 = getelementptr inbounds %struct.target_control, %struct.target_control* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %59 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TUL_SConfig, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %57, i64 %62)
  %64 = load %struct.target_control*, %struct.target_control** %5, align 8
  %65 = getelementptr inbounds %struct.target_control, %struct.target_control* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %68 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TUL_SPeriod, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load %struct.target_control*, %struct.target_control** %5, align 8
  %74 = getelementptr inbounds %struct.target_control, %struct.target_control* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TCF_DRV_EN_TAG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %200

79:                                               ; preds = %31
  %80 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %81 = call i32 @initio_msgin_accept(%struct.initio_host* %80)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  br label %230

84:                                               ; preds = %79
  %85 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %86 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MSG_IN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %201

91:                                               ; preds = %84
  %92 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %93 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TUL_SCnt0, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outl(i32 1, i64 %96)
  %98 = load i32, i32* @TSC_XF_FIFO_IN, align 4
  %99 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %100 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TUL_SCmd, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 %98, i64 %103)
  %105 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %106 = call i32 @wait_tulip(%struct.initio_host* %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  store i32 -1, i32* %2, align 4
  br label %230

109:                                              ; preds = %91
  %110 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %111 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TUL_SFifo, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @inb(i64 %114)
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @MSG_STAG, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %109
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* @MSG_OTAG, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %109
  br label %201

125:                                              ; preds = %120
  %126 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %127 = call i32 @initio_msgin_accept(%struct.initio_host* %126)
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 -1, i32* %2, align 4
  br label %230

130:                                              ; preds = %125
  %131 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %132 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MSG_IN, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %201

137:                                              ; preds = %130
  %138 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %139 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @TUL_SCnt0, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outl(i32 1, i64 %142)
  %144 = load i32, i32* @TSC_XF_FIFO_IN, align 4
  %145 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %146 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TUL_SCmd, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outb(i32 %144, i64 %149)
  %151 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %152 = call i32 @wait_tulip(%struct.initio_host* %151)
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %137
  store i32 -1, i32* %2, align 4
  br label %230

155:                                              ; preds = %137
  %156 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %157 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @TUL_SFifo, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @inb(i64 %160)
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %6, align 8
  %163 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %164 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %163, i32 0, i32 2
  %165 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %164, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %165, i64 %166
  store %struct.scsi_ctrl_blk* %167, %struct.scsi_ctrl_blk** %4, align 8
  %168 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %169 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %8, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %155
  %174 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %175 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173, %155
  %180 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %181 = call i32 @initio_msgout_abort_tag(%struct.initio_host* %180)
  store i32 %181, i32* %2, align 4
  br label %230

182:                                              ; preds = %173
  %183 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %184 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SCB_BUSY, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %190 = call i32 @initio_msgout_abort_tag(%struct.initio_host* %189)
  store i32 %190, i32* %2, align 4
  br label %230

191:                                              ; preds = %182
  %192 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %193 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %194 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %193, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %192, %struct.scsi_ctrl_blk** %194, align 8
  %195 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %196 = call i32 @initio_msgin_accept(%struct.initio_host* %195)
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  store i32 -1, i32* %2, align 4
  br label %230

199:                                              ; preds = %191
  br label %229

200:                                              ; preds = %31
  br label %201

201:                                              ; preds = %200, %136, %124, %90
  %202 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %203 = load i64, i64* %8, align 8
  %204 = load i64, i64* %9, align 8
  %205 = shl i64 %204, 8
  %206 = or i64 %203, %205
  %207 = call %struct.scsi_ctrl_blk* @initio_find_busy_scb(%struct.initio_host* %202, i64 %206)
  store %struct.scsi_ctrl_blk* %207, %struct.scsi_ctrl_blk** %4, align 8
  %208 = icmp eq %struct.scsi_ctrl_blk* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %211 = call i32 @initio_msgout_abort_targ(%struct.initio_host* %210)
  store i32 %211, i32* %2, align 4
  br label %230

212:                                              ; preds = %201
  %213 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %214 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %215 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %214, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %213, %struct.scsi_ctrl_blk** %215, align 8
  %216 = load %struct.target_control*, %struct.target_control** %5, align 8
  %217 = getelementptr inbounds %struct.target_control, %struct.target_control* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TCF_DRV_EN_TAG, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %212
  %223 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %224 = call i32 @initio_msgin_accept(%struct.initio_host* %223)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 -1, i32* %2, align 4
  br label %230

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227, %212
  br label %229

229:                                              ; preds = %228, %199
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %229, %226, %209, %198, %188, %179, %154, %129, %108, %83
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @initio_msgin_accept(%struct.initio_host*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @initio_msgout_abort_tag(%struct.initio_host*) #1

declare dso_local %struct.scsi_ctrl_blk* @initio_find_busy_scb(%struct.initio_host*, i64) #1

declare dso_local i32 @initio_msgout_abort_targ(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

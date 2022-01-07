; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_program_capture_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_program_capture_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i64, i64 }

@SAA7146_HPS_SYNC_PORT_A = common dso_local global i64 0, align 8
@CMD_E_FID_A = common dso_local global i64 0, align 8
@CMD_E_FID_B = common dso_local global i64 0, align 8
@CMD_O_FID_A = common dso_local global i64 0, align 8
@CMD_O_FID_B = common dso_local global i64 0, align 8
@CMD_PAUSE = common dso_local global i64 0, align 8
@CMD_OAN = common dso_local global i64 0, align 8
@CMD_SIG0 = common dso_local global i64 0, align 8
@CMD_WR_REG = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@MASK_11 = common dso_local global i32 0, align 4
@CMD_WR_REG_MASK = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_06 = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4
@MASK_05 = common dso_local global i32 0, align 4
@MASK_21 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@MASK_10 = common dso_local global i64 0, align 8
@MASK_09 = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@CMD_INTERRUPT = common dso_local global i32 0, align 4
@CMD_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i32)* @program_capture_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_capture_engine(%struct.saa7146_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  store %struct.saa7146_vv* %11, %struct.saa7146_vv** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %13 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SAA7146_HPS_SYNC_PORT_A, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @CMD_E_FID_A, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @CMD_E_FID_B, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %7, align 8
  %23 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %24 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SAA7146_HPS_SYNC_PORT_A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @CMD_O_FID_A, align 8
  br label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @CMD_O_FID_B, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @CMD_PAUSE, align 8
  %35 = load i64, i64* @CMD_OAN, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @CMD_SIG0, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = or i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @WRITE_RPS0(i32 %41)
  %43 = load i64, i64* @CMD_PAUSE, align 8
  %44 = load i64, i64* @CMD_OAN, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @CMD_SIG0, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* %7, align 8
  %49 = or i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @WRITE_RPS0(i32 %50)
  %52 = load i32, i32* @CMD_WR_REG, align 4
  %53 = or i32 %52, 256
  %54 = load i32, i32* @MC2, align 4
  %55 = sdiv i32 %54, 4
  %56 = or i32 %53, %55
  %57 = call i32 @WRITE_RPS0(i32 %56)
  %58 = load i32, i32* @MASK_27, align 4
  %59 = load i32, i32* @MASK_11, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @WRITE_RPS0(i32 %60)
  %62 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %63 = load i32, i32* @MC1, align 4
  %64 = sdiv i32 %63, 4
  %65 = or i32 %62, %64
  %66 = call i32 @WRITE_RPS0(i32 %65)
  %67 = load i32, i32* @MASK_06, align 4
  %68 = load i32, i32* @MASK_22, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @WRITE_RPS0(i32 %69)
  %71 = load i32, i32* @MASK_06, align 4
  %72 = load i32, i32* @MASK_22, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @WRITE_RPS0(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 0, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %32
  %78 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %79 = load i32, i32* @MC1, align 4
  %80 = sdiv i32 %79, 4
  %81 = or i32 %78, %80
  %82 = call i32 @WRITE_RPS0(i32 %81)
  %83 = load i32, i32* @MASK_05, align 4
  %84 = load i32, i32* @MASK_21, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @WRITE_RPS0(i32 %85)
  %87 = load i32, i32* @MASK_05, align 4
  %88 = load i32, i32* @MASK_21, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @WRITE_RPS0(i32 %89)
  %91 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %92 = load i32, i32* @MC1, align 4
  %93 = sdiv i32 %92, 4
  %94 = or i32 %91, %93
  %95 = call i32 @WRITE_RPS0(i32 %94)
  %96 = load i32, i32* @MASK_04, align 4
  %97 = load i32, i32* @MASK_20, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @WRITE_RPS0(i32 %98)
  %100 = load i32, i32* @MASK_04, align 4
  %101 = load i32, i32* @MASK_20, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @WRITE_RPS0(i32 %102)
  br label %104

104:                                              ; preds = %77, %32
  %105 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %106 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i64, i64* @CMD_PAUSE, align 8
  %112 = load i64, i64* %8, align 8
  %113 = or i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @WRITE_RPS0(i32 %114)
  %116 = load i64, i64* @CMD_PAUSE, align 8
  %117 = load i64, i64* %7, align 8
  %118 = or i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @WRITE_RPS0(i32 %119)
  br label %177

121:                                              ; preds = %104
  %122 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %123 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load i64, i64* @CMD_PAUSE, align 8
  %129 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %130 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SAA7146_HPS_SYNC_PORT_A, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i64, i64* @MASK_10, align 8
  br label %138

136:                                              ; preds = %127
  %137 = load i64, i64* @MASK_09, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %135, %134 ], [ %137, %136 ]
  %140 = or i64 %128, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @WRITE_RPS0(i32 %141)
  %143 = load i64, i64* @CMD_PAUSE, align 8
  %144 = load i64, i64* %8, align 8
  %145 = or i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @WRITE_RPS0(i32 %146)
  br label %176

148:                                              ; preds = %121
  %149 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %150 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %148
  %155 = load i64, i64* @CMD_PAUSE, align 8
  %156 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %157 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SAA7146_HPS_SYNC_PORT_A, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i64, i64* @MASK_10, align 8
  br label %165

163:                                              ; preds = %154
  %164 = load i64, i64* @MASK_09, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i64 [ %162, %161 ], [ %164, %163 ]
  %167 = or i64 %155, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @WRITE_RPS0(i32 %168)
  %170 = load i64, i64* @CMD_PAUSE, align 8
  %171 = load i64, i64* %7, align 8
  %172 = or i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @WRITE_RPS0(i32 %173)
  br label %175

175:                                              ; preds = %165, %148
  br label %176

176:                                              ; preds = %175, %138
  br label %177

177:                                              ; preds = %176, %110
  %178 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %179 = load i32, i32* @MC1, align 4
  %180 = sdiv i32 %179, 4
  %181 = or i32 %178, %180
  %182 = call i32 @WRITE_RPS0(i32 %181)
  %183 = load i32, i32* @MASK_22, align 4
  %184 = load i32, i32* @MASK_06, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @WRITE_RPS0(i32 %185)
  %187 = load i32, i32* @MASK_22, align 4
  %188 = call i32 @WRITE_RPS0(i32 %187)
  %189 = load i32, i32* %4, align 4
  %190 = icmp ne i32 0, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %177
  %192 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %193 = load i32, i32* @MC1, align 4
  %194 = sdiv i32 %193, 4
  %195 = or i32 %192, %194
  %196 = call i32 @WRITE_RPS0(i32 %195)
  %197 = load i32, i32* @MASK_05, align 4
  %198 = load i32, i32* @MASK_21, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @WRITE_RPS0(i32 %199)
  %201 = load i32, i32* @MASK_21, align 4
  %202 = call i32 @WRITE_RPS0(i32 %201)
  %203 = load i32, i32* @CMD_WR_REG_MASK, align 4
  %204 = load i32, i32* @MC1, align 4
  %205 = sdiv i32 %204, 4
  %206 = or i32 %203, %205
  %207 = call i32 @WRITE_RPS0(i32 %206)
  %208 = load i32, i32* @MASK_04, align 4
  %209 = load i32, i32* @MASK_20, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @WRITE_RPS0(i32 %210)
  %212 = load i32, i32* @MASK_20, align 4
  %213 = call i32 @WRITE_RPS0(i32 %212)
  br label %214

214:                                              ; preds = %191, %177
  %215 = load i32, i32* @CMD_INTERRUPT, align 4
  %216 = call i32 @WRITE_RPS0(i32 %215)
  %217 = load i32, i32* @CMD_STOP, align 4
  %218 = call i32 @WRITE_RPS0(i32 %217)
  ret void
}

declare dso_local i32 @WRITE_RPS0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

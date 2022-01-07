; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_do_cmd_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_do_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32* }
%struct.pci9111_board = type { i32, i64 }

@TRIG_NOW = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_NONE = common dso_local global i64 0, align 8
@PCI9111_8254_CLOCK_PERIOD_NS = common dso_local global i32 0, align 4
@dev_private = common dso_local global %struct.TYPE_2__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"entries in chanlist must be consecutive channels,counting upwards from 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"entries in chanlist must all have the same gain\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"entries in chanlist must all have the same reference\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"channel number is out of limits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9111_ai_do_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9111_ai_do_cmd_test(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci9111_board*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.pci9111_board*
  store %struct.pci9111_board* %20, %struct.pci9111_board** %13, align 8
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TRIG_NOW, align 8
  %25 = call i32 @pci9111_check_trigger_src(i64 %23, i64 %24)
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRIG_TIMER, align 8
  %30 = load i64, i64* @TRIG_FOLLOW, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @TRIG_EXT, align 8
  %33 = or i64 %31, %32
  %34 = call i32 @pci9111_check_trigger_src(i64 %28, i64 %33)
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TRIG_TIMER, align 8
  %39 = load i64, i64* @TRIG_EXT, align 8
  %40 = or i64 %38, %39
  %41 = call i32 @pci9111_check_trigger_src(i64 %37, i64 %40)
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRIG_COUNT, align 8
  %46 = call i32 @pci9111_check_trigger_src(i64 %44, i64 %45)
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRIG_COUNT, align 8
  %51 = load i64, i64* @TRIG_NONE, align 8
  %52 = or i64 %50, %51
  %53 = call i32 @pci9111_check_trigger_src(i64 %49, i64 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %580

57:                                               ; preds = %3
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TRIG_NOW, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TRIG_TIMER, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TRIG_FOLLOW, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TRIG_EXT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %78, %72, %66
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TRIG_TIMER, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TRIG_EXT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %93, %87
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TRIG_TIMER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TRIG_TIMER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %108
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TRIG_FOLLOW, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120, %114, %108, %102
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TRIG_EXT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TRIG_EXT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %144, label %135

135:                                              ; preds = %129
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TRIG_FOLLOW, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %141, %135, %129, %123
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TRIG_COUNT, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TRIG_COUNT, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TRIG_NONE, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %165, %159, %153
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 2, i32* %4, align 4
  br label %580

172:                                              ; preds = %168
  %173 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %174 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 5
  store i32 1, i32* %179, align 8
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %187 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %185, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %182
  %191 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %192 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %190, %182
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @TRIG_NOW, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 6
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %209, %204, %198
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @TRIG_TIMER, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %236

220:                                              ; preds = %214
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %225 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp slt i64 %223, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %220
  %229 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %230 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 7
  store i64 %231, i64* %233, align 8
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %228, %220, %214
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @TRIG_EXT, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 7
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 7
  store i64 0, i64* %249, align 8
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %247, %242, %236
  %253 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @TRIG_TIMER, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %274

258:                                              ; preds = %252
  %259 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %260 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %259, i32 0, i32 8
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %263 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %261, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %268 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 8
  store i64 %269, i64* %271, align 8
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %266, %258, %252
  %275 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %276 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @TRIG_FOLLOW, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %282 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %281, i32 0, i32 8
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %287 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %286, i32 0, i32 8
  store i64 0, i64* %287, align 8
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %285, %280, %274
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @TRIG_EXT, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %298 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %297, i32 0, i32 8
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %303 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %302, i32 0, i32 8
  store i64 0, i64* %303, align 8
  %304 = load i32, i32* %9, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %9, align 4
  br label %306

306:                                              ; preds = %301, %296, %290
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @TRIG_COUNT, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %328

312:                                              ; preds = %306
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 9
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %315, %318
  br i1 %319, label %320, label %328

320:                                              ; preds = %312
  %321 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %322 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %324, i32 0, i32 9
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %9, align 4
  br label %328

328:                                              ; preds = %320, %312, %306
  %329 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @TRIG_COUNT, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %328
  %335 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %336 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %335, i32 0, i32 10
  %337 = load i32, i32* %336, align 4
  %338 = icmp slt i32 %337, 1
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %341 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %340, i32 0, i32 10
  store i32 1, i32* %341, align 4
  %342 = load i32, i32* %9, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %9, align 4
  br label %344

344:                                              ; preds = %339, %334, %328
  %345 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %346 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @TRIG_NONE, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %344
  %351 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %352 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %350
  %356 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %357 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %356, i32 0, i32 10
  store i32 0, i32* %357, align 4
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %360

360:                                              ; preds = %355, %350, %344
  %361 = load i32, i32* %9, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 3, i32* %4, align 4
  br label %580

364:                                              ; preds = %360
  %365 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %366 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @TRIG_TIMER, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %399

370:                                              ; preds = %364
  %371 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %372 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %371, i32 0, i32 7
  %373 = load i64, i64* %372, align 8
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %8, align 4
  %375 = load i32, i32* @PCI9111_8254_CLOCK_PERIOD_NS, align 4
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 0
  %380 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %381 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %380, i32 0, i32 7
  %382 = bitcast i64* %381 to i32*
  %383 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %384 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %383, i32 0, i32 11
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %387 = and i32 %385, %386
  %388 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %375, i32* %377, i32* %379, i32* %382, i32 %387)
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %392 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %391, i32 0, i32 7
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %390, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %370
  %396 = load i32, i32* %9, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %9, align 4
  br label %398

398:                                              ; preds = %395, %370
  br label %399

399:                                              ; preds = %398, %364
  %400 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %401 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @TRIG_TIMER, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %462

405:                                              ; preds = %399
  %406 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %407 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = sext i32 %408 to i64
  %410 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %411 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %410, i32 0, i32 7
  %412 = load i64, i64* %411, align 8
  %413 = mul nsw i64 %409, %412
  %414 = trunc i64 %413 to i32
  store i32 %414, i32* %14, align 4
  %415 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %416 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %415, i32 0, i32 8
  %417 = load i64, i64* %416, align 8
  %418 = load i32, i32* %14, align 4
  %419 = zext i32 %418 to i64
  %420 = icmp ne i64 %417, %419
  br i1 %420, label %421, label %461

421:                                              ; preds = %405
  %422 = load i32, i32* %14, align 4
  %423 = zext i32 %422 to i64
  %424 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %425 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %424, i32 0, i32 8
  %426 = load i64, i64* %425, align 8
  %427 = icmp slt i64 %423, %426
  br i1 %427, label %428, label %453

428:                                              ; preds = %421
  %429 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %430 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %429, i32 0, i32 8
  %431 = load i64, i64* %430, align 8
  %432 = load i32, i32* %14, align 4
  %433 = zext i32 %432 to i64
  %434 = sdiv i64 %431, %433
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %16, align 4
  %436 = load i32, i32* %16, align 4
  %437 = load i32, i32* %14, align 4
  %438 = mul i32 %436, %437
  store i32 %438, i32* %15, align 4
  %439 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %440 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %439, i32 0, i32 8
  %441 = load i64, i64* %440, align 8
  %442 = load i32, i32* %15, align 4
  %443 = zext i32 %442 to i64
  %444 = icmp ne i64 %441, %443
  br i1 %444, label %445, label %452

445:                                              ; preds = %428
  %446 = load i32, i32* %15, align 4
  %447 = zext i32 %446 to i64
  %448 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %449 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %448, i32 0, i32 8
  store i64 %447, i64* %449, align 8
  %450 = load i32, i32* %9, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %9, align 4
  br label %452

452:                                              ; preds = %445, %428
  br label %460

453:                                              ; preds = %421
  %454 = load i32, i32* %14, align 4
  %455 = zext i32 %454 to i64
  %456 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %457 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %456, i32 0, i32 8
  store i64 %455, i64* %457, align 8
  %458 = load i32, i32* %9, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %9, align 4
  br label %460

460:                                              ; preds = %453, %452
  br label %461

461:                                              ; preds = %460, %405
  br label %462

462:                                              ; preds = %461, %399
  %463 = load i32, i32* %9, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  store i32 4, i32* %4, align 4
  br label %580

466:                                              ; preds = %462
  %467 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %468 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %467, i32 0, i32 12
  %469 = load i32*, i32** %468, align 8
  %470 = icmp ne i32* %469, null
  br i1 %470, label %471, label %575

471:                                              ; preds = %466
  %472 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %473 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %472, i32 0, i32 12
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @CR_RANGE(i32 %476)
  store i32 %477, i32* %10, align 4
  %478 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %479 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %478, i32 0, i32 12
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 0
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @CR_AREF(i32 %482)
  store i32 %483, i32* %11, align 4
  %484 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %485 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = icmp sgt i32 %486, 1
  br i1 %487, label %488, label %548

488:                                              ; preds = %471
  store i32 0, i32* %12, align 4
  br label %489

489:                                              ; preds = %544, %488
  %490 = load i32, i32* %12, align 4
  %491 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %492 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %491, i32 0, i32 5
  %493 = load i32, i32* %492, align 8
  %494 = icmp slt i32 %490, %493
  br i1 %494, label %495, label %547

495:                                              ; preds = %489
  %496 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %497 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %496, i32 0, i32 12
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %12, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @CR_CHAN(i32 %502)
  %504 = load i32, i32* %12, align 4
  %505 = icmp ne i32 %503, %504
  br i1 %505, label %506, label %511

506:                                              ; preds = %495
  %507 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %508 = call i32 @comedi_error(%struct.comedi_device* %507, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %509 = load i32, i32* %9, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %9, align 4
  br label %511

511:                                              ; preds = %506, %495
  %512 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %513 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %512, i32 0, i32 12
  %514 = load i32*, i32** %513, align 8
  %515 = load i32, i32* %12, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @CR_RANGE(i32 %518)
  %520 = load i32, i32* %10, align 4
  %521 = icmp ne i32 %519, %520
  br i1 %521, label %522, label %527

522:                                              ; preds = %511
  %523 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %524 = call i32 @comedi_error(%struct.comedi_device* %523, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %525 = load i32, i32* %9, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %9, align 4
  br label %527

527:                                              ; preds = %522, %511
  %528 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %529 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %528, i32 0, i32 12
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %12, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = call i32 @CR_AREF(i32 %534)
  %536 = load i32, i32* %11, align 4
  %537 = icmp ne i32 %535, %536
  br i1 %537, label %538, label %543

538:                                              ; preds = %527
  %539 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %540 = call i32 @comedi_error(%struct.comedi_device* %539, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %541 = load i32, i32* %9, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %9, align 4
  br label %543

543:                                              ; preds = %538, %527
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %12, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %12, align 4
  br label %489

547:                                              ; preds = %489
  br label %574

548:                                              ; preds = %471
  %549 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %550 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %549, i32 0, i32 12
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 0
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @CR_CHAN(i32 %553)
  %555 = load %struct.pci9111_board*, %struct.pci9111_board** %13, align 8
  %556 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = sub nsw i32 %557, 1
  %559 = icmp sgt i32 %554, %558
  br i1 %559, label %568, label %560

560:                                              ; preds = %548
  %561 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %562 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %561, i32 0, i32 12
  %563 = load i32*, i32** %562, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 0
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @CR_CHAN(i32 %565)
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %560, %548
  %569 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %570 = call i32 @comedi_error(%struct.comedi_device* %569, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %571 = load i32, i32* %9, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %9, align 4
  br label %573

573:                                              ; preds = %568, %560
  br label %574

574:                                              ; preds = %573, %547
  br label %575

575:                                              ; preds = %574, %466
  %576 = load i32, i32* %9, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  store i32 5, i32* %4, align 4
  br label %580

579:                                              ; preds = %575
  store i32 0, i32* %4, align 4
  br label %580

580:                                              ; preds = %579, %578, %465, %363, %171, %56
  %581 = load i32, i32* %4, align 4
  ret i32 %581
}

declare dso_local i32 @pci9111_check_trigger_src(i64, i64) #1

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

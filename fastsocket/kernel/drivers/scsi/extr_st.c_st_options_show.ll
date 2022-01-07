; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_options_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_options_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.st_modedef* }
%struct.st_modedef = type { i64, i64, i64, i64, i64 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@st_dev_max = common dso_local global i32 0, align 4
@ST_NBR_MODES = common dso_local global i32 0, align 4
@scsi_tapes = common dso_local global %struct.scsi_tape** null, align 8
@MT_ST_BUFFER_WRITES = common dso_local global i32 0, align 4
@MT_ST_ASYNC_WRITES = common dso_local global i32 0, align 4
@MT_ST_READ_AHEAD = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@MT_ST_DEBUGGING = common dso_local global i32 0, align 4
@MT_ST_TWO_FM = common dso_local global i32 0, align 4
@MT_ST_FAST_MTEOM = common dso_local global i32 0, align 4
@MT_ST_DEF_WRITES = common dso_local global i32 0, align 4
@MT_ST_CAN_BSR = common dso_local global i32 0, align 4
@MT_ST_NO_BLKLIMS = common dso_local global i32 0, align 4
@MT_ST_CAN_PARTITIONS = common dso_local global i32 0, align 4
@MT_ST_SCSI2LOGICAL = common dso_local global i32 0, align 4
@MT_ST_SYSV = common dso_local global i32 0, align 4
@MT_ST_NOWAIT = common dso_local global i32 0, align 4
@MT_ST_SILI = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @st_options_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_options_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.st_modedef*, align 8
  %9 = alloca %struct.scsi_tape*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.st_modedef* @dev_get_drvdata(%struct.device* %14)
  store %struct.st_modedef* %15, %struct.st_modedef** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %49, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @st_dev_max, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @ST_NBR_MODES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.scsi_tape**, %struct.scsi_tape*** @scsi_tapes, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.scsi_tape*, %struct.scsi_tape** %26, i64 %28
  %30 = load %struct.scsi_tape*, %struct.scsi_tape** %29, align 8
  %31 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %30, i32 0, i32 8
  %32 = load %struct.st_modedef*, %struct.st_modedef** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %32, i64 %34
  %36 = load %struct.st_modedef*, %struct.st_modedef** %8, align 8
  %37 = icmp eq %struct.st_modedef* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %43

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %21

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @ST_NBR_MODES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %16

52:                                               ; preds = %47, %16
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @st_dev_max, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %219

57:                                               ; preds = %52
  %58 = load %struct.scsi_tape**, %struct.scsi_tape*** @scsi_tapes, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.scsi_tape*, %struct.scsi_tape** %58, i64 %60
  %62 = load %struct.scsi_tape*, %struct.scsi_tape** %61, align 8
  store %struct.scsi_tape* %62, %struct.scsi_tape** %9, align 8
  %63 = load %struct.st_modedef*, %struct.st_modedef** %8, align 8
  %64 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @MT_ST_BUFFER_WRITES, align 4
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  store i32 %71, i32* %12, align 4
  %72 = load %struct.st_modedef*, %struct.st_modedef** %8, align 8
  %73 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @MT_ST_ASYNC_WRITES, align 4
  br label %79

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load %struct.st_modedef*, %struct.st_modedef** %8, align 8
  %84 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @MT_ST_READ_AHEAD, align 4
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i64, i64* @debugging, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @MT_ST_DEBUGGING, align 4
  br label %99

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = call i32 @DEB(i32 %102)
  %104 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %105 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @MT_ST_TWO_FM, align 4
  br label %111

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %116 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @MT_ST_FAST_MTEOM, align 4
  br label %122

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load %struct.st_modedef*, %struct.st_modedef** %8, align 8
  %127 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* @MT_ST_DEF_WRITES, align 4
  br label %133

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %138 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* @MT_ST_CAN_BSR, align 4
  br label %144

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ]
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %149 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @MT_ST_NO_BLKLIMS, align 4
  br label %155

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = load i32, i32* %12, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %12, align 4
  %159 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %160 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* @MT_ST_CAN_PARTITIONS, align 4
  br label %166

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %163
  %167 = phi i32 [ %164, %163 ], [ 0, %165 ]
  %168 = load i32, i32* %12, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %12, align 4
  %170 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %171 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* @MT_ST_SCSI2LOGICAL, align 4
  br label %177

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ]
  %179 = load i32, i32* %12, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %12, align 4
  %181 = load %struct.st_modedef*, %struct.st_modedef** %8, align 8
  %182 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* @MT_ST_SYSV, align 4
  br label %188

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187, %185
  %189 = phi i32 [ %186, %185 ], [ 0, %187 ]
  %190 = load i32, i32* %12, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %12, align 4
  %192 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %193 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* @MT_ST_NOWAIT, align 4
  br label %199

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ]
  %201 = load i32, i32* %12, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %12, align 4
  %203 = load %struct.scsi_tape*, %struct.scsi_tape** %9, align 8
  %204 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load i32, i32* @MT_ST_SILI, align 4
  br label %210

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ]
  %212 = load i32, i32* %12, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %12, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = load i32, i32* @PAGE_SIZE, align 4
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @snprintf(i8* %214, i32 %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %216)
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %210, %56
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local %struct.st_modedef* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

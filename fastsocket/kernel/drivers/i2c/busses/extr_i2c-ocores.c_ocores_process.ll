; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i64, i32, i64, %struct.i2c_msg*, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@OCI2C_STATUS = common dso_local global i32 0, align 4
@STATE_DONE = common dso_local global i64 0, align 8
@STATE_ERROR = common dso_local global i64 0, align 8
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_IACK = common dso_local global i32 0, align 4
@OCI2C_STAT_ARBLOST = common dso_local global i32 0, align 4
@OCI2C_CMD_STOP = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i64 0, align 8
@STATE_WRITE = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@STATE_READ = common dso_local global i64 0, align 8
@OCI2C_STAT_NACK = common dso_local global i32 0, align 4
@OCI2C_DATA = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@OCI2C_CMD_START = common dso_local global i32 0, align 4
@OCI2C_CMD_READ_NACK = common dso_local global i32 0, align 4
@OCI2C_CMD_READ_ACK = common dso_local global i32 0, align 4
@OCI2C_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocores_i2c*)* @ocores_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocores_process(%struct.ocores_i2c* %0) #0 {
  %2 = alloca %struct.ocores_i2c*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocores_i2c* %0, %struct.ocores_i2c** %2, align 8
  %6 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %6, i32 0, i32 3
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %3, align 8
  %9 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %10 = load i32, i32* @OCI2C_STATUS, align 4
  %11 = call i8* @oc_getreg(%struct.ocores_i2c* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %14 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATE_DONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATE_ERROR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %1
  %25 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %26 = load i32, i32* @OCI2C_CMD, align 4
  %27 = load i32, i32* @OCI2C_CMD_IACK, align 4
  %28 = call i32 @oc_setreg(%struct.ocores_i2c* %25, i32 %26, i32 %27)
  %29 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %29, i32 0, i32 4
  %31 = call i32 @wake_up(i32* %30)
  br label %225

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @OCI2C_STAT_ARBLOST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* @STATE_ERROR, align 8
  %39 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %40 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %42 = load i32, i32* @OCI2C_CMD, align 4
  %43 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %44 = call i32 @oc_setreg(%struct.ocores_i2c* %41, i32 %42, i32 %43)
  br label %225

45:                                               ; preds = %32
  %46 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %47 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STATE_START, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %53 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @STATE_WRITE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %51, %45
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I2C_M_RD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @STATE_READ, align 8
  br label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @STATE_WRITE, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %71 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @OCI2C_STAT_NACK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i64, i64* @STATE_ERROR, align 8
  %78 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %79 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %81 = load i32, i32* @OCI2C_CMD, align 4
  %82 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %83 = call i32 @oc_setreg(%struct.ocores_i2c* %80, i32 %81, i32 %82)
  br label %225

84:                                               ; preds = %68
  br label %99

85:                                               ; preds = %51
  %86 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %87 = load i32, i32* @OCI2C_DATA, align 4
  %88 = call i8* @oc_getreg(%struct.ocores_i2c* %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %94 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  store i32 %89, i32* %98, align 4
  br label %99

99:                                               ; preds = %85, %84
  %100 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %101 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %183

107:                                              ; preds = %99
  %108 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %109 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %113 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %112, i32 0, i32 3
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %113, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 1
  store %struct.i2c_msg* %115, %struct.i2c_msg** %113, align 8
  %116 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %117 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %116, i32 0, i32 1
  store i32 0, i32* %117, align 8
  %118 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %119 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %118, i32 0, i32 3
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %119, align 8
  store %struct.i2c_msg* %120, %struct.i2c_msg** %3, align 8
  %121 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %122 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %174

125:                                              ; preds = %107
  %126 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @I2C_M_NOSTART, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %125
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 1
  store i32 %136, i32* %5, align 4
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @I2C_M_RD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %143, %132
  %147 = load i64, i64* @STATE_START, align 8
  %148 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %149 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %151 = load i32, i32* @OCI2C_DATA, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @oc_setreg(%struct.ocores_i2c* %150, i32 %151, i32 %152)
  %154 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %155 = load i32, i32* @OCI2C_CMD, align 4
  %156 = load i32, i32* @OCI2C_CMD_START, align 4
  %157 = call i32 @oc_setreg(%struct.ocores_i2c* %154, i32 %155, i32 %156)
  br label %225

158:                                              ; preds = %125
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @I2C_M_RD, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i64, i64* @STATE_READ, align 8
  br label %169

167:                                              ; preds = %158
  %168 = load i64, i64* @STATE_WRITE, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i64 [ %166, %165 ], [ %168, %167 ]
  %171 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %172 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %169
  br label %182

174:                                              ; preds = %107
  %175 = load i64, i64* @STATE_DONE, align 8
  %176 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %177 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %179 = load i32, i32* @OCI2C_CMD, align 4
  %180 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %181 = call i32 @oc_setreg(%struct.ocores_i2c* %178, i32 %179, i32 %180)
  br label %225

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %99
  %184 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %185 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @STATE_READ, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %207

189:                                              ; preds = %183
  %190 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %191 = load i32, i32* @OCI2C_CMD, align 4
  %192 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %193 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 1
  %199 = icmp eq i32 %194, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %189
  %201 = load i32, i32* @OCI2C_CMD_READ_NACK, align 4
  br label %204

202:                                              ; preds = %189
  %203 = load i32, i32* @OCI2C_CMD_READ_ACK, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %201, %200 ], [ %203, %202 ]
  %206 = call i32 @oc_setreg(%struct.ocores_i2c* %190, i32 %191, i32 %205)
  br label %225

207:                                              ; preds = %183
  %208 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %209 = load i32, i32* @OCI2C_DATA, align 4
  %210 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %214 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %212, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @oc_setreg(%struct.ocores_i2c* %208, i32 %209, i32 %219)
  %221 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %222 = load i32, i32* @OCI2C_CMD, align 4
  %223 = load i32, i32* @OCI2C_CMD_WRITE, align 4
  %224 = call i32 @oc_setreg(%struct.ocores_i2c* %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %24, %37, %76, %146, %174, %207, %204
  ret void
}

declare dso_local i8* @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_tx_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_tx_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.mceusb_dev* }
%struct.mceusb_dev = type { i8 }
%struct.timeval = type { i32, i64 }

@MCE_CMDBUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCE_COMMAND_HEADER = common dso_local global i8 0, align 1
@MCE_CMD_S_TXMASK = common dso_local global i8 0, align 1
@MCE_TIME_UNIT = common dso_local global i32 0, align 4
@MCE_TX_HEADER_LENGTH = common dso_local global i32 0, align 4
@MCE_CODE_LENGTH = common dso_local global i32 0, align 4
@MCE_IRDATA_HEADER = common dso_local global i8 0, align 1
@MCE_PULSE_BIT = common dso_local global i32 0, align 4
@MCE_MAX_PULSE_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCE_COMMAND_IRDATA = common dso_local global i8 0, align 1
@MCE_IRDATA_TRAILER = common dso_local global i8 0, align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @mceusb_tx_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_tx_ir(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mceusb_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 0
  %19 = load %struct.mceusb_dev*, %struct.mceusb_dev** %18, align 8
  store %struct.mceusb_dev* %19, %struct.mceusb_dev** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  %20 = call i32 @do_gettimeofday(%struct.timeval* %15)
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @MCE_CMDBUF_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %239

36:                                               ; preds = %3
  %37 = load i8, i8* @MCE_COMMAND_HEADER, align 1
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 %37, i8* %42, align 1
  %43 = load i8, i8* @MCE_CMD_S_TXMASK, align 1
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  %49 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %50 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %13, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 %51, i8* %56, align 1
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %166, %36
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @MCE_CMDBUF_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br i1 %66, label %67, label %169

67:                                               ; preds = %65
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %14, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MCE_TIME_UNIT, align 4
  %82 = sdiv i32 %80, %81
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %163, %67
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @MCE_CMDBUF_SIZE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @MCE_TX_HEADER_LENGTH, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* @MCE_CODE_LENGTH, align 4
  %96 = srem i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i8, i8* @MCE_IRDATA_HEADER, align 1
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %99, i8* %104, align 1
  br label %105

105:                                              ; preds = %98, %91, %87
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @MCE_CMDBUF_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %105
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MCE_PULSE_BIT, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  br label %125

123:                                              ; preds = %109
  %124 = load i32, i32* @MCE_MAX_PULSE_LENGTH, align 4
  br label %125

125:                                              ; preds = %123, %117
  %126 = phi i32 [ %122, %117 ], [ %124, %123 ]
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @MCE_PULSE_BIT, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ 0, %130 ], [ %132, %131 ]
  %135 = or i32 %126, %134
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 %136, i8* %141, align 1
  br label %145

142:                                              ; preds = %105
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %228

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @MCE_MAX_PULSE_LENGTH, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load i32, i32* @MCE_MAX_PULSE_LENGTH, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, %155
  store i32 %161, i32* %159, align 4
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %154, %146
  %164 = phi i1 [ false, %146 ], [ %162, %154 ]
  br i1 %164, label %87, label %165

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %57

169:                                              ; preds = %65
  %170 = load i8, i8* @MCE_COMMAND_IRDATA, align 1
  %171 = zext i8 %170 to i32
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @MCE_TX_HEADER_LENGTH, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* @MCE_CODE_LENGTH, align 4
  %176 = srem i32 %174, %175
  %177 = add nsw i32 %171, %176
  %178 = sub nsw i32 %177, 1
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %13, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @MCE_TX_HEADER_LENGTH, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* @MCE_CODE_LENGTH, align 4
  %186 = srem i32 %184, %185
  %187 = sub nsw i32 %181, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %180, i64 %188
  store i8 %179, i8* %189, align 1
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* @MCE_CMDBUF_SIZE, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %169
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %10, align 4
  br label %228

196:                                              ; preds = %169
  %197 = load i8, i8* @MCE_IRDATA_TRAILER, align 1
  %198 = load i8*, i8** %13, align 8
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 %197, i8* %202, align 1
  %203 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @mce_async_out(%struct.mceusb_dev* %203, i8* %204, i32 %205)
  %207 = call i32 @do_gettimeofday(%struct.timeval* %16)
  %208 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %209, %211
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sub nsw i32 %214, %216
  %218 = mul nsw i32 %217, 1000000
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %212, %219
  %221 = load i64, i64* %14, align 8
  %222 = sub nsw i64 %221, %220
  store i64 %222, i64* %14, align 8
  %223 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %224 = call i32 @set_current_state(i32 %223)
  %225 = load i64, i64* %14, align 8
  %226 = call i32 @usecs_to_jiffies(i64 %225)
  %227 = call i32 @schedule_timeout(i32 %226)
  br label %228

228:                                              ; preds = %196, %193, %142
  %229 = load i8*, i8** %13, align 8
  %230 = call i32 @kfree(i8* %229)
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* %10, align 4
  br label %237

235:                                              ; preds = %228
  %236 = load i32, i32* %7, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %237, %33
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mce_async_out(%struct.mceusb_dev*, i8*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

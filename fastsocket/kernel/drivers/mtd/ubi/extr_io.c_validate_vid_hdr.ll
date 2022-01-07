; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_validate_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_validate_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"bad copy_flag\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"negative values\00", align 1
@UBI_MAX_VOLUMES = common dso_local global i32 0, align 4
@UBI_INTERNAL_VOL_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"bad vol_id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad compat\00", align 1
@UBI_COMPAT_DELETE = common dso_local global i32 0, align 4
@UBI_COMPAT_RO = common dso_local global i32 0, align 4
@UBI_COMPAT_PRESERVE = common dso_local global i32 0, align 4
@UBI_COMPAT_REJECT = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"bad vol_type\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"bad data_pad\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"zero used_ebs\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"zero data_size\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"bad data_size\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"bad data_size at last LEB\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"too high lnum\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"non-zero data CRC\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"non-zero data_size\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"zero data_size of copy\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"bad used_ebs\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"bad VID header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_vid_hdr*)* @validate_vid_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vid_hdr(%struct.ubi_device* %0, %struct.ubi_vid_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_vid_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_vid_hdr* %1, %struct.ubi_vid_hdr** %5, align 8
  %16 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %206

61:                                               ; preds = %56, %2
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %70, %67, %64, %61
  %77 = call i32 @dbg_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %206

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @UBI_MAX_VOLUMES, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @UBI_INTERNAL_VOL_START, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @dbg_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %206

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @UBI_INTERNAL_VOL_START, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @dbg_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %206

97:                                               ; preds = %92, %88
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @UBI_INTERNAL_VOL_START, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @UBI_COMPAT_DELETE, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @UBI_COMPAT_RO, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @UBI_COMPAT_PRESERVE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @UBI_COMPAT_REJECT, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @dbg_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %206

119:                                              ; preds = %113, %109, %105, %101, %97
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @UBI_VID_STATIC, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @dbg_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %206

129:                                              ; preds = %123, %119
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %132 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 2
  %135 = icmp sge i32 %130, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call i32 @dbg_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %206

138:                                              ; preds = %129
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @UBI_VID_STATIC, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %179

142:                                              ; preds = %138
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %206

147:                                              ; preds = %142
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @dbg_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %206

152:                                              ; preds = %147
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i32 @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %206

163:                                              ; preds = %157
  br label %178

164:                                              ; preds = %152
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %12, align 4
  %167 = sub nsw i32 %166, 1
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 @dbg_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %206

174:                                              ; preds = %169
  br label %177

175:                                              ; preds = %164
  %176 = call i32 @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %206

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %177, %163
  br label %205

179:                                              ; preds = %138
  %180 = load i32, i32* %7, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 @dbg_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %206

187:                                              ; preds = %182
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i32 @dbg_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %206

192:                                              ; preds = %187
  br label %199

193:                                              ; preds = %179
  %194 = load i32, i32* %11, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 @dbg_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %206

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %198, %192
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 @dbg_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %206

204:                                              ; preds = %199
  br label %205

205:                                              ; preds = %204, %178
  store i32 0, i32* %3, align 4
  br label %211

206:                                              ; preds = %202, %196, %190, %185, %175, %172, %161, %150, %145, %136, %127, %117, %95, %86, %76, %59
  %207 = call i32 @ubi_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %208 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %209 = call i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr* %208)
  %210 = call i32 (...) @ubi_dbg_dump_stack()
  store i32 1, i32* %3, align 4
  br label %211

211:                                              ; preds = %206, %205
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dbg_err(i8*) #1

declare dso_local i32 @ubi_err(i8*) #1

declare dso_local i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_dbg_dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

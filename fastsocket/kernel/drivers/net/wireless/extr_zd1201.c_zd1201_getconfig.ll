; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_getconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd1201 = type { i32, i8*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ZD1201_CMDCODE_ACCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZD1201_ACCESSBIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"riddatalen mismatches, expected=%u, (packet=%u) length=%u, rid=0x%04X, rid_fid=0x%04X\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@ZD1201_CMDCODE_SETRXRID = common dso_local global i32 0, align 4
@ZD1201_PACKET_RESOURCE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Packet type mismatch: 0x%x not 0x3\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Rx Resource packet type error: %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd1201*, i32, i8*, i32)* @zd1201_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_getconfig(%struct.zd1201* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd1201*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.zd1201* %0, %struct.zd1201** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %18 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %20 = load i32, i32* @ZD1201_CMDCODE_ACCESS, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @zd1201_docmd(%struct.zd1201* %19, i32 %20, i32 %21, i32 0, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %239

27:                                               ; preds = %4
  %28 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %29 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %32 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @wait_event_interruptible(i32 %30, i64 %33)
  %35 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %36 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %239

42:                                               ; preds = %27
  %43 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %44 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %51 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %58 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %66 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %42
  %70 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %71 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 6
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %42
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @ZD1201_ACCESSBIT, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @ZD1201_ACCESSBIT, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %74
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %239

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, 4
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %94 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = trunc i32 %97 to i8
  %99 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %100 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8 zeroext %98, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @ENODATA, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %239

108:                                              ; preds = %87
  %109 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %110 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %112 = load i32, i32* @ZD1201_CMDCODE_SETRXRID, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @zd1201_docmd(%struct.zd1201* %111, i32 %112, i32 %113, i32 0, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %5, align 4
  br label %239

120:                                              ; preds = %108
  %121 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %122 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %125 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @wait_event_interruptible(i32 %123, i64 %126)
  %128 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %129 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %120
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %239

135:                                              ; preds = %120
  %136 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %137 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %140 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %138, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @ZD1201_PACKET_RESOURCE, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %135
  %151 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %152 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %156 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %159 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %157, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %239

168:                                              ; preds = %135
  %169 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %170 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** %15, align 8
  %172 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %173 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %235, %168
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %176, 64
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %181

179:                                              ; preds = %175
  %180 = load i32, i32* %14, align 4
  br label %181

181:                                              ; preds = %179, %178
  %182 = phi i32 [ 64, %178 ], [ %180, %179 ]
  store i32 %182, i32* %16, align 4
  %183 = load i8*, i8** %15, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp ne i32 %186, 3
  br i1 %187, label %188, label %199

188:                                              ; preds = %181
  %189 = load %struct.zd1201*, %struct.zd1201** %6, align 8
  %190 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %189, i32 0, i32 2
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i8*, i8** %15, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %5, align 4
  br label %239

199:                                              ; preds = %181
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 64
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %16, align 4
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %11, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i8*, i8** %15, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  store i8* %210, i8** %15, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sub nsw i32 %211, 8
  store i32 %212, i32* %16, align 4
  br label %218

213:                                              ; preds = %205
  %214 = load i8*, i8** %15, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4
  store i8* %215, i8** %15, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sub nsw i32 %216, 4
  store i32 %217, i32* %16, align 4
  br label %218

218:                                              ; preds = %213, %208
  %219 = load i8*, i8** %8, align 8
  %220 = load i8*, i8** %15, align 8
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @memcpy(i8* %219, i8* %220, i32 %221)
  %223 = load i32, i32* %16, align 4
  %224 = load i8*, i8** %8, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr i8, i8* %224, i64 %225
  store i8* %226, i8** %8, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load i8*, i8** %15, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8* %230, i8** %15, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sub nsw i32 %231, 64
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %235

235:                                              ; preds = %218
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %175, label %238

238:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %238, %188, %150, %132, %118, %92, %84, %39, %25
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @zd1201_docmd(%struct.zd1201*, i32, i32, i32, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

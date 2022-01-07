; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_transfer_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_transfer_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@SR_REQ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [22 x i8] c"scsi%d: REQ detected\0A\00", align 1
@HOSTNO = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"scsi%d: phase mismatch\0A\00", align 1
@NDEBUG_PIO = common dso_local global i32 0, align 4
@SR_IO = common dso_local global i8 0, align 1
@OUTPUT_DATA_REG = common dso_local global i32 0, align 4
@CURRENT_SCSI_DATA_REG = common dso_local global i32 0, align 4
@SR_MSG = common dso_local global i8 0, align 1
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@ICR_BASE = common dso_local global i8 0, align 1
@ICR_ASSERT_DATA = common dso_local global i8 0, align 1
@ICR_ASSERT_ACK = common dso_local global i8 0, align 1
@ICR_ASSERT_ATN = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"scsi%d: req false, handshake complete\0A\00", align 1
@PHASE_MSGIN = common dso_local global i8 0, align 1
@PHASE_MSGOUT = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"scsi%d: residual %d\0A\00", align 1
@PHASE_UNKNOWN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i32*, i8**)* @NCR5380_transfer_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_transfer_pio(%struct.Scsi_Host* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %10, align 1
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %21 = load i8, i8* %10, align 1
  %22 = call zeroext i8 @PHASE_SR_TO_TCR(i8 zeroext %21)
  %23 = call i32 @NCR5380_write(i32 %20, i8 zeroext %22)
  br label %24

24:                                               ; preds = %193, %4
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32, i32* @STATUS_REG, align 4
  %27 = call zeroext i8 @NCR5380_read(i32 %26)
  store i8 %27, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @SR_REQ, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %25

35:                                               ; preds = %25
  %36 = load i32, i32* @HOSTNO, align 4
  %37 = call i32 @HSH_PRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @PHASE_MASK, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32, i32* @HOSTNO, align 4
  %48 = call i32 (i8*, i32, ...) @PIO_PRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @NDEBUG_PIO, align 4
  %50 = call i32 @NCR_PRINT_PHASE(i32 %49)
  br label %197

51:                                               ; preds = %35
  %52 = load i8, i8* %10, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @SR_IO, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @OUTPUT_DATA_REG, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @NCR5380_write(i32 %59, i8 zeroext %61)
  br label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @CURRENT_SCSI_DATA_REG, align 4
  %65 = call zeroext i8 @NCR5380_read(i32 %64)
  %66 = load i8*, i8** %13, align 8
  store i8 %65, i8* %66, align 1
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %13, align 8
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @SR_IO, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %137, label %76

76:                                               ; preds = %67
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @SR_MSG, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %108, label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %88 = load i8, i8* @ICR_BASE, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @ICR_ASSERT_DATA, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %89, %91
  %93 = trunc i32 %92 to i8
  %94 = call i32 @NCR5380_write(i32 %87, i8 zeroext %93)
  %95 = load i32, i32* @NDEBUG_PIO, align 4
  %96 = call i32 @NCR_PRINT(i32 %95)
  %97 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %98 = load i8, i8* @ICR_BASE, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @ICR_ASSERT_DATA, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %99, %101
  %103 = load i8, i8* @ICR_ASSERT_ACK, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = trunc i32 %105 to i8
  %107 = call i32 @NCR5380_write(i32 %97, i8 zeroext %106)
  br label %136

108:                                              ; preds = %83
  %109 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %110 = load i8, i8* @ICR_BASE, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @ICR_ASSERT_DATA, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %111, %113
  %115 = load i8, i8* @ICR_ASSERT_ATN, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i8
  %119 = call i32 @NCR5380_write(i32 %109, i8 zeroext %118)
  %120 = load i32, i32* @NDEBUG_PIO, align 4
  %121 = call i32 @NCR_PRINT(i32 %120)
  %122 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %123 = load i8, i8* @ICR_BASE, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @ICR_ASSERT_DATA, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %124, %126
  %128 = load i8, i8* @ICR_ASSERT_ATN, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %127, %129
  %131 = load i8, i8* @ICR_ASSERT_ACK, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = trunc i32 %133 to i8
  %135 = call i32 @NCR5380_write(i32 %122, i8 zeroext %134)
  br label %136

136:                                              ; preds = %108, %86
  br label %148

137:                                              ; preds = %67
  %138 = load i32, i32* @NDEBUG_PIO, align 4
  %139 = call i32 @NCR_PRINT(i32 %138)
  %140 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %141 = load i8, i8* @ICR_BASE, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @ICR_ASSERT_ACK, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = trunc i32 %145 to i8
  %147 = call i32 @NCR5380_write(i32 %140, i8 zeroext %146)
  br label %148

148:                                              ; preds = %137, %136
  br label %149

149:                                              ; preds = %157, %148
  %150 = load i32, i32* @STATUS_REG, align 4
  %151 = call zeroext i8 @NCR5380_read(i32 %150)
  %152 = zext i8 %151 to i32
  %153 = load i8, i8* @SR_REQ, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %149

158:                                              ; preds = %149
  %159 = load i32, i32* @HOSTNO, align 4
  %160 = call i32 @HSH_PRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = load i8, i8* %10, align 1
  %162 = zext i8 %161 to i32
  %163 = load i8, i8* @PHASE_MSGIN, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %192, label %169

169:                                              ; preds = %166, %158
  %170 = load i8, i8* %10, align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* @PHASE_MSGOUT, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load i32, i32* %12, align 4
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %180 = load i8, i8* @ICR_BASE, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @ICR_ASSERT_ATN, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %181, %183
  %185 = trunc i32 %184 to i8
  %186 = call i32 @NCR5380_write(i32 %179, i8 zeroext %185)
  br label %191

187:                                              ; preds = %175, %169
  %188 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %189 = load i8, i8* @ICR_BASE, align 1
  %190 = call i32 @NCR5380_write(i32 %188, i8 zeroext %189)
  br label %191

191:                                              ; preds = %187, %178
  br label %192

192:                                              ; preds = %191, %166
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %24, label %197

197:                                              ; preds = %193, %46
  %198 = load i32, i32* @HOSTNO, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 (i8*, i32, ...) @PIO_PRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i32, i32* %12, align 4
  %202 = load i32*, i32** %8, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i8*, i8** %13, align 8
  %204 = load i8**, i8*** %9, align 8
  store i8* %203, i8** %204, align 8
  %205 = load i32, i32* @STATUS_REG, align 4
  %206 = call zeroext i8 @NCR5380_read(i32 %205)
  store i8 %206, i8* %11, align 1
  %207 = load i8, i8* %11, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8, i8* @SR_REQ, align 1
  %210 = zext i8 %209 to i32
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %197
  %214 = load i8, i8* %10, align 1
  %215 = zext i8 %214 to i32
  %216 = load i8, i8* @PHASE_MSGIN, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %213
  %220 = load i32, i32* %12, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %219, %197
  %223 = load i8, i8* %11, align 1
  %224 = zext i8 %223 to i32
  %225 = load i8, i8* @PHASE_MASK, align 1
  %226 = zext i8 %225 to i32
  %227 = and i32 %224, %226
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %7, align 8
  store i8 %228, i8* %229, align 1
  br label %233

230:                                              ; preds = %219, %213
  %231 = load i8, i8* @PHASE_UNKNOWN, align 1
  %232 = load i8*, i8** %7, align 8
  store i8 %231, i8* %232, align 1
  br label %233

233:                                              ; preds = %230, %222
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = load i8*, i8** %7, align 8
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8, i8* %10, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236, %233
  store i32 0, i32* %5, align 4
  br label %245

244:                                              ; preds = %236
  store i32 -1, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %243
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @NCR5380_write(i32, i8 zeroext) #1

declare dso_local zeroext i8 @PHASE_SR_TO_TCR(i8 zeroext) #1

declare dso_local zeroext i8 @NCR5380_read(i32) #1

declare dso_local i32 @HSH_PRINTK(i8*, i32) #1

declare dso_local i32 @PIO_PRINTK(i8*, i32, ...) #1

declare dso_local i32 @NCR_PRINT_PHASE(i32) #1

declare dso_local i32 @NCR_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_prog_real.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_prog_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.firmware = type { i32*, i64 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't load firmware\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IF_SDIO_STATUS = common dso_local global i64 0, align 8
@IF_SDIO_IO_RDY = common dso_local global i32 0, align 4
@IF_SDIO_DL_RDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IF_SDIO_RD_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"firmware helper gave up early\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"firmware helper signalled error\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"waiting for firmware to boot...\0A\00", align 1
@IF_SDIO_FIRMWARE_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to load firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_prog_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_prog_real(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %13 = load i32, i32* @LBS_DEB_SDIO, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %16 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %19 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @request_firmware(%struct.firmware** %5, i32 %17, i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %208

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kzalloc(i32 512, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %205

35:                                               ; preds = %27
  %36 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %37 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @sdio_claim_host(%struct.TYPE_6__* %38)
  %40 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %41 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @sdio_set_block_size(%struct.TYPE_6__* %42, i32 32)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %198

47:                                               ; preds = %35
  %48 = load %struct.firmware*, %struct.firmware** %5, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %9, align 8
  %51 = load %struct.firmware*, %struct.firmware** %5, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %170, %47
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %171

57:                                               ; preds = %54
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* @HZ, align 8
  %60 = add i64 %58, %59
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %57, %89
  %62 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %63 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* @IF_SDIO_STATUS, align 8
  %66 = call i32 @sdio_readb(%struct.TYPE_6__* %64, i64 %65, i32* %3)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %198

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IF_SDIO_IO_RDY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @IF_SDIO_DL_RDY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %91

81:                                               ; preds = %75, %70
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @time_after(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %198

89:                                               ; preds = %81
  %90 = call i32 @mdelay(i32 1)
  br label %61

91:                                               ; preds = %80
  %92 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %93 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i64, i64* @IF_SDIO_RD_BASE, align 8
  %96 = call i32 @sdio_readb(%struct.TYPE_6__* %94, i64 %95, i32* %3)
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %11, align 8
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %198

101:                                              ; preds = %91
  %102 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %103 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i64, i64* @IF_SDIO_RD_BASE, align 8
  %106 = add nsw i64 %105, 1
  %107 = call i32 @sdio_readb(%struct.TYPE_6__* %104, i64 %106, i32* %3)
  %108 = shl i32 %107, 8
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %11, align 8
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %198

115:                                              ; preds = %101
  %116 = load i64, i64* %11, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %198

122:                                              ; preds = %115
  %123 = load i64, i64* %11, align 8
  %124 = and i64 %123, 1
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %198

130:                                              ; preds = %122
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %10, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* %10, align 8
  store i64 %135, i64* %11, align 8
  br label %136

136:                                              ; preds = %134, %130
  br label %137

137:                                              ; preds = %160, %136
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @min(i64 %141, i64 512)
  store i64 %142, i64* %8, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @memcpy(i32* %143, i32* %144, i64 %145)
  %147 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %148 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %151 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @roundup(i64 %154, i32 32)
  %156 = call i32 @sdio_writesb(%struct.TYPE_6__* %149, i32 %152, i32* %153, i32 %155)
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %3, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %140
  br label %198

160:                                              ; preds = %140
  %161 = load i64, i64* %8, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 %161
  store i32* %163, i32** %9, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %10, align 8
  %166 = sub i64 %165, %164
  store i64 %166, i64* %10, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* %11, align 8
  %169 = sub i64 %168, %167
  store i64 %169, i64* %11, align 8
  br label %137

170:                                              ; preds = %137
  br label %54

171:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  %172 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i64, i64* @jiffies, align 8
  %174 = load i64, i64* @HZ, align 8
  %175 = add i64 %173, %174
  store i64 %175, i64* %6, align 8
  br label %176

176:                                              ; preds = %171, %195
  %177 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %178 = call i64 @if_sdio_read_scratch(%struct.if_sdio_card* %177, i32* %3)
  store i64 %178, i64* %12, align 8
  %179 = load i32, i32* %3, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %198

182:                                              ; preds = %176
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* @IF_SDIO_FIRMWARE_OK, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %197

187:                                              ; preds = %182
  %188 = load i64, i64* @jiffies, align 8
  %189 = load i64, i64* %6, align 8
  %190 = call i64 @time_after(i64 %188, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i32, i32* @ETIMEDOUT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %198

195:                                              ; preds = %187
  %196 = call i32 @msleep(i32 10)
  br label %176

197:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %192, %181, %159, %126, %118, %114, %100, %86, %69, %46
  %199 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %200 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = call i32 @sdio_release_host(%struct.TYPE_6__* %201)
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @kfree(i32* %203)
  br label %205

205:                                              ; preds = %198, %32
  %206 = load %struct.firmware*, %struct.firmware** %5, align 8
  %207 = call i32 @release_firmware(%struct.firmware* %206)
  br label %208

208:                                              ; preds = %205, %25
  %209 = load i32, i32* %3, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %208
  %214 = load i32, i32* @LBS_DEB_SDIO, align 4
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @lbs_deb_leave_args(i32 %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_6__*) #1

declare dso_local i32 @sdio_set_block_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sdio_readb(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @sdio_writesb(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i64 @if_sdio_read_scratch(%struct.if_sdio_card*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

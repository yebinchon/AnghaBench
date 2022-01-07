; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_prog_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_prog_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.firmware = type { i32*, i64 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't load helper firmware\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IF_SDIO_STATUS = common dso_local global i64 0, align 8
@IF_SDIO_IO_RDY = common dso_local global i32 0, align 4
@IF_SDIO_DL_RDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"waiting for helper to boot...\0A\00", align 1
@IF_SDIO_RD_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to load helper firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_prog_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_prog_helper(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %12 = load i32, i32* @LBS_DEB_SDIO, align 4
  %13 = call i32 @lbs_deb_enter(i32 %12)
  %14 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %15 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %18 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @request_firmware(%struct.firmware** %5, i32 %16, i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %185

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 64, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %182

34:                                               ; preds = %26
  %35 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %36 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @sdio_claim_host(%struct.TYPE_6__* %37)
  %39 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %40 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @sdio_set_block_size(%struct.TYPE_6__* %41, i32 32)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %175

46:                                               ; preds = %34
  %47 = load %struct.firmware*, %struct.firmware** %5, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %9, align 8
  %50 = load %struct.firmware*, %struct.firmware** %5, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %112, %46
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %53
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i64, i64* @HZ, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %56, %88
  %61 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %62 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* @IF_SDIO_STATUS, align 8
  %65 = call i32 @sdio_readb(%struct.TYPE_6__* %63, i64 %64, i32* %3)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %175

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IF_SDIO_IO_RDY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @IF_SDIO_DL_RDY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %90

80:                                               ; preds = %74, %69
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @time_after(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %175

88:                                               ; preds = %80
  %89 = call i32 @mdelay(i32 1)
  br label %60

90:                                               ; preds = %79
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @min(i64 %91, i64 60)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @cpu_to_le32(i64 %93)
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @memcpy(i32* %97, i32* %98, i64 %99)
  %101 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %102 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %105 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @sdio_writesb(%struct.TYPE_6__* %103, i32 %106, i32* %107, i32 64)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %90
  br label %175

112:                                              ; preds = %90
  %113 = load i64, i64* %8, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %9, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %10, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %10, align 8
  br label %53

119:                                              ; preds = %53
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @memset(i32* %120, i32 0, i32 4)
  %122 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %123 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %126 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @sdio_writesb(%struct.TYPE_6__* %124, i32 %127, i32* %128, i32 64)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %119
  br label %175

133:                                              ; preds = %119
  %134 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i64, i64* @jiffies, align 8
  %136 = load i64, i64* @HZ, align 8
  %137 = add i64 %135, %136
  store i64 %137, i64* %6, align 8
  br label %138

138:                                              ; preds = %133, %172
  %139 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %140 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i64, i64* @IF_SDIO_RD_BASE, align 8
  %143 = call i32 @sdio_readb(%struct.TYPE_6__* %141, i64 %142, i32* %3)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %175

147:                                              ; preds = %138
  %148 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %149 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i64, i64* @IF_SDIO_RD_BASE, align 8
  %152 = add nsw i64 %151, 1
  %153 = call i32 @sdio_readb(%struct.TYPE_6__* %150, i64 %152, i32* %3)
  %154 = shl i32 %153, 8
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %3, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  br label %175

160:                                              ; preds = %147
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %174

164:                                              ; preds = %160
  %165 = load i64, i64* @jiffies, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i64 @time_after(i64 %165, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* @ETIMEDOUT, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %175

172:                                              ; preds = %164
  %173 = call i32 @msleep(i32 10)
  br label %138

174:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %169, %159, %146, %132, %111, %85, %68, %45
  %176 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %177 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = call i32 @sdio_release_host(%struct.TYPE_6__* %178)
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @kfree(i32* %180)
  br label %182

182:                                              ; preds = %175, %31
  %183 = load %struct.firmware*, %struct.firmware** %5, align 8
  %184 = call i32 @release_firmware(%struct.firmware* %183)
  br label %185

185:                                              ; preds = %182, %24
  %186 = load i32, i32* %3, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %185
  %191 = load i32, i32* @LBS_DEB_SDIO, align 4
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @lbs_deb_leave_args(i32 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* %3, align 4
  ret i32 %194
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

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @sdio_writesb(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

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

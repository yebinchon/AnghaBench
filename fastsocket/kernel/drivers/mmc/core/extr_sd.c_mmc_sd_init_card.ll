; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_sd_init_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_sd_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.mmc_card*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.mmc_host*, i32)* }
%struct.mmc_card = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@sd_type = common dso_local global i32 0, align 4
@MMC_TYPE_SD = common dso_local global i32 0, align 4
@MMC_BUSMODE_PUSHPULL = common dso_local global i32 0, align 4
@SD_ROCR_S18A = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SD_SCR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, %struct.mmc_card*)* @mmc_sd_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sd_init_card(%struct.mmc_host* %0, i32 %1, %struct.mmc_card* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mmc_card* %2, %struct.mmc_card** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %13 = icmp ne %struct.mmc_host* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %27 = call i32 @mmc_sd_get_cid(%struct.mmc_host* %24, i32 %25, i32* %26, i32* %11)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %203

32:                                               ; preds = %3
  %33 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %34 = icmp ne %struct.mmc_card* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %37 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %38 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @memcmp(i32* %36, i32 %39, i32 16)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %203

45:                                               ; preds = %35
  %46 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  store %struct.mmc_card* %46, %struct.mmc_card** %8, align 8
  br label %65

47:                                               ; preds = %32
  %48 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %49 = call %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %48, i32* @sd_type)
  store %struct.mmc_card* %49, %struct.mmc_card** %8, align 8
  %50 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %51 = call i64 @IS_ERR(%struct.mmc_card* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %55 = call i32 @PTR_ERR(%struct.mmc_card* %54)
  store i32 %55, i32* %4, align 4
  br label %203

56:                                               ; preds = %47
  %57 = load i32, i32* @MMC_TYPE_SD, align 4
  %58 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %64 = call i32 @memcpy(i32 %62, i32* %63, i32 4)
  br label %65

65:                                               ; preds = %56, %45
  %66 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %67 = call i32 @mmc_host_is_spi(%struct.mmc_host* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %71 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %72 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %71, i32 0, i32 1
  %73 = call i32 @mmc_send_relative_addr(%struct.mmc_host* %70, i32* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %203

78:                                               ; preds = %69
  %79 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %80 = load i32, i32* @MMC_BUSMODE_PUSHPULL, align 4
  %81 = call i32 @mmc_set_bus_mode(%struct.mmc_host* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %65
  %83 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %84 = icmp ne %struct.mmc_card* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %87 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %88 = call i32 @mmc_sd_get_csd(%struct.mmc_host* %86, %struct.mmc_card* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %203

93:                                               ; preds = %85
  %94 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %95 = call i32 @mmc_decode_cid(%struct.mmc_card* %94)
  br label %96

96:                                               ; preds = %93, %82
  %97 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %98 = call i32 @mmc_host_is_spi(%struct.mmc_host* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %102 = call i32 @mmc_select_card(%struct.mmc_card* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %203

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %110 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %111 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %112 = icmp ne %struct.mmc_card* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @mmc_sd_setup_card(%struct.mmc_host* %109, %struct.mmc_card* %110, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %195

118:                                              ; preds = %108
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @SD_ROCR_S18A, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  %124 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %125 = call i32 @mmc_sd_init_uhs_card(%struct.mmc_card* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %195

129:                                              ; preds = %123
  %130 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %131 = call i32 @mmc_sd_card_set_uhs(%struct.mmc_card* %130)
  %132 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %133 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %135, align 8
  %137 = icmp ne i32 (%struct.mmc_host*, i32)* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %140 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %142, align 8
  %144 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %145 = call i32 %143(%struct.mmc_host* %144, i32 1)
  br label %146

146:                                              ; preds = %138, %129
  br label %191

147:                                              ; preds = %118
  %148 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %149 = call i32 @mmc_sd_switch_hs(%struct.mmc_card* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %154 = call i32 @mmc_sd_go_highspeed(%struct.mmc_card* %153)
  br label %160

155:                                              ; preds = %147
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %195

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %159, %152
  %161 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %162 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %163 = call i32 @mmc_sd_get_max_clock(%struct.mmc_card* %162)
  %164 = call i32 @mmc_set_clock(%struct.mmc_host* %161, i32 %163)
  %165 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %166 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %160
  %172 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %173 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SD_SCR_BUS_WIDTH_4, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %171
  %180 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %181 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %182 = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %180, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %195

186:                                              ; preds = %179
  %187 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %188 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %189 = call i32 @mmc_set_bus_width(%struct.mmc_host* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %171, %160
  br label %191

191:                                              ; preds = %190, %146
  %192 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %193 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %194 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %193, i32 0, i32 1
  store %struct.mmc_card* %192, %struct.mmc_card** %194, align 8
  store i32 0, i32* %4, align 4
  br label %203

195:                                              ; preds = %185, %158, %128, %117
  %196 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %197 = icmp ne %struct.mmc_card* %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %200 = call i32 @mmc_remove_card(%struct.mmc_card* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %191, %105, %91, %76, %53, %42, %30
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_sd_get_cid(%struct.mmc_host*, i32, i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mmc_card*) #1

declare dso_local i32 @PTR_ERR(%struct.mmc_card*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_send_relative_addr(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_set_bus_mode(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sd_get_csd(%struct.mmc_host*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_decode_cid(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_setup_card(%struct.mmc_host*, %struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_sd_init_uhs_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_card_set_uhs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_switch_hs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_go_highspeed(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sd_get_max_clock(%struct.mmc_card*) #1

declare dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_set_bus_width(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_remove_card(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

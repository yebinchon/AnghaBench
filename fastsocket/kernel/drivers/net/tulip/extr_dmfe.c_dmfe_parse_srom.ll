; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_parse_srom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_parse_srom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"dmfe_parse_srom() \00", align 1
@CR15_DEFAULT = common dso_local global i32 0, align 4
@SROM_V41_CODE = common dso_local global i32 0, align 4
@DMFE_100MHF = common dso_local global i32 0, align 4
@dmfe_media_mode = common dso_local global i32 0, align 4
@DMFE_10MFD = common dso_local global i32 0, align 4
@DMFE_100MFD = common dso_local global i32 0, align 4
@DMFE_1M_HPNA = common dso_local global i32 0, align 4
@SF_mode = common dso_local global i32 0, align 4
@HPNA_rx_cmd = common dso_local global i64 0, align 8
@HPNA_tx_cmd = common dso_local global i32 0, align 4
@HPNA_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*)* @dmfe_parse_srom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_parse_srom(%struct.dmfe_board_info* %0) #0 {
  %2 = alloca %struct.dmfe_board_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %2, align 8
  %6 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %7 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  %10 = load i32, i32* @CR15_DEFAULT, align 4
  %11 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %12 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 18
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = and i32 %16, 255
  %18 = load i32, i32* @SROM_V41_CODE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %130

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 34
  %23 = bitcast i8* %22 to i32*
  %24 = call i32 @le16_to_cpup(i32* %23)
  %25 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %26 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %28 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %27, i32 0, i32 3
  store i32 0, i32* %28, align 8
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %59, %20
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %34 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %58 [
    i32 1, label %38
    i32 2, label %43
    i32 4, label %48
    i32 8, label %53
  ]

38:                                               ; preds = %32
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, 32
  store i32 %42, i32* %40, align 8
  br label %58

43:                                               ; preds = %32
  %44 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %45 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, 64
  store i32 %47, i32* %45, align 8
  br label %58

48:                                               ; preds = %32
  %49 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %50 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, 128
  store i32 %52, i32* %50, align 8
  br label %58

53:                                               ; preds = %32
  %54 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %55 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, 256
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %32, %53, %48, %43, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 34
  %65 = bitcast i8* %64 to i32*
  %66 = call i32 @le32_to_cpup(i32* %65)
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 36
  %69 = bitcast i8* %68 to i32*
  %70 = call i32 @le32_to_cpup(i32* %69)
  %71 = and i32 %66, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  switch i32 %72, label %81 [
    i32 4, label %73
    i32 2, label %75
    i32 8, label %77
    i32 256, label %79
    i32 512, label %79
  ]

73:                                               ; preds = %62
  %74 = load i32, i32* @DMFE_100MHF, align 4
  store i32 %74, i32* @dmfe_media_mode, align 4
  br label %81

75:                                               ; preds = %62
  %76 = load i32, i32* @DMFE_10MFD, align 4
  store i32 %76, i32* @dmfe_media_mode, align 4
  br label %81

77:                                               ; preds = %62
  %78 = load i32, i32* @DMFE_100MFD, align 4
  store i32 %78, i32* @dmfe_media_mode, align 4
  br label %81

79:                                               ; preds = %62, %62
  %80 = load i32, i32* @DMFE_1M_HPNA, align 4
  store i32 %80, i32* @dmfe_media_mode, align 4
  br label %81

81:                                               ; preds = %62, %79, %77, %75, %73
  %82 = load i32, i32* @SF_mode, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 43
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = and i32 %89, 128
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85, %81
  %93 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %94 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, 64
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %85
  %98 = load i32, i32* @SF_mode, align 4
  %99 = and i32 %98, 2
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 40
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101, %97
  %109 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %110 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, 1024
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %101
  %114 = load i32, i32* @SF_mode, align 4
  %115 = and i32 %114, 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 40
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 %121, 14
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117, %113
  %125 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %126 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, 38912
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %124, %117
  br label %130

130:                                              ; preds = %129, %1
  %131 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %132 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %131, i32 0, i32 4
  store i32 1, i32* %132, align 4
  %133 = load i64, i64* @HPNA_rx_cmd, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %137 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, 32768
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* @HPNA_tx_cmd, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %166

143:                                              ; preds = %140
  %144 = load i32, i32* @HPNA_mode, align 4
  switch i32 %144, label %165 [
    i32 0, label %145
    i32 1, label %150
    i32 2, label %155
    i32 3, label %160
  ]

145:                                              ; preds = %143
  %146 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %147 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, 2308
  store i32 %149, i32* %147, align 4
  br label %165

150:                                              ; preds = %143
  %151 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %152 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, 2560
  store i32 %154, i32* %152, align 4
  br label %165

155:                                              ; preds = %143
  %156 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %157 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, 1286
  store i32 %159, i32* %157, align 4
  br label %165

160:                                              ; preds = %143
  %161 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %162 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, 1538
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %143, %160, %155, %150, %145
  br label %188

166:                                              ; preds = %140
  %167 = load i32, i32* @HPNA_mode, align 4
  switch i32 %167, label %187 [
    i32 0, label %168
    i32 1, label %173
    i32 2, label %177
    i32 3, label %182
  ]

168:                                              ; preds = %166
  %169 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %170 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, 4
  store i32 %172, i32* %170, align 4
  br label %187

173:                                              ; preds = %166
  %174 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %175 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %175, align 4
  br label %187

177:                                              ; preds = %166
  %178 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %179 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, 6
  store i32 %181, i32* %179, align 4
  br label %187

182:                                              ; preds = %166
  %183 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %184 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, 2
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %166, %182, %177, %173, %168
  br label %188

188:                                              ; preds = %187, %165
  %189 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %190 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %189, i32 0, i32 5
  store i32 0, i32* %190, align 8
  %191 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %192 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, 262144
  %195 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %196 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %195, i32 0, i32 10
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @update_cr6(i32 %194, i32 %197)
  %199 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %200 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %203 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %206 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @phy_read(i32 %201, i32 %204, i32 3, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = and i32 %209, 65520
  %211 = icmp eq i32 %210, 47360
  br i1 %211, label %212, label %238

212:                                              ; preds = %188
  %213 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %214 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %213, i32 0, i32 7
  store i32 8, i32* %214, align 8
  %215 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %216 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %219 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %222 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @phy_read(i32 %217, i32 %220, i32 31, i32 %223)
  %225 = icmp eq i32 %224, 17412
  br i1 %225, label %226, label %232

226:                                              ; preds = %212
  %227 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %228 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %227, i32 0, i32 5
  store i32 1, i32* %228, align 8
  %229 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @dmfe_program_DM9801(%struct.dmfe_board_info* %229, i32 %230)
  br label %237

232:                                              ; preds = %212
  %233 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %234 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %233, i32 0, i32 5
  store i32 2, i32* %234, align 8
  %235 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %236 = call i32 @dmfe_program_DM9802(%struct.dmfe_board_info* %235)
  br label %237

237:                                              ; preds = %232, %226
  br label %238

238:                                              ; preds = %237, %188
  ret void
}

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @phy_read(i32, i32, i32, i32) #1

declare dso_local i32 @dmfe_program_DM9801(%struct.dmfe_board_info*, i32) #1

declare dso_local i32 @dmfe_program_DM9802(%struct.dmfe_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

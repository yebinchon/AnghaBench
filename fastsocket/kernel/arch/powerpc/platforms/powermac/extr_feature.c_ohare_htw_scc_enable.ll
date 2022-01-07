; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_ohare_htw_scc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_ohare_htw_scc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.macio_chip = type { i64, i64 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ch-a\00", align 1
@MACIO_FLAG_SCCA_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ch-b\00", align 1
@MACIO_FLAG_SCCB_ON = common dso_local global i64 0, align 8
@macio_heathrow = common dso_local global i64 0, align 8
@macio_paddington = common dso_local global i64 0, align 8
@macio_gatwick = common dso_local global i64 0, align 8
@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMAC_TYPE_YOSEMITE = common dso_local global i64 0, align 8
@PMAC_TYPE_YIKES = common dso_local global i64 0, align 8
@OHARE_FCR = common dso_local global i32 0, align 4
@OH_SCC_ENABLE = common dso_local global i64 0, align 8
@HRW_SCC_TRANS_EN_N = common dso_local global i64 0, align 8
@HRW_RESET_SCC = common dso_local global i64 0, align 8
@OH_SCC_RESET = common dso_local global i64 0, align 8
@OH_SCCA_IO = common dso_local global i64 0, align 8
@OH_SCCB_IO = common dso_local global i64 0, align 8
@PMAC_SCC_FLAG_XMON = common dso_local global i64 0, align 8
@MACIO_FLAG_SCC_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@PMAC_SCC_IRDA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @ohare_htw_scc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ohare_htw_scc_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.macio_chip* @macio_find(%struct.device_node* %15, i32 0)
  store %struct.macio_chip* %16, %struct.macio_chip** %8, align 8
  %17 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %18 = icmp ne %struct.macio_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @ENODEV, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %245

22:                                               ; preds = %3
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  store i64 %29, i64* %9, align 8
  br label %42

30:                                               ; preds = %22
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = getelementptr inbounds %struct.device_node, %struct.device_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  store i64 %37, i64* %9, align 8
  br label %41

38:                                               ; preds = %30
  %39 = load i64, i64* @ENODEV, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %245

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %44 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @macio_heathrow, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %50 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @macio_paddington, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %56 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @macio_gatwick, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %54, %48, %42
  %61 = phi i1 [ true, %48 ], [ true, %42 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %64 = load i64, i64* @PMAC_TYPE_YOSEMITE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %68 = load i64, i64* @PMAC_TYPE_YIKES, align 8
  %69 = icmp ne i64 %67, %68
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi i1 [ false, %60 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %171

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @LOCK(i64 %76)
  %78 = load i32, i32* @OHARE_FCR, align 4
  %79 = call i64 @MACIO_IN32(i32 %78)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @OH_SCC_ENABLE, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %130, label %84

84:                                               ; preds = %75
  %85 = load i64, i64* @OH_SCC_ENABLE, align 8
  %86 = load i64, i64* %10, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i64, i64* @HRW_SCC_TRANS_EN_N, align 8
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %10, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* @OHARE_FCR, align 4
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @MACIO_OUT32(i32 %99, i64 %100)
  %102 = load i64, i64* @HRW_RESET_SCC, align 8
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %10, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %10, align 8
  %105 = load i32, i32* @OHARE_FCR, align 4
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @MACIO_OUT32(i32 %105, i64 %106)
  br label %115

108:                                              ; preds = %84
  %109 = load i64, i64* @OH_SCC_RESET, align 8
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %10, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load i32, i32* @OHARE_FCR, align 4
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @MACIO_OUT32(i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %108, %98
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @UNLOCK(i64 %116)
  %118 = load i32, i32* @OHARE_FCR, align 4
  %119 = call i64 @MACIO_IN32(i32 %118)
  %120 = call i32 @mdelay(i32 15)
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @LOCK(i64 %121)
  %123 = load i64, i64* %14, align 8
  %124 = xor i64 %123, -1
  %125 = load i64, i64* %10, align 8
  %126 = and i64 %125, %124
  store i64 %126, i64* %10, align 8
  %127 = load i32, i32* @OHARE_FCR, align 4
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @MACIO_OUT32(i32 %127, i64 %128)
  br label %130

130:                                              ; preds = %115, %75
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i64, i64* @OH_SCCA_IO, align 8
  %137 = load i64, i64* %10, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i64, i64* @OH_SCCB_IO, align 8
  %146 = load i64, i64* %10, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* @OHARE_FCR, align 4
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @MACIO_OUT32(i32 %149, i64 %150)
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %154 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = or i64 %155, %152
  store i64 %156, i64* %154, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @UNLOCK(i64 %157)
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @PMAC_SCC_FLAG_XMON, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %148
  %164 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %165 = sext i32 %164 to i64
  %166 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %167 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = or i64 %168, %165
  store i64 %169, i64* %167, align 8
  br label %170

170:                                              ; preds = %163, %148
  br label %244

171:                                              ; preds = %70
  %172 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %173 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %176 = sext i32 %175 to i64
  %177 = and i64 %174, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i64, i64* @EPERM, align 8
  %181 = sub nsw i64 0, %180
  store i64 %181, i64* %4, align 8
  br label %245

182:                                              ; preds = %171
  %183 = load i64, i64* %11, align 8
  %184 = call i32 @LOCK(i64 %183)
  %185 = load i32, i32* @OHARE_FCR, align 4
  %186 = call i64 @MACIO_IN32(i32 %185)
  store i64 %186, i64* %10, align 8
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %189 = and i64 %187, %188
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %182
  %192 = load i64, i64* @OH_SCCA_IO, align 8
  %193 = xor i64 %192, -1
  %194 = load i64, i64* %10, align 8
  %195 = and i64 %194, %193
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %191, %182
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i64, i64* @OH_SCCB_IO, align 8
  %203 = xor i64 %202, -1
  %204 = load i64, i64* %10, align 8
  %205 = and i64 %204, %203
  store i64 %205, i64* %10, align 8
  br label %206

206:                                              ; preds = %201, %196
  %207 = load i32, i32* @OHARE_FCR, align 4
  %208 = load i64, i64* %10, align 8
  %209 = call i32 @MACIO_OUT32(i32 %207, i64 %208)
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* @OH_SCCA_IO, align 8
  %212 = load i64, i64* @OH_SCCB_IO, align 8
  %213 = or i64 %211, %212
  %214 = and i64 %210, %213
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %206
  %217 = load i64, i64* @OH_SCC_ENABLE, align 8
  %218 = xor i64 %217, -1
  %219 = load i64, i64* %10, align 8
  %220 = and i64 %219, %218
  store i64 %220, i64* %10, align 8
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i64, i64* @HRW_SCC_TRANS_EN_N, align 8
  %228 = load i64, i64* %10, align 8
  %229 = or i64 %228, %227
  store i64 %229, i64* %10, align 8
  br label %230

230:                                              ; preds = %226, %223, %216
  %231 = load i32, i32* @OHARE_FCR, align 4
  %232 = load i64, i64* %10, align 8
  %233 = call i32 @MACIO_OUT32(i32 %231, i64 %232)
  br label %234

234:                                              ; preds = %230, %206
  %235 = load i64, i64* %9, align 8
  %236 = xor i64 %235, -1
  %237 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %238 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = and i64 %239, %236
  store i64 %240, i64* %238, align 8
  %241 = load i64, i64* %11, align 8
  %242 = call i32 @UNLOCK(i64 %241)
  %243 = call i32 @mdelay(i32 10)
  br label %244

244:                                              ; preds = %234, %170
  store i64 0, i64* %4, align 8
  br label %245

245:                                              ; preds = %244, %179, %38, %19
  %246 = load i64, i64* %4, align 8
  ret i64 %246
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i64 @MACIO_IN32(i32) #1

declare dso_local i32 @MACIO_OUT32(i32, i64) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

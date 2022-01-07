; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_read_seeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_read_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seeprom_cmd = type { i8, [3 x i8] }
%struct.aic7xxx_host = type { i32 }

@__const.read_seeprom.seeprom_read = private unnamed_addr constant %struct.seeprom_cmd { i8 3, [3 x i8] c"\01\01\00" }, align 1
@SEEMS = common dso_local global i32 0, align 4
@SEECK = common dso_local global i32 0, align 4
@SEECS = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i32 0, align 4
@SEEDI = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*, i32, i16*, i32, i64)* @read_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_seeprom(%struct.aic7xxx_host* %0, i32 %1, i16* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aic7xxx_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca %struct.seeprom_cmd, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16* %2, i16** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i16 0, i16* %15, align 2
  %17 = bitcast %struct.seeprom_cmd* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds (%struct.seeprom_cmd, %struct.seeprom_cmd* @__const.read_seeprom.seeprom_read, i32 0, i32 0), i64 4, i1 false)
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %19 = call i64 @acquire_seeprom(%struct.aic7xxx_host* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %237

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %215, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %218

27:                                               ; preds = %23
  %28 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %29 = load i32, i32* @SEEMS, align 4
  %30 = load i32, i32* @SEECK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SEECS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SEECTL, align 4
  %35 = call i32 @aic_outb(%struct.aic7xxx_host* %28, i32 %33, i32 %34)
  %36 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %37 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %36)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %76, %27
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.seeprom_cmd, %struct.seeprom_cmd* %16, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %38
  %45 = load i32, i32* @SEEMS, align 4
  %46 = load i32, i32* @SEECS, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.seeprom_cmd, %struct.seeprom_cmd* %16, i32 0, i32 1
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %48, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 1
  %55 = or i32 %47, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %14, align 1
  %57 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %58 = load i8, i8* %14, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* @SEECTL, align 4
  %61 = call i32 @aic_outb(%struct.aic7xxx_host* %57, i32 %59, i32 %60)
  %62 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %63 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %62)
  %64 = load i8, i8* %14, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* @SEECK, align 4
  %67 = xor i32 %65, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %14, align 1
  %69 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %70 = load i8, i8* %14, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* @SEECTL, align 4
  %73 = call i32 @aic_outb(%struct.aic7xxx_host* %69, i32 %71, i32 %72)
  %74 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %75 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %74)
  br label %76

76:                                               ; preds = %44
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %38

79:                                               ; preds = %38
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i32
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %124, %79
  %84 = load i32, i32* %12, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %127

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %14, align 1
  %91 = load i8, i8* %14, align 1
  %92 = zext i8 %91 to i32
  %93 = load i32, i32* %12, align 4
  %94 = ashr i32 %92, %93
  %95 = and i32 %94, 1
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %14, align 1
  %97 = load i32, i32* @SEEMS, align 4
  %98 = load i32, i32* @SEECS, align 4
  %99 = or i32 %97, %98
  %100 = load i8, i8* %14, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 1
  %103 = or i32 %99, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %106 = load i8, i8* %14, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* @SEECTL, align 4
  %109 = call i32 @aic_outb(%struct.aic7xxx_host* %105, i32 %107, i32 %108)
  %110 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %111 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %110)
  %112 = load i8, i8* %14, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* @SEECK, align 4
  %115 = xor i32 %113, %114
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %14, align 1
  %117 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %118 = load i8, i8* %14, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32, i32* @SEECTL, align 4
  %121 = call i32 @aic_outb(%struct.aic7xxx_host* %117, i32 %119, i32 %120)
  %122 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %123 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %122)
  br label %124

124:                                              ; preds = %86
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %12, align 4
  br label %83

127:                                              ; preds = %83
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %175, %127
  %129 = load i32, i32* %12, align 4
  %130 = icmp sle i32 %129, 16
  br i1 %130, label %131, label %178

131:                                              ; preds = %128
  %132 = load i32, i32* @SEEMS, align 4
  %133 = load i32, i32* @SEECS, align 4
  %134 = or i32 %132, %133
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %14, align 1
  %136 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %137 = load i8, i8* %14, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* @SEECTL, align 4
  %140 = call i32 @aic_outb(%struct.aic7xxx_host* %136, i32 %138, i32 %139)
  %141 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %142 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %141)
  %143 = load i8, i8* %14, align 1
  %144 = zext i8 %143 to i32
  %145 = load i32, i32* @SEECK, align 4
  %146 = xor i32 %144, %145
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %14, align 1
  %148 = load i16*, i16** %9, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, i16* %148, i64 %150
  %152 = load i16, i16* %151, align 2
  %153 = zext i16 %152 to i32
  %154 = shl i32 %153, 1
  %155 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %156 = load i32, i32* @SEECTL, align 4
  %157 = call zeroext i16 @aic_inb(%struct.aic7xxx_host* %155, i32 %156)
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* @SEEDI, align 2
  %160 = zext i16 %159 to i32
  %161 = and i32 %158, %160
  %162 = or i32 %154, %161
  %163 = trunc i32 %162 to i16
  %164 = load i16*, i16** %9, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i16, i16* %164, i64 %166
  store i16 %163, i16* %167, align 2
  %168 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %169 = load i8, i8* %14, align 1
  %170 = zext i8 %169 to i32
  %171 = load i32, i32* @SEECTL, align 4
  %172 = call i32 @aic_outb(%struct.aic7xxx_host* %168, i32 %170, i32 %171)
  %173 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %174 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %173)
  br label %175

175:                                              ; preds = %131
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %128

178:                                              ; preds = %128
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %10, align 4
  %181 = sub i32 %180, 1
  %182 = icmp ult i32 %179, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load i16, i16* %15, align 2
  %185 = zext i16 %184 to i32
  %186 = load i16*, i16** %9, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %186, i64 %188
  %190 = load i16, i16* %189, align 2
  %191 = zext i16 %190 to i32
  %192 = add nsw i32 %185, %191
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %15, align 2
  br label %194

194:                                              ; preds = %183, %178
  %195 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %196 = load i32, i32* @SEEMS, align 4
  %197 = load i32, i32* @SEECTL, align 4
  %198 = call i32 @aic_outb(%struct.aic7xxx_host* %195, i32 %196, i32 %197)
  %199 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %200 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %199)
  %201 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %202 = load i32, i32* @SEEMS, align 4
  %203 = load i32, i32* @SEECK, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @SEECTL, align 4
  %206 = call i32 @aic_outb(%struct.aic7xxx_host* %201, i32 %204, i32 %205)
  %207 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %208 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %207)
  %209 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %210 = load i32, i32* @SEEMS, align 4
  %211 = load i32, i32* @SEECTL, align 4
  %212 = call i32 @aic_outb(%struct.aic7xxx_host* %209, i32 %210, i32 %211)
  %213 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %214 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %213)
  br label %215

215:                                              ; preds = %194
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %23

218:                                              ; preds = %23
  %219 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %220 = call i32 @release_seeprom(%struct.aic7xxx_host* %219)
  %221 = load i16, i16* %15, align 2
  %222 = zext i16 %221 to i32
  %223 = load i16*, i16** %9, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sub i32 %224, 1
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i16, i16* %223, i64 %226
  %228 = load i16, i16* %227, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp ne i32 %222, %229
  br i1 %230, label %235, label %231

231:                                              ; preds = %218
  %232 = load i16, i16* %15, align 2
  %233 = zext i16 %232 to i32
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231, %218
  store i32 0, i32* %6, align 4
  br label %237

236:                                              ; preds = %231
  store i32 1, i32* %6, align 4
  br label %237

237:                                              ; preds = %236, %235, %21
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @acquire_seeprom(%struct.aic7xxx_host*) #2

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #2

declare dso_local i32 @CLOCK_PULSE(%struct.aic7xxx_host*) #2

declare dso_local zeroext i16 @aic_inb(%struct.aic7xxx_host*, i32) #2

declare dso_local i32 @release_seeprom(%struct.aic7xxx_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotable.c_RIOApel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotable.c_RIOApel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { %struct.Map*, %struct.Host* }
%struct.Map = type { i32, i32, i32*, i32, i64, i64, i32 }
%struct.Host = type { i32, i32, %struct.Map*, i32, i32*, i32 }

@RIO_DEBUG_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Generating a table to return to config.rio\0A\00", align 1
@TOTAL_MAP_ENTRIES = common dso_local global i32 0, align 4
@RIO_HOSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Processing host %d\0A\00", align 1
@RUN_STATE = common dso_local global i32 0, align 4
@RC_RUNNING = common dso_local global i32 0, align 4
@SLOT_IN_USE = common dso_local global i32 0, align 4
@NO_PORT = common dso_local global i32 0, align 4
@LINKS_PER_UNIT = common dso_local global i32 0, align 4
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@MAX_RUP = common dso_local global i32 0, align 4
@SLOT_TENTATIVE = common dso_local global i32 0, align 4
@RTA16_SECOND_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOApel(%struct.rio_info* %0) #0 {
  %2 = alloca %struct.rio_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Map*, align 8
  %8 = alloca %struct.Host*, align 8
  %9 = alloca i64, align 8
  store %struct.rio_info* %0, %struct.rio_info** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @RIO_DEBUG_TABLE, align 4
  %11 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %13 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %12, i32 0, i32 0
  %14 = load %struct.Map*, %struct.Map** %13, align 8
  %15 = getelementptr inbounds %struct.Map, %struct.Map* %14, i64 0
  %16 = load i32, i32* @TOTAL_MAP_ENTRIES, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 48, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(%struct.Map* %15, i32 0, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %217, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @RIO_HOSTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %220

25:                                               ; preds = %21
  %26 = load i32, i32* @RIO_DEBUG_TABLE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %30 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %29, i32 0, i32 1
  %31 = load %struct.Host*, %struct.Host** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.Host, %struct.Host* %31, i64 %33
  store %struct.Host* %34, %struct.Host** %8, align 8
  %35 = load %struct.Host*, %struct.Host** %8, align 8
  %36 = getelementptr inbounds %struct.Host, %struct.Host* %35, i32 0, i32 1
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @rio_spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %40 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %39, i32 0, i32 0
  %41 = load %struct.Map*, %struct.Map** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.Map, %struct.Map* %41, i64 %44
  store %struct.Map* %45, %struct.Map** %7, align 8
  %46 = load %struct.Host*, %struct.Host** %8, align 8
  %47 = getelementptr inbounds %struct.Host, %struct.Host* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.Map*, %struct.Map** %7, align 8
  %50 = getelementptr inbounds %struct.Map, %struct.Map* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.Host*, %struct.Host** %8, align 8
  %52 = getelementptr inbounds %struct.Host, %struct.Host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RUN_STATE, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @RC_RUNNING, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %25
  %59 = load %struct.Host*, %struct.Host** %8, align 8
  %60 = getelementptr inbounds %struct.Host, %struct.Host* %59, i32 0, i32 1
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @rio_spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %217

63:                                               ; preds = %25
  %64 = load %struct.Map*, %struct.Map** %7, align 8
  %65 = getelementptr inbounds %struct.Map, %struct.Map* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.Map*, %struct.Map** %7, align 8
  %67 = getelementptr inbounds %struct.Map, %struct.Map* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @SLOT_IN_USE, align 4
  %69 = load %struct.Map*, %struct.Map** %7, align 8
  %70 = getelementptr inbounds %struct.Map, %struct.Map* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @NO_PORT, align 4
  %72 = load %struct.Map*, %struct.Map** %7, align 8
  %73 = getelementptr inbounds %struct.Map, %struct.Map* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %92, %63
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @LINKS_PER_UNIT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load %struct.Host*, %struct.Host** %8, align 8
  %80 = getelementptr inbounds %struct.Host, %struct.Host* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.Map*, %struct.Map** %7, align 8
  %87 = getelementptr inbounds %struct.Map, %struct.Map* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %74

95:                                               ; preds = %74
  %96 = load %struct.Map*, %struct.Map** %7, align 8
  %97 = getelementptr inbounds %struct.Map, %struct.Map* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.Host*, %struct.Host** %8, align 8
  %100 = getelementptr inbounds %struct.Host, %struct.Host* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MAX_NAME_LEN, align 4
  %103 = call i32 @memcpy(i32 %98, i32 %101, i32 %102)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %209, %95
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MAX_RUP, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %212

108:                                              ; preds = %104
  %109 = load %struct.Host*, %struct.Host** %8, align 8
  %110 = getelementptr inbounds %struct.Host, %struct.Host* %109, i32 0, i32 2
  %111 = load %struct.Map*, %struct.Map** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.Map, %struct.Map* %111, i64 %113
  %115 = getelementptr inbounds %struct.Map, %struct.Map* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SLOT_IN_USE, align 4
  %118 = load i32, i32* @SLOT_TENTATIVE, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %208

122:                                              ; preds = %108
  %123 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %124 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %123, i32 0, i32 0
  %125 = load %struct.Map*, %struct.Map** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Map, %struct.Map* %125, i64 %127
  %129 = load %struct.Host*, %struct.Host** %8, align 8
  %130 = getelementptr inbounds %struct.Host, %struct.Host* %129, i32 0, i32 2
  %131 = load %struct.Map*, %struct.Map** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Map, %struct.Map* %131, i64 %133
  %135 = bitcast %struct.Map* %128 to i8*
  %136 = bitcast %struct.Map* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 48, i1 false)
  %137 = load %struct.Host*, %struct.Host** %8, align 8
  %138 = getelementptr inbounds %struct.Host, %struct.Host* %137, i32 0, i32 2
  %139 = load %struct.Map*, %struct.Map** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Map, %struct.Map* %139, i64 %141
  %143 = getelementptr inbounds %struct.Map, %struct.Map* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SLOT_IN_USE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %122
  %149 = load i32, i32* @SLOT_IN_USE, align 4
  %150 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %151 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %150, i32 0, i32 0
  %152 = load %struct.Map*, %struct.Map** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.Map, %struct.Map* %152, i64 %154
  %156 = getelementptr inbounds %struct.Map, %struct.Map* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %149
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %148, %122
  %160 = load %struct.Host*, %struct.Host** %8, align 8
  %161 = getelementptr inbounds %struct.Host, %struct.Host* %160, i32 0, i32 2
  %162 = load %struct.Map*, %struct.Map** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.Map, %struct.Map* %162, i64 %164
  %166 = getelementptr inbounds %struct.Map, %struct.Map* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @SLOT_TENTATIVE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %159
  %172 = load i32, i32* @SLOT_TENTATIVE, align 4
  %173 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %174 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %173, i32 0, i32 0
  %175 = load %struct.Map*, %struct.Map** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.Map, %struct.Map* %175, i64 %177
  %179 = getelementptr inbounds %struct.Map, %struct.Map* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %172
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %171, %159
  %183 = load %struct.Host*, %struct.Host** %8, align 8
  %184 = getelementptr inbounds %struct.Host, %struct.Host* %183, i32 0, i32 2
  %185 = load %struct.Map*, %struct.Map** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.Map, %struct.Map* %185, i64 %187
  %189 = getelementptr inbounds %struct.Map, %struct.Map* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @RTA16_SECOND_SLOT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %182
  %195 = load i32, i32* @RTA16_SECOND_SLOT, align 4
  %196 = load %struct.rio_info*, %struct.rio_info** %2, align 8
  %197 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %196, i32 0, i32 0
  %198 = load %struct.Map*, %struct.Map** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Map, %struct.Map* %198, i64 %200
  %202 = getelementptr inbounds %struct.Map, %struct.Map* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %195
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %194, %182
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %205, %108
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %104

212:                                              ; preds = %104
  %213 = load %struct.Host*, %struct.Host** %8, align 8
  %214 = getelementptr inbounds %struct.Host, %struct.Host* %213, i32 0, i32 1
  %215 = load i64, i64* %9, align 8
  %216 = call i32 @rio_spin_unlock_irqrestore(i32* %214, i64 %215)
  br label %217

217:                                              ; preds = %212, %58
  %218 = load i32, i32* %3, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %3, align 4
  br label %21

220:                                              ; preds = %21
  ret i32 0
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.Map*, i32, i32) #1

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

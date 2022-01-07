; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_expander_refresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_expander_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.mptsas_portinfo = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i64 }
%struct.device = type { i32 }
%struct.sas_rphy = type { %struct.device }

@MPI_SAS_EXPAND_PGAD_FORM_HANDLE_PHY_NUM = common dso_local global i32 0, align 4
@MPI_SAS_EXPAND_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.mptsas_portinfo*)* @mptsas_expander_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_expander_refresh(%struct.TYPE_11__* %0, %struct.mptsas_portinfo* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.mptsas_portinfo*, align 8
  %5 = alloca %struct.mptsas_portinfo*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sas_rphy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.mptsas_portinfo* %1, %struct.mptsas_portinfo** %4, align 8
  %11 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %12 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %18 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %133, %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %27 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %136

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %33 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %36
  %38 = load i32, i32* @MPI_SAS_EXPAND_PGAD_FORM_HANDLE_PHY_NUM, align 4
  %39 = load i32, i32* @MPI_SAS_EXPAND_PGAD_FORM_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @mptsas_sas_expander_pg1(%struct.TYPE_11__* %31, %struct.TYPE_12__* %37, i32 %40, i64 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %49 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %56 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %59 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mptsas_sas_device_pg0(%struct.TYPE_11__* %47, %struct.TYPE_13__* %54, i32 %57, i64 %66)
  %68 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %69 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %77 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  store i32 %75, i32* %83, align 4
  %84 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %85 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %30
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %97 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %104 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %107 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mptsas_sas_device_pg0(%struct.TYPE_11__* %95, %struct.TYPE_13__* %102, i32 %105, i64 %114)
  %116 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %117 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %125 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  store i32 %123, i32* %131, align 4
  br label %132

132:                                              ; preds = %94, %30
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %24

136:                                              ; preds = %24
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = call i32 @mutex_lock(i32* %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %142 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %141, i32 0, i32 1
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.mptsas_portinfo* @mptsas_find_portinfo_by_handle(%struct.TYPE_11__* %140, i32 %147)
  store %struct.mptsas_portinfo* %148, %struct.mptsas_portinfo** %5, align 8
  %149 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %150 = icmp ne %struct.mptsas_portinfo* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %136
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = call i32 @mutex_unlock(i32* %153)
  br label %226

155:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  store %struct.device* null, %struct.device** %6, align 8
  br label %156

156:                                              ; preds = %191, %155
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %159 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.device*, %struct.device** %6, align 8
  %164 = icmp ne %struct.device* %163, null
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %162, %156
  %167 = phi i1 [ false, %156 ], [ %165, %162 ]
  br i1 %167, label %168, label %194

168:                                              ; preds = %166
  %169 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %170 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %9, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %168
  %181 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %182 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %185
  %187 = call %struct.sas_rphy* @mptsas_get_rphy(%struct.TYPE_12__* %186)
  store %struct.sas_rphy* %187, %struct.sas_rphy** %7, align 8
  %188 = load %struct.sas_rphy*, %struct.sas_rphy** %7, align 8
  %189 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %188, i32 0, i32 0
  store %struct.device* %189, %struct.device** %6, align 8
  br label %190

190:                                              ; preds = %180, %168
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %156

194:                                              ; preds = %166
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = call i32 @mutex_unlock(i32* %196)
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %199 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %200 = call i32 @mptsas_setup_wide_ports(%struct.TYPE_11__* %198, %struct.mptsas_portinfo* %199)
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %219, %194
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %204 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %201
  %208 = load %struct.device*, %struct.device** %6, align 8
  %209 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %210 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %209, i32 0, i32 1
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %213
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @mptsas_probe_one_phy(%struct.device* %208, %struct.TYPE_12__* %214, i32 %217, i32 0)
  br label %219

219:                                              ; preds = %207
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %201

226:                                              ; preds = %151, %201
  ret void
}

declare dso_local i32 @mptsas_sas_expander_pg1(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @mptsas_sas_device_pg0(%struct.TYPE_11__*, %struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mptsas_portinfo* @mptsas_find_portinfo_by_handle(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sas_rphy* @mptsas_get_rphy(%struct.TYPE_12__*) #1

declare dso_local i32 @mptsas_setup_wide_ports(%struct.TYPE_11__*, %struct.mptsas_portinfo*) #1

declare dso_local i32 @mptsas_probe_one_phy(%struct.device*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

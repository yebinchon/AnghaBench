; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_util.c_cfi_varsize_frob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_util.c_cfi_varsize_frob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32, %struct.mtd_erase_region_info*, %struct.map_info* }
%struct.mtd_erase_region_info = type { i64, i32, i32 }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i64, i32, i32* }
%struct.map_info.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_varsize_frob(%struct.mtd_info* %0, i32 (%struct.map_info.0*, i32*, i64, i32, i8*)* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32 (%struct.map_info.0*, i32*, i64, i32, i8*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.map_info*, align 8
  %13 = alloca %struct.cfi_private*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mtd_erase_region_info*, align 8
  %20 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 (%struct.map_info.0*, i32*, i64, i32, i8*)* %1, i32 (%struct.map_info.0*, i32*, i64, i32, i8*)** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 3
  %23 = load %struct.map_info*, %struct.map_info** %22, align 8
  store %struct.map_info* %23, %struct.map_info** %12, align 8
  %24 = load %struct.map_info*, %struct.map_info** %12, align 8
  %25 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 0
  %26 = load %struct.cfi_private*, %struct.cfi_private** %25, align 8
  store %struct.cfi_private* %26, %struct.cfi_private** %13, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 2
  %29 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %28, align 8
  store %struct.mtd_erase_region_info* %29, %struct.mtd_erase_region_info** %19, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %227

38:                                               ; preds = %5
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %227

49:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %58, i64 %60
  %62 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %57, %63
  br label %65

65:                                               ; preds = %56, %50
  %66 = phi i1 [ false, %50 ], [ %64, %56 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %50

70:                                               ; preds = %65
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %17, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %74, i64 %76
  %78 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = and i64 %73, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %227

87:                                               ; preds = %70
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %108, %87
  %90 = load i32, i32* %17, align 4
  %91 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %92 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %99, i64 %101
  %103 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp uge i64 %98, %104
  br label %106

106:                                              ; preds = %95, %89
  %107 = phi i1 [ false, %89 ], [ %105, %95 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %89

111:                                              ; preds = %106
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %17, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %114, %115
  %117 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %117, i64 %119
  %121 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = and i64 %116, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %111
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %227

130:                                              ; preds = %111
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %133 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %131, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %15, align 4
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %140 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 %138, %142
  %144 = sext i32 %143 to i64
  %145 = sub i64 %137, %144
  store i64 %145, i64* %14, align 8
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %17, align 4
  br label %147

147:                                              ; preds = %225, %130
  %148 = load i64, i64* %10, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %226

150:                                              ; preds = %147
  %151 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %151, i64 %153
  %155 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %20, align 4
  %157 = load i32 (%struct.map_info.0*, i32*, i64, i32, i8*)*, i32 (%struct.map_info.0*, i32*, i64, i32, i8*)** %8, align 8
  %158 = load %struct.map_info*, %struct.map_info** %12, align 8
  %159 = bitcast %struct.map_info* %158 to %struct.map_info.0*
  %160 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %161 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i64, i64* %14, align 8
  %167 = load i32, i32* %20, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 %157(%struct.map_info.0* %159, i32* %165, i64 %166, i32 %167, i8* %168)
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %150
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %6, align 4
  br label %227

174:                                              ; preds = %150
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %14, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %14, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %9, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %10, align 8
  %186 = sub i64 %185, %184
  store i64 %186, i64* %10, align 8
  %187 = load i64, i64* %9, align 8
  %188 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %188, i64 %190
  %192 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %20, align 4
  %195 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %195, i64 %197
  %199 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %194, %200
  %202 = sext i32 %201 to i64
  %203 = add i64 %193, %202
  %204 = icmp eq i64 %187, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %174
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %205, %174
  %209 = load i64, i64* %14, align 8
  %210 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %211 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = lshr i64 %209, %212
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %208
  store i64 0, i64* %14, align 8
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %220 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %226

224:                                              ; preds = %215
  br label %225

225:                                              ; preds = %224, %208
  br label %147

226:                                              ; preds = %223, %147
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %226, %172, %127, %84, %46, %35
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

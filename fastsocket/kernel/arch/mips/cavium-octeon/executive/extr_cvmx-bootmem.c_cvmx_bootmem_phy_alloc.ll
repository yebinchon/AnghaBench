; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@CVMX_BOOTMEM_ALIGNMENT_SIZE = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Internal bootmem_alloc() error: ent: 0x%llx, next: 0x%llx\0A\00", align 1
@CVMX_BOOTMEM_FLAG_END_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %36

24:                                               ; preds = %5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %35 = call i32 (i8*, i64, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %33, %struct.TYPE_2__* %34)
  br label %236

36:                                               ; preds = %5
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %236

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %43 = sub nsw i32 %42, 1
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %9, align 4
  br label %66

58:                                               ; preds = %51, %40
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 -1, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %61, %58
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @__ALIGN_MASK(i32 %76, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %236

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 (...) @cvmx_bootmem_lock()
  br label %94

94:                                               ; preds = %92, %87
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %231, %94
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %235

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @cvmx_bootmem_phy_get_size(i32 %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @cvmx_bootmem_phy_get_next(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @cvmx_bootmem_phy_get_next(i32 %110)
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @cvmx_bootmem_phy_get_next(i32 %116)
  %118 = sext i32 %117 to i64
  %119 = call i32 (i8*, i64, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %115, i64 %118)
  br label %236

120:                                              ; preds = %108, %102
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @max(i32 %121, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @__ALIGN_MASK(i32 %123, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @min(i32 %127, i32 %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %17, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %120
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %17, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sle i32 %143, %146
  br i1 %147, label %149, label %148

148:                                              ; preds = %142, %138, %120
  br label %231

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @CVMX_BOOTMEM_FLAG_END_ALLOC, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %158, 1
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %16, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %16, align 4
  br label %163

163:                                              ; preds = %154, %149
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %209

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %19, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %167
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %172, %173
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @cvmx_bootmem_phy_get_next(i32 %176)
  %178 = call i32 @cvmx_bootmem_phy_set_next(i32 %175, i32 %177)
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %7, align 4
  %182 = sub nsw i32 %180, %181
  %183 = call i32 @cvmx_bootmem_phy_set_size(i32 %179, i32 %182)
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @cvmx_bootmem_phy_set_next(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %171, %167
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @cvmx_bootmem_phy_get_next(i32 %192)
  %194 = call i32 @cvmx_bootmem_phy_set_next(i32 %191, i32 %193)
  br label %200

195:                                              ; preds = %187
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @cvmx_bootmem_phy_get_next(i32 %196)
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %195, %190
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  %206 = call i32 (...) @cvmx_bootmem_unlock()
  br label %207

207:                                              ; preds = %205, %200
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %6, align 4
  br label %244

209:                                              ; preds = %163
  %210 = load i32, i32* %16, align 4
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @cvmx_bootmem_phy_get_next(i32 %212)
  %214 = call i32 @cvmx_bootmem_phy_set_next(i32 %211, i32 %213)
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @cvmx_bootmem_phy_get_size(i32 %216)
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %13, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sub nsw i32 %217, %220
  %222 = call i32 @cvmx_bootmem_phy_set_size(i32 %215, i32 %221)
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %13, align 4
  %226 = sub nsw i32 %224, %225
  %227 = call i32 @cvmx_bootmem_phy_set_size(i32 %223, i32 %226)
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @cvmx_bootmem_phy_set_next(i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %209, %148
  %232 = load i32, i32* %13, align 4
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @cvmx_bootmem_phy_get_next(i32 %233)
  store i32 %234, i32* %13, align 4
  br label %99

235:                                              ; preds = %99
  br label %236

236:                                              ; preds = %235, %113, %86, %39, %24
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = call i32 (...) @cvmx_bootmem_unlock()
  br label %243

243:                                              ; preds = %241, %236
  store i32 -1, i32* %6, align 4
  br label %244

244:                                              ; preds = %243, %207
  %245 = load i32, i32* %6, align 4
  ret i32 %245
}

declare dso_local i32 @cvmx_dprintf(i8*, i64, i64, ...) #1

declare dso_local i32 @__ALIGN_MASK(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_lock(...) #1

declare dso_local i32 @cvmx_bootmem_phy_get_size(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_get_next(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_next(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_size(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

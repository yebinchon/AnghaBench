; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"applying relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"location is %lx, value is %lx type is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"unsupported relocation: %u (no -mlong-calls?)\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown relocation: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid relocation for %#lx\0A\00", align 1
@COREB_L1_DATA_A_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %13, align 8
  %26 = load %struct.module*, %struct.module** %11, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, i32, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %30, i64 %36)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %176, %5
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 24
  %49 = icmp ult i64 %40, %48
  br i1 %49, label %50, label %179

50:                                               ; preds = %38
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %60, %66
  store i64 %67, i64* %15, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_6__*
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ELF32_R_SYM(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %82
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %14, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %16, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %16, align 8
  %95 = load %struct.module*, %struct.module** %11, align 8
  %96 = getelementptr inbounds %struct.module, %struct.module* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @ELF32_R_TYPE(i32 %105)
  %107 = call i32 (i8*, i32, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %98, i64 %99, i64 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @ELF32_R_TYPE(i32 %113)
  switch i64 %114, label %134 [
    i64 135, label %115
    i64 134, label %118
    i64 128, label %118
    i64 136, label %119
    i64 130, label %120
    i64 129, label %120
    i64 132, label %120
    i64 131, label %120
    i64 133, label %120
  ]

115:                                              ; preds = %50
  %116 = load i64, i64* %16, align 8
  %117 = lshr i64 %116, 16
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %50, %50, %115
  store i64 2, i64* %17, align 8
  br label %148

119:                                              ; preds = %50
  store i64 4, i64* %17, align 8
  br label %148

120:                                              ; preds = %50, %50, %50, %50, %50
  %121 = load %struct.module*, %struct.module** %11, align 8
  %122 = getelementptr inbounds %struct.module, %struct.module* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ELF32_R_TYPE(i32 %129)
  %131 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %123, i64 %130)
  %132 = load i32, i32* @ENOEXEC, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %180

134:                                              ; preds = %50
  %135 = load %struct.module*, %struct.module** %11, align 8
  %136 = getelementptr inbounds %struct.module, %struct.module* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %139 = load i32, i32* %12, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @ELF32_R_TYPE(i32 %143)
  %145 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %137, i64 %144)
  %146 = load i32, i32* @ENOEXEC, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %180

148:                                              ; preds = %119, %118
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %17, align 8
  %151 = call i32 @bfin_mem_access_type(i64 %149, i64 %150)
  switch i32 %151, label %167 [
    i32 140, label %152
    i32 139, label %152
    i32 138, label %157
    i32 137, label %162
  ]

152:                                              ; preds = %148, %148
  %153 = load i64, i64* %15, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load i64, i64* %17, align 8
  %156 = call i32 @memcpy(i8* %154, i64* %16, i64 %155)
  br label %175

157:                                              ; preds = %148
  %158 = load i64, i64* %15, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @dma_memcpy(i8* %159, i64* %16, i64 %160)
  br label %175

162:                                              ; preds = %148
  %163 = load i64, i64* %15, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @isram_memcpy(i8* %164, i64* %16, i64 %165)
  br label %175

167:                                              ; preds = %148
  %168 = load %struct.module*, %struct.module** %11, align 8
  %169 = getelementptr inbounds %struct.module, %struct.module* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %15, align 8
  %172 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %170, i64 %171)
  %173 = load i32, i32* @ENOEXEC, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %6, align 4
  br label %180

175:                                              ; preds = %162, %157, %152
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %12, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %38

179:                                              ; preds = %38
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %179, %167, %134, %120
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @pr_debug(i8*, i32, i64, i64, ...) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i64 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @bfin_mem_access_type(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @dma_memcpy(i8*, i64*, i64) #1

declare dso_local i32 @isram_memcpy(i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

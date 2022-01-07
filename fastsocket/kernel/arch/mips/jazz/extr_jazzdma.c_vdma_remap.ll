; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@vdma_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vdma_map: Invalid logical address: %08lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"vdma_map: Invalid physical address: %08lx\0A\00", align 1
@VDMA_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"vdma_remap: first=%x, pages=%x\0A\00", align 1
@VDMA_PGTBL_ENTRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"vdma_alloc: Invalid size: %08lx\0A\00", align 1
@pgtbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Trying to remap other's pages.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@JAZZ_R4030_TRSTBL_INV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"LADDR: \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0APADDR: \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\0AOWNER: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdma_remap(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 16777215
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* @vdma_debug, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %195

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 536870911
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @vdma_debug, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %195

35:                                               ; preds = %23
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @VDMA_PAGESIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = and i64 %36, %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %40, %41
  %43 = lshr i64 %42, 12
  %44 = add i64 %43, 1
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* %5, align 8
  %47 = lshr i64 %46, 12
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @vdma_debug, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %35
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* @vdma_debug, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %195

70:                                               ; preds = %55
  %71 = load i32, i32* @VDMA_PAGESIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = xor i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %103, %70
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %83 = icmp slt i32 %81, %82
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i1 [ false, %77 ], [ %83, %80 ]
  br i1 %85, label %86, label %118

86:                                               ; preds = %84
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load i32, i32* @vdma_debug, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i32, i32* @EPERM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %195

103:                                              ; preds = %86
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i64 %104, i64* %109, align 8
  %110 = load i32, i32* @VDMA_PAGESIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %9, align 4
  br label %77

118:                                              ; preds = %84
  %119 = load i32, i32* @JAZZ_R4030_TRSTBL_INV, align 4
  %120 = call i32 @r4030_write_reg32(i32 %119, i32 0)
  %121 = load i32, i32* @vdma_debug, align 4
  %122 = icmp sgt i32 %121, 2
  br i1 %122, label %123, label %194

123:                                              ; preds = %118
  %124 = load i64, i64* %6, align 8
  %125 = load i32, i32* @VDMA_PAGESIZE, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = and i64 %124, %127
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %128, %129
  %131 = lshr i64 %130, 12
  %132 = add i64 %131, 1
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i64, i64* %5, align 8
  %135 = lshr i64 %134, 12
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %149, %123
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %141, %142
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = shl i32 %146, 12
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %139

152:                                              ; preds = %139
  %153 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %169, %152
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %157, %158
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %155

172:                                              ; preds = %155
  %173 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %189, %172
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %177, %178
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %187)
  br label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %175

192:                                              ; preds = %175
  %193 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %118
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %100, %67, %32, %20
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @r4030_write_reg32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

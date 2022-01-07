; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_cpdo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_cpdo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { i32, i64 (i32, i32, i32, i64)* }

@FOP_MASK = common dso_local global i64 0, align 8
@FPSCR_STRIDE_MASK = common dso_local global i64 0, align 8
@FOP_EXT = common dso_local global i64 0, align 8
@fops_ext = common dso_local global %struct.op* null, align 8
@fops = common dso_local global %struct.op* null, align 8
@OP_SD = common dso_local global i32 0, align 4
@OP_SM = common dso_local global i32 0, align 4
@OP_SCALAR = common dso_local global i32 0, align 4
@FPSCR_LENGTH_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"VFP: vecstride=%u veclen=%u\0A\00", align 1
@FPSCR_LENGTH_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"VFP: itr%d (%c%u) = op[%u] (d%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"VFP: itr%d (%c%u) = (d%u) op[%u] (d%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"VFP: itr%d: exceptions=%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vfp_double_cpdo(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.op*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @FOP_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @vfp_get_dn(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @FPSCR_STRIDE_MASK, align 8
  %24 = and i64 %22, %23
  %25 = load i64, i64* @FPSCR_STRIDE_MASK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 1, %27
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @FOP_EXT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.op*, %struct.op** @fops_ext, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @FEXT_TO_IDX(i64 %34)
  %36 = getelementptr inbounds %struct.op, %struct.op* %33, i64 %35
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.op*, %struct.op** @fops, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @FOP_TO_IDX(i64 %39)
  %41 = getelementptr inbounds %struct.op, %struct.op* %38, i64 %40
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi %struct.op* [ %36, %32 ], [ %41, %37 ]
  store %struct.op* %43, %struct.op** %14, align 8
  %44 = load %struct.op*, %struct.op** %14, align 8
  %45 = getelementptr inbounds %struct.op, %struct.op* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OP_SD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @vfp_get_sd(i64 %51)
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %42
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @vfp_get_dd(i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.op*, %struct.op** %14, align 8
  %58 = getelementptr inbounds %struct.op, %struct.op* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @OP_SM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @vfp_get_sm(i64 %64)
  store i32 %65, i32* %10, align 4
  br label %69

66:                                               ; preds = %56
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @vfp_get_dm(i64 %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.op*, %struct.op** %14, align 8
  %71 = getelementptr inbounds %struct.op, %struct.op* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @OP_SCALAR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @FREG_BANK(i32 %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %69
  store i32 0, i32* %12, align 4
  br label %86

81:                                               ; preds = %76
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @FPSCR_LENGTH_MASK, align 8
  %84 = and i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %90 = lshr i32 %88, %89
  %91 = add i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %92)
  %94 = load %struct.op*, %struct.op** %14, align 8
  %95 = getelementptr inbounds %struct.op, %struct.op* %94, i32 0, i32 1
  %96 = load i64 (i32, i32, i32, i64)*, i64 (i32, i32, i32, i64)** %95, align 8
  %97 = icmp ne i64 (i32, i32, i32, i64)* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %86
  br label %192

99:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %185, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ule i32 %101, %102
  br i1 %103, label %104, label %190

104:                                              ; preds = %100
  %105 = load %struct.op*, %struct.op** %14, align 8
  %106 = getelementptr inbounds %struct.op, %struct.op* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @OP_SD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 115, i32 100
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %16, align 1
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @FOP_EXT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %104
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %120 = lshr i32 %118, %119
  %121 = load i8, i8* %16, align 1
  %122 = sext i8 %121 to i64
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %120, i64 %122, i32 %123, i32 %124, i32 %125)
  br label %139

127:                                              ; preds = %104
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %130 = lshr i32 %128, %129
  %131 = load i8, i8* %16, align 1
  %132 = sext i8 %131 to i64
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i64, i64* %6, align 8
  %136 = call i64 @FOP_TO_IDX(i64 %135)
  %137 = load i32, i32* %10, align 4
  %138 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %130, i64 %132, i32 %133, i32 %134, i64 %136, i32 %137)
  br label %139

139:                                              ; preds = %127, %117
  %140 = load %struct.op*, %struct.op** %14, align 8
  %141 = getelementptr inbounds %struct.op, %struct.op* %140, i32 0, i32 1
  %142 = load i64 (i32, i32, i32, i64)*, i64 (i32, i32, i32, i64)** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i64, i64* %5, align 8
  %147 = call i64 %142(i32 %143, i32 %144, i32 %145, i64 %146)
  store i64 %147, i64* %15, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %150 = lshr i32 %148, %149
  %151 = load i64, i64* %15, align 8
  %152 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %150, i64 %151)
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %7, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @FREG_BANK(i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @FREG_IDX(i32 %158)
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %159, %160
  %162 = and i32 %161, 3
  %163 = add i32 %157, %162
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @FREG_BANK(i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @FREG_IDX(i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = add i32 %167, %168
  %170 = and i32 %169, 3
  %171 = add i32 %165, %170
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @FREG_BANK(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %139
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @FREG_BANK(i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @FREG_IDX(i32 %178)
  %180 = load i32, i32* %13, align 4
  %181 = add i32 %179, %180
  %182 = and i32 %181, 3
  %183 = add i32 %177, %182
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %175, %139
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %187 = shl i32 1, %186
  %188 = load i32, i32* %11, align 4
  %189 = add i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %100

190:                                              ; preds = %100
  %191 = load i64, i64* %7, align 8
  store i64 %191, i64* %3, align 8
  br label %193

192:                                              ; preds = %98
  store i64 -1, i64* %3, align 8
  br label %193

193:                                              ; preds = %192, %190
  %194 = load i64, i64* %3, align 8
  ret i64 %194
}

declare dso_local i32 @vfp_get_dn(i64) #1

declare dso_local i64 @FEXT_TO_IDX(i64) #1

declare dso_local i64 @FOP_TO_IDX(i64) #1

declare dso_local i32 @vfp_get_sd(i64) #1

declare dso_local i32 @vfp_get_dd(i64) #1

declare dso_local i32 @vfp_get_sm(i64) #1

declare dso_local i32 @vfp_get_dm(i64) #1

declare dso_local i32 @FREG_BANK(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, ...) #1

declare dso_local i32 @FREG_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

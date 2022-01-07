; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_ftosi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_ftosi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32, i64, i32 }

@FPSCR_RMODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VSM\00", align 1
@VFP_DENORMAL = common dso_local global i32 0, align 4
@FPSCR_IDC = common dso_local global i32 0, align 4
@VFP_NAN = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_ROUND_NEAREST = common dso_local global i32 0, align 4
@FPSCR_ROUND_TOZERO = common dso_local global i32 0, align 4
@FPSCR_ROUND_PLUSINF = common dso_local global i32 0, align 4
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_ROUND_MINUSINF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"VFP: ftosi: d(s%d)=%08x exceptions=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_single_ftosi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_ftosi(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfp_single, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FPSCR_RMODE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vfp_single_unpack(%struct.vfp_single* %9, i32 %20)
  %22 = call i32 @vfp_single_dump(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.vfp_single* %9)
  %23 = call i32 @vfp_single_type(%struct.vfp_single* %9)
  store i32 %23, i32* %13, align 4
  %24 = call i32 @vfp_single_type(%struct.vfp_single* %9)
  %25 = load i32, i32* @VFP_DENORMAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @FPSCR_IDC, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @VFP_NAN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* @FPSCR_IOC, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %182

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 159
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  store i32 2147483647, i32* %10, align 4
  %46 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = xor i32 %50, -1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* @FPSCR_IOC, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %181

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 126
  br i1 %59, label %60, label %149

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 158, %62
  store i32 %63, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %64 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 1
  %67 = load i32, i32* %14, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 33, %71
  %73 = shl i32 %70, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @FPSCR_ROUND_NEAREST, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %60
  store i32 -2147483648, i32* %16, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %16, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %81, %77
  br label %104

85:                                               ; preds = %60
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @FPSCR_ROUND_TOZERO, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  br label %103

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = xor i32 %94, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  store i32 -1, i32* %16, align 4
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %89
  br label %104

104:                                              ; preds = %103, %84
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = icmp ult i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %110, %104
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = add nsw i32 2147483647, %121
  %123 = icmp sgt i32 %117, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = add nsw i32 2147483647, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* @FPSCR_IOC, align 4
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %141

133:                                              ; preds = %116
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @FPSCR_IXC, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %124
  %142 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %141
  br label %180

149:                                              ; preds = %56
  store i32 0, i32* %10, align 4
  %150 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %149
  %157 = load i32, i32* @FPSCR_IXC, align 4
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 1, i32* %10, align 4
  br label %178

168:                                              ; preds = %163, %156
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @FPSCR_ROUND_MINUSINF, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 -1, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %172, %168
  br label %178

178:                                              ; preds = %177, %167
  br label %179

179:                                              ; preds = %178, %149
  br label %180

180:                                              ; preds = %179, %148
  br label %181

181:                                              ; preds = %180, %52
  br label %182

182:                                              ; preds = %181, %37
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @vfp_put_float(i32 %187, i32 %188)
  %190 = load i32, i32* %11, align 4
  ret i32 %190
}

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_dump(i8*, %struct.vfp_single*) #1

declare dso_local i32 @vfp_single_type(%struct.vfp_single*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @vfp_put_float(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

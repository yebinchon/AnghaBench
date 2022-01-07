; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32, i32, i32, i32, i64, i64, i32*, i32, i64, i32 }

@PD_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@pd = common dso_local global %struct.pd_unit* null, align 8
@D_SLV = common dso_local global i64 0, align 8
@PD_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@name = common dso_local global i8* null, align 8
@D_GEO = common dso_local global i64 0, align 8
@D_SBY = common dso_local global i64 0, align 8
@D_PRT = common dso_local global i64 0, align 8
@pd_scratch = common dso_local global i32 0, align 4
@PI_PD = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: no valid drive found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pd_unit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pd_unit*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %69, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PD_UNITS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = load i32***, i32**** @drives, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32**, i32*** %13, i64 %15
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %19, i64 %21
  store %struct.pd_unit* %22, %struct.pd_unit** %6, align 8
  %23 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %24 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %23, i32 0, i32 9
  %25 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %26 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %25, i32 0, i32 6
  store i32* %24, i32** %26, align 8
  %27 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %28 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %30 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %32 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* @D_SLV, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %38 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %40 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PD_NAMELEN, align 4
  %43 = load i8*, i8** @name, align 8
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 97, %44
  %46 = trunc i32 %45 to i8
  %47 = call i32 @snprintf(i32 %41, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %43, i8 signext %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* @D_GEO, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %53 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* @D_SBY, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pd_unit*, %struct.pd_unit** %6, align 8
  %59 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* @D_PRT, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %12
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %12
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %8

72:                                               ; preds = %8
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  store %struct.pd_unit* %76, %struct.pd_unit** %4, align 8
  %77 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %78 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @pd_scratch, align 4
  %81 = load i32, i32* @PI_PD, align 4
  %82 = load i32, i32* @verbose, align 4
  %83 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %84 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @pi_init(i32* %79, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %80, i32 %81, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %75
  %89 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %90 = call i32 @pd_probe_drive(%struct.pd_unit* %89)
  %91 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %92 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %97 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @pi_release(i32* %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %101

101:                                              ; preds = %100, %75
  br label %173

102:                                              ; preds = %72
  store i32 0, i32* %2, align 4
  %103 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  store %struct.pd_unit* %103, %struct.pd_unit** %4, align 8
  br label %104

104:                                              ; preds = %167, %102
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @PD_UNITS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %172

108:                                              ; preds = %104
  %109 = load i32***, i32**** @drives, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32**, i32*** %109, i64 %111
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* @D_PRT, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %108
  br label %167

121:                                              ; preds = %108
  %122 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %123 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i64, i64* @D_PRT, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i64, i64* @D_MOD, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i64, i64* @D_UNI, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* @D_PRO, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = load i64, i64* @D_DLY, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @pd_scratch, align 4
  %146 = load i32, i32* @PI_PD, align 4
  %147 = load i32, i32* @verbose, align 4
  %148 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %149 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @pi_init(i32* %124, i32 0, i32 %128, i32 %132, i32 %136, i32 %140, i32 %144, i32 %145, i32 %146, i32 %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %121
  %154 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %155 = call i32 @pd_probe_drive(%struct.pd_unit* %154)
  %156 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %157 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  %161 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %162 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @pi_release(i32* %163)
  br label %165

165:                                              ; preds = %160, %153
  br label %166

166:                                              ; preds = %165, %121
  br label %167

167:                                              ; preds = %166, %120
  %168 = load i32, i32* %2, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %2, align 4
  %170 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %171 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %170, i32 1
  store %struct.pd_unit* %171, %struct.pd_unit** %4, align 8
  br label %104

172:                                              ; preds = %104
  br label %173

173:                                              ; preds = %172, %101
  store i32 0, i32* %2, align 4
  %174 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  store %struct.pd_unit* %174, %struct.pd_unit** %4, align 8
  br label %175

175:                                              ; preds = %197, %173
  %176 = load i32, i32* %2, align 4
  %177 = load i32, i32* @PD_UNITS, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %175
  %180 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %181 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %179
  %185 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %186 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %189 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @set_capacity(i64 %187, i64 %190)
  %192 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %193 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @add_disk(i64 %194)
  store i32 1, i32* %1, align 4
  br label %196

196:                                              ; preds = %184, %179
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %2, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %2, align 4
  %200 = load %struct.pd_unit*, %struct.pd_unit** %4, align 8
  %201 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %200, i32 1
  store %struct.pd_unit* %201, %struct.pd_unit** %4, align 8
  br label %175

202:                                              ; preds = %175
  %203 = load i32, i32* %1, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** @name, align 8
  %207 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i32, i32* %1, align 4
  ret i32 %209
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8 signext) #1

declare dso_local i64 @pi_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pd_probe_drive(%struct.pd_unit*) #1

declare dso_local i32 @pi_release(i32*) #1

declare dso_local i32 @set_capacity(i64, i64) #1

declare dso_local i32 @add_disk(i64) #1

declare dso_local i32 @printk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_set_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"set_scale: %dx%d [%s%s,%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@MO_HDELAY_EVEN = common dso_local global i32 0, align 4
@MO_HDELAY_ODD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"set_scale: hdelay  0x%04x (width %d)\0A\00", align 1
@MO_HSCALE_EVEN = common dso_local global i32 0, align 4
@MO_HSCALE_ODD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"set_scale: hscale  0x%04x\0A\00", align 1
@MO_HACTIVE_EVEN = common dso_local global i32 0, align 4
@MO_HACTIVE_ODD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"set_scale: hactive 0x%04x\0A\00", align 1
@MO_VDELAY_EVEN = common dso_local global i32 0, align 4
@MO_VDELAY_ODD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"set_scale: vdelay  0x%04x\0A\00", align 1
@MO_VSCALE_EVEN = common dso_local global i32 0, align 4
@MO_VSCALE_ODD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"set_scale: vscale  0x%04x\0A\00", align 1
@MO_VACTIVE_EVEN = common dso_local global i32 0, align 4
@MO_VACTIVE_ODD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"set_scale: vactive 0x%04x\0A\00", align 1
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@CX88_VMUX_SVIDEO = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@nocomb = common dso_local global i64 0, align 8
@MO_FILTER_EVEN = common dso_local global i32 0, align 4
@MO_FILTER_ODD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"set_scale: filter  0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_set_scale(%struct.cx88_core* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %14 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @norm_swidth(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %18 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @norm_maxh(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @V4L2_FIELD_HAS_TOP(i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @V4L2_FIELD_HAS_BOTTOM(i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %34 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l2_norm_to_name(i32 %35)
  %37 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i8* %27, i8* %32, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = mul i32 %42, 2
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %47 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @norm_hdelay(i32 %48)
  %50 = mul i32 %45, %49
  %51 = load i32, i32* %9, align 4
  %52 = udiv i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 1022
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @MO_HDELAY_EVEN, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @cx_write(i32 %55, i32 %56)
  %58 = load i32, i32* @MO_HDELAY_ODD, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @cx_write(i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = mul i32 %64, 4096
  %66 = load i32, i32* %6, align 4
  %67 = udiv i32 %65, %66
  %68 = sub i32 %67, 4096
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @MO_HSCALE_EVEN, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @cx_write(i32 %69, i32 %70)
  %72 = load i32, i32* @MO_HSCALE_ODD, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @cx_write(i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @MO_HACTIVE_EVEN, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @cx_write(i32 %77, i32 %78)
  %80 = load i32, i32* @MO_HACTIVE_ODD, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @cx_write(i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @MO_VDELAY_EVEN, align 4
  %86 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %87 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @norm_vdelay(i32 %88)
  %90 = call i32 @cx_write(i32 %85, i32 %89)
  %91 = load i32, i32* @MO_VDELAY_ODD, align 4
  %92 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %93 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @norm_vdelay(i32 %94)
  %96 = call i32 @cx_write(i32 %91, i32 %95)
  %97 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %98 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @norm_vdelay(i32 %99)
  %101 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = mul i32 %102, 512
  %104 = load i32, i32* %7, align 4
  %105 = udiv i32 %103, %104
  %106 = sub i32 %105, 512
  %107 = sub i32 65536, %106
  %108 = and i32 %107, 8191
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @MO_VSCALE_EVEN, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @cx_write(i32 %109, i32 %110)
  %112 = load i32, i32* @MO_VSCALE_ODD, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @cx_write(i32 %112, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @MO_VACTIVE_EVEN, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @cx_write(i32 %117, i32 %118)
  %120 = load i32, i32* @MO_VACTIVE_ODD, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @cx_write(i32 %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  store i32 0, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, 524288
  store i32 %126, i32* %11, align 4
  %127 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %128 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @V4L2_STD_SECAM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %44
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, 32768
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, 65536
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %133, %44
  %139 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %140 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @INPUT(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CX88_VMUX_SVIDEO, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* %11, align 4
  %150 = or i32 %149, 8224
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %148, %138
  %152 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, 8
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i32, i32* %6, align 4
  %160 = icmp ult i32 %159, 385
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = or i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %6, align 4
  %166 = icmp ult i32 %165, 193
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, 2
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i64, i64* @nocomb, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %174, 96
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* @MO_FILTER_EVEN, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @cx_write(i32 %177, i32 %178)
  %180 = load i32, i32* @MO_FILTER_ODD, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @cx_write(i32 %180, i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  ret i32 0
}

declare dso_local i32 @norm_swidth(i32) #1

declare dso_local i32 @norm_maxh(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i64 @V4L2_FIELD_HAS_TOP(i32) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTTOM(i32) #1

declare dso_local i32 @v4l2_norm_to_name(i32) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @norm_hdelay(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @norm_vdelay(i32) #1

declare dso_local i64 @INPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

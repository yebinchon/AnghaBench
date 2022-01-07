; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sd = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@w9968cf_vga_mode = common dso_local global %struct.TYPE_4__* null, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@SEN_OV7620 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = call i32 @w9968cf_set_crop_window(%struct.sd* %6)
  %8 = load %struct.sd*, %struct.sd** %2, align 8
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @reg_w(%struct.sd* %8, i32 20, i32 %12)
  %14 = load %struct.sd*, %struct.sd** %2, align 8
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reg_w(%struct.sd* %14, i32 21, i32 %18)
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @reg_w(%struct.sd* %20, i32 48, i32 %24)
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @reg_w(%struct.sd* %26, i32 49, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @w9968cf_vga_mode, align 8
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %1
  %43 = load %struct.sd*, %struct.sd** %2, align 8
  %44 = load %struct.sd*, %struct.sd** %2, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 2
  %49 = call i32 @reg_w(%struct.sd* %43, i32 44, i32 %48)
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 4
  %56 = call i32 @reg_w(%struct.sd* %50, i32 45, i32 %55)
  br label %64

57:                                               ; preds = %1
  %58 = load %struct.sd*, %struct.sd** %2, align 8
  %59 = load %struct.sd*, %struct.sd** %2, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @reg_w(%struct.sd* %58, i32 44, i32 %62)
  br label %64

64:                                               ; preds = %57, %42
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = call i32 @reg_w(%struct.sd* %65, i32 0, i32 48919)
  %67 = load %struct.sd*, %struct.sd** %2, align 8
  %68 = call i32 @reg_w(%struct.sd* %67, i32 0, i32 48912)
  %69 = load %struct.sd*, %struct.sd** %2, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sd*, %struct.sd** %2, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %72, %76
  store i32 %77, i32* %3, align 4
  %78 = load %struct.sd*, %struct.sd** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, 65535
  %81 = call i32 @reg_w(%struct.sd* %78, i32 61, i32 %80)
  %82 = load %struct.sd*, %struct.sd** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = ashr i32 %83, 16
  %85 = call i32 @reg_w(%struct.sd* %82, i32 62, i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @w9968cf_vga_mode, align 8
  %87 = load %struct.sd*, %struct.sd** %2, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %64
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sd*, %struct.sd** %2, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sd*, %struct.sd** %2, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @jpeg_define(i32 %99, i32 %103, i32 %107, i32 34)
  %109 = load %struct.sd*, %struct.sd** %2, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sd*, %struct.sd** %2, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @jpeg_set_qual(i32 %111, i32 %114)
  %116 = load %struct.sd*, %struct.sd** %2, align 8
  %117 = call i32 @w9968cf_upload_quantizationtables(%struct.sd* %116)
  br label %118

118:                                              ; preds = %96, %64
  %119 = load %struct.sd*, %struct.sd** %2, align 8
  %120 = getelementptr inbounds %struct.sd, %struct.sd* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SEN_OV7620, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %126

125:                                              ; preds = %118
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %124
  %127 = load i32, i32* %4, align 4
  %128 = shl i32 %127, 12
  %129 = load i32, i32* %5, align 4
  %130 = shl i32 %129, 11
  %131 = or i32 %128, %130
  store i32 %131, i32* %3, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @w9968cf_vga_mode, align 8
  %133 = load %struct.sd*, %struct.sd** %2, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, 3
  store i32 %144, i32* %3, align 4
  br label %148

145:                                              ; preds = %126
  %146 = load i32, i32* %3, align 4
  %147 = or i32 %146, 128
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %149, 32768
  store i32 %150, i32* %3, align 4
  %151 = load %struct.sd*, %struct.sd** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @reg_w(%struct.sd* %151, i32 22, i32 %152)
  %154 = load %struct.sd*, %struct.sd** %2, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  ret void
}

declare dso_local i32 @w9968cf_set_crop_window(%struct.sd*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @w9968cf_upload_quantizationtables(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

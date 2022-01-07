; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_video_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_video_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"video_mux: %d [vmux=%d,gpio=0x%x,0x%x,0x%x,0x%x]\0A\00", align 1
@MO_INPUT_FORMAT = common dso_local global i32 0, align 4
@MO_GP3_IO = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@MO_GP1_IO = common dso_local global i32 0, align 4
@MO_GP2_IO = common dso_local global i32 0, align 4
@MO_AFECFG_IO = common dso_local global i32 0, align 4
@MO_FILTER_EVEN = common dso_local global i32 0, align 4
@MO_FILTER_ODD = common dso_local global i32 0, align 4
@V4L2_IDENT_WM8775 = common dso_local global i64 0, align 8
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@CX88_VMUX_TELEVISION = common dso_local global i32 0, align 4
@CX88_VMUX_CABLE = common dso_local global i32 0, align 4
@WW_I2SADC = common dso_local global i32 0, align 4
@AUD_I2SCNTL = common dso_local global i32 0, align 4
@AUD_CTL = common dso_local global i32 0, align 4
@EN_I2SIN_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_video_mux(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca %struct.TYPE_4__, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %5, i32 %21)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %6, i32 %24)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %7, i32 %27)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %8, i32 %30)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %9, i32 %33)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %41 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %10, i32 %41)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 14
  %45 = call i32 @cx_andor(i32 %40, i32 49152, i32 %44)
  %46 = load i32, i32* @MO_GP3_IO, align 4
  %47 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %11, i32 %47)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cx_write(i32 %46, i32 %49)
  %51 = load i32, i32* @MO_GP0_IO, align 4
  %52 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %12, i32 %52)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cx_write(i32 %51, i32 %54)
  %56 = load i32, i32* @MO_GP1_IO, align 4
  %57 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %13, i32 %57)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cx_write(i32 %56, i32 %59)
  %61 = load i32, i32* @MO_GP2_IO, align 4
  %62 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %14, i32 %62)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cx_write(i32 %61, i32 %64)
  %66 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %15, i32 %66)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %78 [
    i32 128, label %69
  ]

69:                                               ; preds = %2
  %70 = load i32, i32* @MO_AFECFG_IO, align 4
  %71 = call i32 @cx_set(i32 %70, i32 1)
  %72 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %73 = call i32 @cx_set(i32 %72, i32 65552)
  %74 = load i32, i32* @MO_FILTER_EVEN, align 4
  %75 = call i32 @cx_set(i32 %74, i32 8224)
  %76 = load i32, i32* @MO_FILTER_ODD, align 4
  %77 = call i32 @cx_set(i32 %76, i32 8224)
  br label %87

78:                                               ; preds = %2
  %79 = load i32, i32* @MO_AFECFG_IO, align 4
  %80 = call i32 @cx_clear(i32 %79, i32 1)
  %81 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %82 = call i32 @cx_clear(i32 %81, i32 65552)
  %83 = load i32, i32* @MO_FILTER_EVEN, align 4
  %84 = call i32 @cx_clear(i32 %83, i32 8224)
  %85 = load i32, i32* @MO_FILTER_ODD, align 4
  %86 = call i32 @cx_clear(i32 %85, i32 8224)
  br label %87

87:                                               ; preds = %78, %69
  %88 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %16, i32 %88)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %87
  %93 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %94 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %100 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @V4L2_IDENT_WM8775, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %107 = load i32, i32* @audio, align 4
  %108 = load i32, i32* @s_routing, align 4
  %109 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %17, i32 %109)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @call_all(%struct.cx88_core* %106, i32 %107, i32 %108, i64 %111, i32 0, i32 0)
  br label %113

113:                                              ; preds = %105, %98, %92
  %114 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %18, i32 %114)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CX88_VMUX_TELEVISION, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_4__* sret %19, i32 %120)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CX88_VMUX_CABLE, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* @WW_I2SADC, align 4
  %127 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %128 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %130 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %129)
  br label %137

131:                                              ; preds = %119, %113
  %132 = load i32, i32* @AUD_I2SCNTL, align 4
  %133 = call i32 @cx_write(i32 %132, i32 0)
  %134 = load i32, i32* @AUD_CTL, align 4
  %135 = load i32, i32* @EN_I2SIN_ENABLE, align 4
  %136 = call i32 @cx_clear(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %87
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local void @INPUT(%struct.TYPE_4__* sret, i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

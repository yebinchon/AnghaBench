; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.c_vpif_set_mode_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.c_vpif_set_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vpif_channel_config_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@vpifregs = common dso_local global %struct.TYPE_2__* null, align 8
@VPIF_CH_LEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpif_channel_config_params*, i64, i64)* @vpif_set_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_set_mode_info(%struct.vpif_channel_config_params* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vpif_channel_config_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vpif_channel_config_params* %0, %struct.vpif_channel_config_params** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %9 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %10, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @VPIF_CH_LEN_SHIFT, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %21 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %22, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regw(i32 %31, i32 %36)
  %38 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %39 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %40, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @VPIF_CH_LEN_SHIFT, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %51 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %52, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regw(i32 %61, i32 %66)
  %68 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %69 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %70, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @VPIF_CH_LEN_SHIFT, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %81 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %82, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @regw(i32 %91, i32 %96)
  %98 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %99 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %100, %105
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @VPIF_CH_LEN_SHIFT, align 4
  %108 = load i32, i32* %7, align 4
  %109 = shl i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %111 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %112, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @regw(i32 %121, i32 %126)
  %128 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %4, align 8
  %129 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %130, %135
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @regw(i32 %137, i32 %142)
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_clipping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vino_channel_settings = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@vino_data_norms = common dso_local global %struct.TYPE_4__* null, align 8
@VINO_MIN_WIDTH = common dso_local global i32 0, align 4
@VINO_MIN_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"clipping %d, %d, %d, %d / %d - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*, i32, i32, i32, i32)* @vino_set_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_set_clipping(%struct.vino_channel_settings* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vino_channel_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_data_norms, align 8
  %15 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %16 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_data_norms, align 8
  %22 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %23 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %29 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = udiv i32 %43, %44
  %46 = load i32, i32* @VINO_MIN_WIDTH, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = udiv i32 %49, %50
  %52 = load i32, i32* @VINO_MIN_HEIGHT, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @VINO_MIN_WIDTH, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @VINO_MIN_HEIGHT, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul i32 %58, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = udiv i32 %71, %72
  %74 = load i32, i32* @VINO_MIN_WIDTH, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @VINO_MIN_WIDTH, align 4
  %79 = load i32, i32* %13, align 4
  %80 = mul i32 %78, %79
  %81 = sub i32 %77, %80
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %76, %67
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sub i32 %90, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %13, align 4
  %95 = udiv i32 %93, %94
  %96 = load i32, i32* @VINO_MIN_HEIGHT, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @VINO_MIN_HEIGHT, align 4
  %101 = load i32, i32* %13, align 4
  %102 = mul i32 %100, %101
  %103 = sub i32 %99, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %98, %89
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %108 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %112 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %114, %115
  %117 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %118 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %120, %121
  %123 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %124 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  %126 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %127 = call i32 @vino_update_line_size(%struct.vino_channel_settings* %126)
  %128 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %129 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %133 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %137 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %141 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %145 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %148 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %135, i32 %139, i32 %143, i32 %146, i32 %149)
  ret void
}

declare dso_local i32 @vino_update_line_size(%struct.vino_channel_settings*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

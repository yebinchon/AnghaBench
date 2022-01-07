; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_ppll_ss_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_ppll_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_atom_ss = type { i32, i32, i32, i32, i32, i32 }
%struct._ATOM_SPREAD_SPECTRUM_INFO = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PPLL_SS_Info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %0, %struct.radeon_atom_ss* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_atom_ss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_mode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._ATOM_SPREAD_SPECTRUM_INFO*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_atom_ss* %1, %struct.radeon_atom_ss** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  store %struct.radeon_mode_info* %18, %struct.radeon_mode_info** %8, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* @PPLL_SS_Info, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %23 = call i32 @memset(%struct.radeon_atom_ss* %22, i32 0, i32 24)
  %24 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @atom_parse_data_header(%struct.TYPE_4__* %26, i32 %27, i32* %11, i32* %13, i32* %14, i32* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %127

30:                                               ; preds = %3
  %31 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %32 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct._ATOM_SPREAD_SPECTRUM_INFO*
  store %struct._ATOM_SPREAD_SPECTRUM_INFO* %39, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = udiv i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %123, %30
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %126

49:                                               ; preds = %45
  %50 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %51 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %122

60:                                               ; preds = %49
  %61 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %62 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %73 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %81 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %83 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %93 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %101 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %103 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %111 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct._ATOM_SPREAD_SPECTRUM_INFO*, %struct._ATOM_SPREAD_SPECTRUM_INFO** %12, align 8
  %113 = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, %struct._ATOM_SPREAD_SPECTRUM_INFO* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %6, align 8
  %121 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  store i32 1, i32* %4, align 4
  br label %128

122:                                              ; preds = %49
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %45

126:                                              ; preds = %45
  br label %127

127:                                              ; preds = %126, %3
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %60
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_4__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

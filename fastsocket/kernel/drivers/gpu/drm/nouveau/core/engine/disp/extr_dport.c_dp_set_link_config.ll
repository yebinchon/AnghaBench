; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_set_link_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_set_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_state = type { i32, i32, i32*, i32, i32, i32, %struct.nouveau_disp*, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.nouveau_disp = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_disp*, i32, i32, i32, i32, i32)* }
%struct.TYPE_3__ = type { i64 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_init = type { i32, i32, i32, i32, %struct.nouveau_bios*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%d lanes at %d KB/s\0A\00", align 1
@DPCD_RC02 = common dso_local global i64 0, align 8
@DPCD_RC02_ENHANCED_FRAME_CAP = common dso_local global i32 0, align 4
@DPCD_LC01_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DPCD_LC00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_state*)* @dp_set_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_set_link_config(%struct.dp_state* %0) #0 {
  %2 = alloca %struct.dp_state*, align 8
  %3 = alloca %struct.nouveau_disp*, align 8
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca %struct.nvbios_init, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.dp_state* %0, %struct.dp_state** %2, align 8
  %8 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %9 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %8, i32 0, i32 6
  %10 = load %struct.nouveau_disp*, %struct.nouveau_disp** %9, align 8
  store %struct.nouveau_disp* %10, %struct.nouveau_disp** %3, align 8
  %11 = load %struct.nouveau_disp*, %struct.nouveau_disp** %3, align 8
  %12 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_disp* %11)
  store %struct.nouveau_bios* %12, %struct.nouveau_bios** %4, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 2
  %16 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %17 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 3
  %20 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %21 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 4
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  store %struct.nouveau_bios* %24, %struct.nouveau_bios** %23, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 5
  %26 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %27 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %26, i32 0, i32 6
  %28 = load %struct.nouveau_disp*, %struct.nouveau_disp** %27, align 8
  %29 = call i32 @nv_subdev(%struct.nouveau_disp* %28)
  store i32 %29, i32* %25, align 8
  %30 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %31 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %34 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %38 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 27000
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %43 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %47 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @DPCD_RC02, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DPCD_RC02_ENHANCED_FRAME_CAP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %1
  %56 = load i32, i32* @DPCD_LC01_ENHANCED_FRAME_EN, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %1
  %61 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %62 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DPCD_LC00, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %66 = call i32 @nv_wraux(i32 %63, i32 %64, i32* %65, i32 2)
  %67 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %68 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %60
  %73 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %74 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 48
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %87, %77
  %79 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %80 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 10
  %83 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @nv_ro16(%struct.nouveau_bios* %83, i64 %84)
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, 4
  store i64 %89, i64* %6, align 8
  br label %78

90:                                               ; preds = %78
  %91 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 2
  %94 = call i32 @nv_ro16(%struct.nouveau_bios* %91, i64 %93)
  %95 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  br label %115

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %106, %96
  %98 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %99 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 27000
  %102 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @nv_ro08(%struct.nouveau_bios* %102, i64 %103)
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %107, 3
  store i64 %108, i64* %6, align 8
  br label %97

109:                                              ; preds = %97
  %110 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %111 = load i64, i64* %6, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i32 @nv_ro16(%struct.nouveau_bios* %110, i64 %112)
  %114 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  br label %115

115:                                              ; preds = %109, %90
  %116 = call i32 @nvbios_exec(%struct.nvbios_init* %5)
  br label %117

117:                                              ; preds = %115, %60
  %118 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %119 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %118, i32 0, i32 7
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32 (%struct.nouveau_disp*, i32, i32, i32, i32, i32)*, i32 (%struct.nouveau_disp*, i32, i32, i32, i32, i32)** %121, align 8
  %123 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %124 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %123, i32 0, i32 6
  %125 = load %struct.nouveau_disp*, %struct.nouveau_disp** %124, align 8
  %126 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %127 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %130 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %133 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %136 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 27000
  %139 = load %struct.dp_state*, %struct.dp_state** %2, align 8
  %140 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @DPCD_RC02, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @DPCD_RC02_ENHANCED_FRAME_CAP, align 4
  %146 = and i32 %144, %145
  %147 = call i32 %122(%struct.nouveau_disp* %125, i32 %128, i32 %131, i32 %134, i32 %138, i32 %146)
  ret i32 %147
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_disp*) #1

declare dso_local i32 @nv_subdev(%struct.nouveau_disp*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @nv_wraux(i32, i32, i32*, i32) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

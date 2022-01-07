; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_exec_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_exec_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_outp = type { i32* }
%struct.dcb_output = type { i32 }
%struct.nvbios_init = type { i32, i32, %struct.dcb_output*, i32, %struct.nouveau_bios*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_disp_priv*, i32, i32)* @exec_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_script(%struct.nv50_disp_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_disp_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca %struct.nvbios_outp, align 8
  %10 = alloca %struct.dcb_output, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nvbios_init, align 8
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %20 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv* %19)
  store %struct.nouveau_bios* %20, %struct.nouveau_bios** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 3
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ false, %21 ], [ %29, %27 ]
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %34 = load i32, i32* %17, align 4
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 6359900, %35
  %37 = call i32 @nv_rd32(%struct.nv50_disp_priv* %33, i32 %36)
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %17, align 4
  br label %21

41:                                               ; preds = %30
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %114, label %47

47:                                               ; preds = %41
  %48 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %49 = call %struct.TYPE_2__* @nv_device(%struct.nv50_disp_priv* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 144
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %55 = call %struct.TYPE_2__* @nv_device(%struct.nv50_disp_priv* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 146
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %61 = call %struct.TYPE_2__* @nv_device(%struct.nv50_disp_priv* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 160
  br i1 %64, label %65, label %89

65:                                               ; preds = %59, %53, %47
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 2
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i1 [ false, %66 ], [ %74, %72 ]
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %79 = load i32, i32* %17, align 4
  %80 = mul nsw i32 %79, 8
  %81 = add nsw i32 6359924, %80
  %82 = call i32 @nv_rd32(%struct.nv50_disp_priv* %78, i32 %81)
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %66

86:                                               ; preds = %75
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 4
  store i32 %88, i32* %17, align 4
  br label %113

89:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %6, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %97, 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = phi i1 [ false, %90 ], [ %98, %96 ]
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %103 = load i32, i32* %17, align 4
  %104 = mul nsw i32 %103, 8
  %105 = add nsw i32 6358936, %104
  %106 = call i32 @nv_rd32(%struct.nv50_disp_priv* %102, i32 %105)
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %90

110:                                              ; preds = %99
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %110, %86
  br label %114

114:                                              ; preds = %113, %41
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 1, %116
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %144, label %120

120:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  br label %121

121:                                              ; preds = %138, %120
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %6, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 3
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi i1 [ false, %121 ], [ %129, %127 ]
  br i1 %131, label %132, label %141

132:                                              ; preds = %130
  %133 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %134 = load i32, i32* %17, align 4
  %135 = mul nsw i32 %134, 8
  %136 = add nsw i32 6359940, %135
  %137 = call i32 @nv_rd32(%struct.nv50_disp_priv* %133, i32 %136)
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %121

141:                                              ; preds = %130
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 8
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %141, %114
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %6, align 4
  %147 = shl i32 1, %146
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %182

151:                                              ; preds = %144
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %17, align 4
  %154 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call i64 @exec_lookup(%struct.nv50_disp_priv* %154, i32 %155, i32 %156, i32 %157, %struct.dcb_output* %10, i32* %11, i32* %12, i32* %13, i32* %14, %struct.nvbios_outp* %9)
  store i64 %158, i64* %15, align 8
  %159 = load i64, i64* %15, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %162, align 8
  %164 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 2
  store %struct.dcb_output* %10, %struct.dcb_output** %165, align 8
  %166 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 3
  %167 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %9, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %166, align 8
  %173 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 4
  %174 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  store %struct.nouveau_bios* %174, %struct.nouveau_bios** %173, align 8
  %175 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 5
  %176 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %177 = call i32 @nv_subdev(%struct.nv50_disp_priv* %176)
  store i32 %177, i32* %175, align 8
  %178 = call i64 @nvbios_exec(%struct.nvbios_init* %18)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %161, %150
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv50_disp_priv*) #1

declare dso_local i64 @exec_lookup(%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*, i32*, i32*, i32*, i32*, %struct.nvbios_outp*) #1

declare dso_local i32 @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i64 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

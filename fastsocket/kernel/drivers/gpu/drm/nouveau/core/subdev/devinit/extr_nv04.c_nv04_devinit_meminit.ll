; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv04.c_nv04_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv04.c_nv04_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_devinit = type { i32 }
%struct.nv04_devinit_priv = type { i32 }
%struct.io_mapping = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV04_PFB_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PFB_DEBUG_0_REFRESH_OFF = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_16MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_WIDTH_128 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_TYPE = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_8MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_4MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_devinit*)* @nv04_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_devinit_meminit(%struct.nouveau_devinit* %0) #0 {
  %2 = alloca %struct.nouveau_devinit*, align 8
  %3 = alloca %struct.nv04_devinit_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_mapping*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_devinit* %0, %struct.nouveau_devinit** %2, align 8
  %7 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %2, align 8
  %8 = bitcast %struct.nouveau_devinit* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv04_devinit_priv*
  store %struct.nv04_devinit_priv* %9, %struct.nv04_devinit_priv** %3, align 8
  store i32 -559038737, i32* %4, align 4
  %10 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %11 = call %struct.TYPE_2__* @nv_device(%struct.nv04_devinit_priv* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.io_mapping* @fbmem_init(i32 %13)
  store %struct.io_mapping* %14, %struct.io_mapping** %5, align 8
  %15 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %16 = icmp ne %struct.io_mapping* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %19 = call i32 @nv_error(%struct.nv04_devinit_priv* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %22 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %23 = call i32 @nv_rdvgas(%struct.nv04_devinit_priv* %22, i32 0, i32 1)
  %24 = or i32 %23, 32
  %25 = call i32 @nv_wrvgas(%struct.nv04_devinit_priv* %21, i32 0, i32 1, i32 %24)
  %26 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %27 = load i32, i32* @NV04_PFB_DEBUG_0, align 4
  %28 = load i32, i32* @NV04_PFB_DEBUG_0_REFRESH_OFF, align 4
  %29 = call i32 @nv_mask(%struct.nv04_devinit_priv* %26, i32 %27, i32 0, i32 %28)
  %30 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %31 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %32 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_16MB, align 4
  %33 = load i32, i32* @NV04_PFB_BOOT_0_RAM_WIDTH_128, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @nv_mask(%struct.nv04_devinit_priv* %30, i32 %31, i32 -1, i32 %36)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %47, %20
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 4, %43
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @fbmem_poke(%struct.io_mapping* %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %38

50:                                               ; preds = %38
  %51 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @fbmem_poke(%struct.io_mapping* %51, i32 4194304, i32 %53)
  %55 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %56 = call i32 @fbmem_peek(%struct.io_mapping* %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %50
  %61 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %62 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %63 = load i32, i32* @NV04_PFB_BOOT_0_RAM_TYPE, align 4
  %64 = load i32, i32* @NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT, align 4
  %65 = call i32 @nv_mask(%struct.nv04_devinit_priv* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %67 = load i32, i32* @NV04_PFB_DEBUG_0, align 4
  %68 = load i32, i32* @NV04_PFB_DEBUG_0_REFRESH_OFF, align 4
  %69 = call i32 @nv_mask(%struct.nv04_devinit_priv* %66, i32 %67, i32 %68, i32 0)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %79, %60
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 4, %75
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @fbmem_poke(%struct.io_mapping* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %70

82:                                               ; preds = %70
  %83 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %84 = call i32 @fbmem_peek(%struct.io_mapping* %83, i32 12)
  %85 = and i32 %84, 65535
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 65535
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %91 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %92 = load i32, i32* @NV04_PFB_BOOT_0_RAM_WIDTH_128, align 4
  %93 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_8MB, align 4
  %96 = call i32 @nv_mask(%struct.nv04_devinit_priv* %90, i32 %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %82
  br label %155

98:                                               ; preds = %50
  %99 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %100 = call i32 @fbmem_peek(%struct.io_mapping* %99, i32 12)
  %101 = and i32 %100, -65536
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, -65536
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %107 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %108 = load i32, i32* @NV04_PFB_BOOT_0_RAM_WIDTH_128, align 4
  %109 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_4MB, align 4
  %112 = call i32 @nv_mask(%struct.nv04_devinit_priv* %106, i32 %107, i32 %110, i32 %111)
  br label %154

113:                                              ; preds = %98
  %114 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %115 = call i32 @fbmem_peek(%struct.io_mapping* %114, i32 0)
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i64 @fbmem_readback(%struct.io_mapping* %119, i32 8388608, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %125 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %126 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %127 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_8MB, align 4
  %128 = call i32 @nv_mask(%struct.nv04_devinit_priv* %124, i32 %125, i32 %126, i32 %127)
  br label %135

129:                                              ; preds = %118
  %130 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %131 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %132 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %133 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_4MB, align 4
  %134 = call i32 @nv_mask(%struct.nv04_devinit_priv* %130, i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %123
  %136 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %137 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %138 = load i32, i32* @NV04_PFB_BOOT_0_RAM_TYPE, align 4
  %139 = load i32, i32* @NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT, align 4
  %140 = call i32 @nv_mask(%struct.nv04_devinit_priv* %136, i32 %137, i32 %138, i32 %139)
  br label %153

141:                                              ; preds = %113
  %142 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i64 @fbmem_readback(%struct.io_mapping* %142, i32 8388608, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %148 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %149 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %150 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_8MB, align 4
  %151 = call i32 @nv_mask(%struct.nv04_devinit_priv* %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153, %105
  br label %155

155:                                              ; preds = %154, %97
  %156 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %157 = load i32, i32* @NV04_PFB_DEBUG_0, align 4
  %158 = load i32, i32* @NV04_PFB_DEBUG_0_REFRESH_OFF, align 4
  %159 = call i32 @nv_mask(%struct.nv04_devinit_priv* %156, i32 %157, i32 %158, i32 0)
  %160 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %161 = load %struct.nv04_devinit_priv*, %struct.nv04_devinit_priv** %3, align 8
  %162 = call i32 @nv_rdvgas(%struct.nv04_devinit_priv* %161, i32 0, i32 1)
  %163 = and i32 %162, -33
  %164 = call i32 @nv_wrvgas(%struct.nv04_devinit_priv* %160, i32 0, i32 1, i32 %163)
  %165 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %166 = call i32 @fbmem_fini(%struct.io_mapping* %165)
  br label %167

167:                                              ; preds = %155, %17
  ret void
}

declare dso_local %struct.io_mapping* @fbmem_init(i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv04_devinit_priv*) #1

declare dso_local i32 @nv_error(%struct.nv04_devinit_priv*, i8*) #1

declare dso_local i32 @nv_wrvgas(%struct.nv04_devinit_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rdvgas(%struct.nv04_devinit_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv04_devinit_priv*, i32, i32, i32) #1

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i32) #1

declare dso_local i32 @fbmem_peek(%struct.io_mapping*, i32) #1

declare dso_local i64 @fbmem_readback(%struct.io_mapping*, i32, i32) #1

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

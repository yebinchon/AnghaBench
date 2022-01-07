; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nvc0_fifo_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"INTR 0x00000001: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"INTR 0x00000100: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"INTR 0x00010000: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"INTR 0x01000000: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"INTR 0x40000000: 0x%08x 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"INTR 0x80000000: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"unhandled status 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nvc0_fifo_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_fifo_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nvc0_fifo_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %19 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %20 = bitcast %struct.nouveau_subdev* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nvc0_fifo_priv*
  store %struct.nvc0_fifo_priv* %21, %struct.nvc0_fifo_priv** %3, align 8
  %22 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %23 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %22, i32 8512)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %25 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %24, i32 8448)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %33 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %32, i32 9516)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @nv_warn(%struct.nvc0_fifo_priv* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %38 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %37, i32 8448, i32 1)
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, -2
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %31, %1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 256
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %47 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %46, i32 9548)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @nv_warn(%struct.nvc0_fifo_priv* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %52 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %51, i32 8448, i32 256)
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, -257
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %41
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 65536
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %61 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %60, i32 9580)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @nv_warn(%struct.nvc0_fifo_priv* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %66 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %65, i32 8448, i32 65536)
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, -65537
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 16777216
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %75 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %74, i32 9612)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nv_warn(%struct.nvc0_fifo_priv* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %80 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %79, i32 8448, i32 16777216)
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, -16777217
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %73, %69
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 268435456
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %89 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %88, i32 9628)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %94, %87
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ffs(i32 %95)
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @nvc0_fifo_isr_vm_fault(%struct.nvc0_fifo_priv* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %91

106:                                              ; preds = %91
  %107 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %107, i32 9628, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, -268435457
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %83
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 536870912
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %118 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %117, i32 9632)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %123, %116
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @ffs(i32 %124)
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @nvc0_fifo_isr_subfifo_intr(%struct.nvc0_fifo_priv* %127, i32 %128)
  %130 = load i32, i32* %15, align 4
  %131 = shl i32 1, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %14, align 4
  br label %120

135:                                              ; preds = %120
  %136 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %136, i32 9632, i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, -536870913
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %135, %112
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, 1073741824
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %147 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %146, i32 9636)
  store i32 %147, i32* %16, align 4
  %148 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %149 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %148, i32 10752, i32 0, i32 0)
  store i32 %149, i32* %17, align 4
  %150 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %17, align 4
  %153 = call i32 (%struct.nvc0_fifo_priv*, i8*, i32, ...) @nv_debug(%struct.nvc0_fifo_priv* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, -1073741825
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %145, %141
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, -2147483648
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %162 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %161, i32 9640, i32 0, i32 0)
  store i32 %162, i32* %18, align 4
  %163 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %164 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @nouveau_event_trigger(i32 %166, i32 0)
  %168 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %169 = load i32, i32* %18, align 4
  %170 = call i32 (%struct.nvc0_fifo_priv*, i8*, i32, ...) @nv_debug(%struct.nvc0_fifo_priv* %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %5, align 4
  %172 = and i32 %171, 2147483647
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %160, %156
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @nv_fatal(%struct.nvc0_fifo_priv* %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %180, i32 8448, i32 %181)
  %183 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %3, align 8
  %184 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %183, i32 8512, i32 0)
  br label %185

185:                                              ; preds = %176, %173
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_fifo_priv*, i32) #1

declare dso_local i32 @nv_warn(%struct.nvc0_fifo_priv*, i8*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_fifo_priv*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @nvc0_fifo_isr_vm_fault(%struct.nvc0_fifo_priv*, i32) #1

declare dso_local i32 @nvc0_fifo_isr_subfifo_intr(%struct.nvc0_fifo_priv*, i32) #1

declare dso_local i32 @nv_mask(%struct.nvc0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_debug(%struct.nvc0_fifo_priv*, i8*, i32, ...) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_fatal(%struct.nvc0_fifo_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

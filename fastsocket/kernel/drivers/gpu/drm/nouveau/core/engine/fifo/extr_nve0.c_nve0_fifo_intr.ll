; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nve0_fifo_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unknown status 0x00000100\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown status 0x40000000\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unhandled status 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nve0_fifo_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_fifo_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nve0_fifo_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %12 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %13 = bitcast %struct.nouveau_subdev* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %14, %struct.nve0_fifo_priv** %3, align 8
  %15 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %16 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %15, i32 8512)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %18 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %17, i32 8448)
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 256
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %26 = call i32 @nv_warn(%struct.nve0_fifo_priv* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %28 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %27, i32 8448, i32 256)
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, -257
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 268435456
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %37 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %36, i32 9628)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %42, %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ffs(i32 %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @nve0_fifo_isr_vm_fault(%struct.nve0_fifo_priv* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %55, i32 9628, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, -268435457
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %31
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 536870912
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %66 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %65, i32 9632)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %71, %64
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ffs(i32 %72)
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @nve0_fifo_isr_subfifo_intr(%struct.nve0_fifo_priv* %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %84, i32 9632, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, -536870913
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %60
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, 1073741824
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %95 = call i32 @nv_warn(%struct.nve0_fifo_priv* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %97 = call i32 @nv_mask(%struct.nve0_fifo_priv* %96, i32 10752, i32 0, i32 0)
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, -1073741825
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, -2147483648
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %106 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nouveau_event_trigger(i32 %108, i32 0)
  %110 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %111 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %110, i32 8448, i32 -2147483648)
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 2147483647
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %104, %100
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @nv_fatal(%struct.nve0_fifo_priv* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %121, i32 8448, i32 %122)
  %124 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %125 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %124, i32 8512, i32 0)
  br label %126

126:                                              ; preds = %117, %114
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nv_warn(%struct.nve0_fifo_priv*, i8*) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @nve0_fifo_isr_vm_fault(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nve0_fifo_isr_subfifo_intr(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nv_mask(%struct.nve0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_fatal(%struct.nve0_fifo_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

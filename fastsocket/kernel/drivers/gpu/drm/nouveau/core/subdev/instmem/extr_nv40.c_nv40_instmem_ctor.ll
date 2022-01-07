; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv40.c_nv40_instmem_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv40.c_nv40_instmem_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.nv04_instmem_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"unable to map PRAMIN BAR\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@nv04_instmem_alloc = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv40_instmem_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_instmem_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca %struct.nv04_instmem_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %20)
  store %struct.nouveau_device* %21, %struct.nouveau_device** %14, align 8
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %23 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %22, i32 0, i32 1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %15, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %28 = call i32 @nouveau_instmem_create(%struct.nouveau_object* %25, %struct.nouveau_object* %26, %struct.nouveau_oclass* %27, %struct.nv04_instmem_priv** %16)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %30 = call %struct.nouveau_object* @nv_object(%struct.nv04_instmem_priv* %29)
  %31 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %30, %struct.nouveau_object** %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %7, align 4
  br label %190

36:                                               ; preds = %6
  %37 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %38 = call i64 @pci_resource_len(%struct.pci_dev* %37, i32 2)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 2, i32* %18, align 4
  br label %42

41:                                               ; preds = %36
  store i32 3, i32* %18, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @pci_resource_start(%struct.pci_dev* %43, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i64 @pci_resource_len(%struct.pci_dev* %46, i32 %47)
  %49 = call i32 @ioremap(i32 %45, i64 %48)
  %50 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %51 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %53 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %42
  %57 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %58 = call i32 @nv_error(%struct.nv04_instmem_priv* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EFAULT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %190

61:                                               ; preds = %42
  %62 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %63 = call i32 @nv_rd32(%struct.nv04_instmem_priv* %62, i32 5440)
  %64 = and i32 %63, 65280
  %65 = ashr i32 %64, 8
  %66 = call i32 @hweight8(i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %68 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 64
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i32, i32* %19, align 4
  %73 = mul nsw i32 27296, %72
  %74 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %75 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %106

77:                                               ; preds = %61
  %78 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %79 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 67
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %19, align 4
  %84 = mul nsw i32 20224, %83
  %85 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %86 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  br label %105

88:                                               ; preds = %77
  %89 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %90 = call i64 @nv44_graph_class(%struct.nv04_instmem_priv* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = mul nsw i32 18816, %93
  %95 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %96 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  br label %104

98:                                               ; preds = %88
  %99 = load i32, i32* %19, align 4
  %100 = mul nsw i32 19008, %99
  %101 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %102 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %82
  br label %106

106:                                              ; preds = %105, %71
  %107 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %108 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 16384
  store i32 %111, i32* %109, align 4
  %112 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %113 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 32
  store i32 %116, i32* %114, align 4
  %117 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %118 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 524288
  store i32 %121, i32* %119, align 4
  %122 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %123 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 524288
  store i32 %126, i32* %124, align 4
  %127 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %128 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @round_up(i32 %130, i32 4096)
  %132 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %133 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @nv04_instmem_alloc, align 4
  %136 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %137 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %140 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %139, i32 0, i32 6
  %141 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %142 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nouveau_mm_init(i32* %140, i32 0, i32 %144, i32 1)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %106
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %7, align 4
  br label %190

150:                                              ; preds = %106
  %151 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %152 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %153 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %152, i32 0, i32 4
  %154 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %151, i32* null, i32 65536, i32 0, i32 0, i32* %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* %17, align 4
  store i32 %158, i32* %7, align 4
  br label %190

159:                                              ; preds = %150
  %160 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %161 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %162 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %161, i32 0, i32 3
  %163 = call i32 @nouveau_ramht_new(%struct.nouveau_object* %160, i32* null, i32 32768, i32 0, i32* %162)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %7, align 4
  br label %190

168:                                              ; preds = %159
  %169 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %170 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %171 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %170, i32 0, i32 2
  %172 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %169, i32* null, i32 32768, i32 0, i32 0, i32* %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %7, align 4
  br label %190

177:                                              ; preds = %168
  %178 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %179 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %180 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %181 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %180, i32 0, i32 1
  %182 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %178, i32* null, i32 131072, i32 0, i32 %179, i32* %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* %17, align 4
  store i32 %186, i32* %7, align 4
  br label %190

187:                                              ; preds = %177
  %188 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %16, align 8
  %189 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %188, i32 0, i32 0
  store i32 1, i32* %189, align 4
  store i32 0, i32* %7, align 4
  br label %190

190:                                              ; preds = %187, %185, %175, %166, %157, %148, %56, %34
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_instmem_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv04_instmem_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_instmem_priv*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i64) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @nv_error(%struct.nv04_instmem_priv*, i8*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @nv_rd32(%struct.nv04_instmem_priv*, i32) #1

declare dso_local i64 @nv44_graph_class(%struct.nv04_instmem_priv*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nouveau_ramht_new(%struct.nouveau_object*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

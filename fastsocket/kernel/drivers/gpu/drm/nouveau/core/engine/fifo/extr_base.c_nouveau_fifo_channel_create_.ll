; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_channel_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_base.c_nouveau_fifo_channel_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fifo = type { i64, i64, i32, i64* }
%struct.nouveau_fifo_chan = type { i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_dmaeng = type { i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.TYPE_6__*, i32*)* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no free channels\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fifo_channel_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_object*, align 8
  %13 = alloca %struct.nouveau_object*, align 8
  %14 = alloca %struct.nouveau_oclass*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca %struct.nouveau_device*, align 8
  %23 = alloca %struct.nouveau_fifo*, align 8
  %24 = alloca %struct.nouveau_fifo_chan*, align 8
  %25 = alloca %struct.nouveau_dmaeng*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %12, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %13, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8** %9, i8*** %21, align 8
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %29 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %28)
  store %struct.nouveau_device* %29, %struct.nouveau_device** %22, align 8
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %31 = bitcast %struct.nouveau_object* %30 to i8*
  %32 = bitcast i8* %31 to %struct.nouveau_fifo*
  store %struct.nouveau_fifo* %32, %struct.nouveau_fifo** %23, align 8
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %34 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %35 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %20, align 4
  %38 = load i8**, i8*** %21, align 8
  %39 = call i32 @nouveau_namedb_create_(%struct.nouveau_object* %33, %struct.nouveau_object* %34, %struct.nouveau_oclass* %35, i32 0, i32* null, i32 %36, i32 %37, i8** %38)
  store i32 %39, i32* %27, align 4
  %40 = load i8**, i8*** %21, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %42, %struct.nouveau_fifo_chan** %24, align 8
  %43 = load i32, i32* %27, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %10
  %46 = load i32, i32* %27, align 4
  store i32 %46, i32* %11, align 4
  br label %192

47:                                               ; preds = %10
  %48 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i64 @nouveau_handle_ref(%struct.nouveau_object* %48, i32 %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = bitcast i8* %51 to %struct.TYPE_6__*
  %53 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %54 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %53, i32 0, i32 4
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  %55 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %56 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %55, i32 0, i32 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %192

62:                                               ; preds = %47
  %63 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %64 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %63, i32 0, i32 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = bitcast i8* %69 to %struct.nouveau_dmaeng*
  store %struct.nouveau_dmaeng* %70, %struct.nouveau_dmaeng** %25, align 8
  %71 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %72 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %80 [
    i32 129, label %79
    i32 128, label %79
  ]

79:                                               ; preds = %62, %62
  br label %83

80:                                               ; preds = %62
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %192

83:                                               ; preds = %79
  %84 = load %struct.nouveau_dmaeng*, %struct.nouveau_dmaeng** %25, align 8
  %85 = getelementptr inbounds %struct.nouveau_dmaeng, %struct.nouveau_dmaeng* %84, i32 0, i32 0
  %86 = load i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.TYPE_6__*, i32*)*, i32 (%struct.nouveau_dmaeng*, %struct.nouveau_object*, %struct.TYPE_6__*, i32*)** %85, align 8
  %87 = load %struct.nouveau_dmaeng*, %struct.nouveau_dmaeng** %25, align 8
  %88 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %89 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %90 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %93 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %92, i32 0, i32 3
  %94 = call i32 %86(%struct.nouveau_dmaeng* %87, %struct.nouveau_object* %88, %struct.TYPE_6__* %91, i32* %93)
  store i32 %94, i32* %27, align 4
  %95 = load i32, i32* %27, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %27, align 4
  store i32 %98, i32* %11, align 4
  br label %192

99:                                               ; preds = %83
  %100 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %101 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %100, i32 0, i32 2
  %102 = load i64, i64* %26, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  %104 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %105 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %108 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %138, %99
  %110 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %111 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %114 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %112, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %109
  %118 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %119 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %122 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %117
  %128 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %129 = call i64 @nv_object(%struct.nouveau_fifo_chan* %128)
  %130 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %131 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %130, i32 0, i32 3
  %132 = load i64*, i64** %131, align 8
  %133 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %134 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  store i64 %129, i64* %136, align 8
  br label %143

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %140 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %109

143:                                              ; preds = %127, %109
  %144 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %145 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %144, i32 0, i32 2
  %146 = load i64, i64* %26, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  %148 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %149 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %152 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %150, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %143
  %156 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %23, align 8
  %157 = call i32 @nv_error(%struct.nouveau_fifo* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* @ENOSPC, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %11, align 4
  br label %192

160:                                              ; preds = %143
  %161 = load %struct.nouveau_device*, %struct.nouveau_device** %22, align 8
  %162 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @pci_resource_start(i32 %163, i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %170 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %171, %173
  %175 = add i64 %168, %174
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @ioremap(i32 %176, i32 %177)
  %179 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %180 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %182 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %160
  %186 = load i32, i32* @EFAULT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %11, align 4
  br label %192

188:                                              ; preds = %160
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %24, align 8
  %191 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %188, %185, %155, %97, %80, %59, %45
  %193 = load i32, i32* %11, align 4
  ret i32 %193
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_namedb_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32*, i32, i32, i8**) #1

declare dso_local i64 @nouveau_handle_ref(%struct.nouveau_object*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @nv_object(%struct.nouveau_fifo_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nv_error(%struct.nouveau_fifo*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engctx.c_nouveau_engctx_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engctx.c_nouveau_engctx_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_oclass = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.nouveau_engine = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@NV_ENGCTX_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_engctx_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, %struct.nouveau_object* %3, i64 %4, i64 %5, i64 %6, i32 %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_object*, align 8
  %13 = alloca %struct.nouveau_oclass*, align 8
  %14 = alloca %struct.nouveau_object*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca %struct.nouveau_client*, align 8
  %21 = alloca %struct.nouveau_engine*, align 8
  %22 = alloca %struct.nouveau_object*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %12, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %13, align 8
  store %struct.nouveau_object* %3, %struct.nouveau_object** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i8** %8, i8*** %19, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %26 = call %struct.nouveau_client* @nouveau_client(%struct.nouveau_object* %25)
  store %struct.nouveau_client* %26, %struct.nouveau_client** %20, align 8
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %28 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %27)
  store %struct.nouveau_engine* %28, %struct.nouveau_engine** %21, align 8
  %29 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %30 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %29, i32 0, i32 0
  %31 = load i64, i64* %23, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %34 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %35 = load i8**, i8*** %19, align 8
  %36 = call i32 @nouveau_engctx_exists(%struct.nouveau_object* %33, %struct.nouveau_engine* %34, i8** %35)
  store i32 %36, i32* %24, align 4
  %37 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %38 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %37, i32 0, i32 0
  %39 = load i64, i64* %23, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %24, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %9
  %44 = load i32, i32* %24, align 4
  store i32 %44, i32* %10, align 4
  br label %123

45:                                               ; preds = %9
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %50 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %51 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %13, align 8
  %52 = load i32, i32* @NV_ENGCTX_CLASS, align 4
  %53 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i8**, i8*** %19, align 8
  %59 = call i32 @nouveau_gpuobj_create_(%struct.nouveau_object* %49, %struct.nouveau_object* %50, %struct.nouveau_oclass* %51, i32 %52, %struct.nouveau_object* %53, i64 %54, i64 %55, i64 %56, i32 %57, i8** %58)
  store i32 %59, i32* %24, align 4
  br label %68

60:                                               ; preds = %45
  %61 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %62 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %63 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %13, align 8
  %64 = load i32, i32* @NV_ENGCTX_CLASS, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i8**, i8*** %19, align 8
  %67 = call i32 @nouveau_object_create_(%struct.nouveau_object* %61, %struct.nouveau_object* %62, %struct.nouveau_oclass* %63, i32 %64, i32 %65, i8** %66)
  store i32 %67, i32* %24, align 4
  br label %68

68:                                               ; preds = %60, %48
  %69 = load i8**, i8*** %19, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.nouveau_object*
  store %struct.nouveau_object* %71, %struct.nouveau_object** %22, align 8
  %72 = load i32, i32* %24, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %24, align 4
  store i32 %75, i32* %10, align 4
  br label %123

76:                                               ; preds = %68
  %77 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %78 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %77, i32 0, i32 0
  %79 = load i64, i64* %23, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %82 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %83 = load i8**, i8*** %19, align 8
  %84 = call i32 @nouveau_engctx_exists(%struct.nouveau_object* %81, %struct.nouveau_engine* %82, i8** %83)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %89 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %88, i32 0, i32 0
  %90 = load i64, i64* %23, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %22)
  %93 = load i32, i32* %24, align 4
  store i32 %93, i32* %10, align 4
  br label %123

94:                                               ; preds = %76
  %95 = load %struct.nouveau_client*, %struct.nouveau_client** %20, align 8
  %96 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = icmp ne %struct.TYPE_3__* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.nouveau_client*, %struct.nouveau_client** %20, align 8
  %101 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %106 = call i64 @nv_engidx(%struct.nouveau_object* %105)
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @atomic_inc(i32* %107)
  br label %109

109:                                              ; preds = %99, %94
  %110 = load %struct.nouveau_object*, %struct.nouveau_object** %22, align 8
  %111 = call %struct.TYPE_4__* @nv_engctx(%struct.nouveau_object* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %114 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %113, i32 0, i32 1
  %115 = call i32 @list_add(i32* %112, i32* %114)
  %116 = load %struct.nouveau_object*, %struct.nouveau_object** %22, align 8
  %117 = call %struct.TYPE_4__* @nv_engctx(%struct.nouveau_object* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i64 -1, i64* %118, align 8
  %119 = load %struct.nouveau_engine*, %struct.nouveau_engine** %21, align 8
  %120 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %119, i32 0, i32 0
  %121 = load i64, i64* %23, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %109, %87, %74, %43
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local %struct.nouveau_client* @nouveau_client(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nouveau_engctx_exists(%struct.nouveau_object*, %struct.nouveau_engine*, i8**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_gpuobj_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nouveau_object*, i64, i64, i64, i32, i8**) #1

declare dso_local i32 @nouveau_object_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i32 @nouveau_object_ref(i32*, %struct.nouveau_object**) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @nv_engidx(%struct.nouveau_object*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @nv_engctx(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

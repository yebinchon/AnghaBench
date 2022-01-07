; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_base.c_nouveau_i2c_port_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_base.c_nouveau_i2c_port_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algorithm = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.nouveau_i2c = type { i32 }
%struct.nouveau_i2c_port = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.nouveau_i2c_port*, i32 }
%struct.TYPE_8__ = type { %struct.i2c_algorithm*, %struct.nouveau_i2c_port*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.i2c_algo_bit_data = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.i2c_algo_bit_data*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"nouveau-%s-%d\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@nouveau_i2c_bit_algo = common dso_local global %struct.i2c_algorithm zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"NvI2C\00", align 1
@CSTMSEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_i2c_pre_xfer = common dso_local global i32 0, align 4
@nouveau_i2c_setsda = common dso_local global i32 0, align 4
@nouveau_i2c_setscl = common dso_local global i32 0, align 4
@nouveau_i2c_getsda = common dso_local global i32 0, align 4
@nouveau_i2c_getscl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_i2c_port_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, %struct.i2c_algorithm* %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_oclass*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_algorithm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.nouveau_device*, align 8
  %17 = alloca %struct.nouveau_i2c*, align 8
  %18 = alloca %struct.nouveau_i2c_port*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.i2c_algorithm* %4, %struct.i2c_algorithm** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %22 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %21)
  store %struct.nouveau_device* %22, %struct.nouveau_device** %16, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %24 = bitcast %struct.nouveau_object* %23 to i8*
  %25 = bitcast i8* %24 to %struct.nouveau_i2c*
  store %struct.nouveau_i2c* %25, %struct.nouveau_i2c** %17, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %28 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i8**, i8*** %15, align 8
  %31 = call i32 @nouveau_object_create_(%struct.nouveau_object* %26, %struct.nouveau_object* %27, %struct.nouveau_oclass* %28, i32 0, i32 %29, i8** %30)
  store i32 %31, i32* %19, align 4
  %32 = load i8**, i8*** %15, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.nouveau_i2c_port*
  store %struct.nouveau_i2c_port* %34, %struct.nouveau_i2c_port** %18, align 8
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %8, align 4
  br label %148

39:                                               ; preds = %7
  %40 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %41 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nouveau_device*, %struct.nouveau_device** %16, align 8
  %45 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %51 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.nouveau_device*, %struct.nouveau_device** %16, align 8
  %54 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %58 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32* %56, i32** %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %63 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %65 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %64, i32 0, i32 3
  %66 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %17, align 8
  %67 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %65, %struct.nouveau_i2c* %66)
  %68 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %13, align 8
  %69 = icmp eq %struct.i2c_algorithm* %68, @nouveau_i2c_bit_algo
  br i1 %69, label %70, label %119

70:                                               ; preds = %39
  %71 = load %struct.nouveau_device*, %struct.nouveau_device** %16, align 8
  %72 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CSTMSEL, align 4
  %75 = call i32 @nouveau_boolopt(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %119, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.nouveau_i2c_port* @kzalloc(i32 88, i32 %78)
  %80 = bitcast %struct.nouveau_i2c_port* %79 to %struct.i2c_algo_bit_data*
  store %struct.i2c_algo_bit_data* %80, %struct.i2c_algo_bit_data** %20, align 8
  %81 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %82 = icmp ne %struct.i2c_algo_bit_data* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %148

86:                                               ; preds = %77
  %87 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %88 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %87, i32 0, i32 1
  store i32 10, i32* %88, align 4
  %89 = call i32 @usecs_to_jiffies(i32 2200)
  %90 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %91 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %93 = bitcast %struct.nouveau_i2c_port* %92 to %struct.i2c_algo_bit_data*
  %94 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %95 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %94, i32 0, i32 9
  store %struct.i2c_algo_bit_data* %93, %struct.i2c_algo_bit_data** %95, align 8
  %96 = load i32, i32* @nouveau_i2c_pre_xfer, align 4
  %97 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %98 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @nouveau_i2c_setsda, align 4
  %100 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %101 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @nouveau_i2c_setscl, align 4
  %103 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %104 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @nouveau_i2c_getsda, align 4
  %106 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %107 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @nouveau_i2c_getscl, align 4
  %109 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %110 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %20, align 8
  %112 = bitcast %struct.i2c_algo_bit_data* %111 to %struct.nouveau_i2c_port*
  %113 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %114 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store %struct.nouveau_i2c_port* %112, %struct.nouveau_i2c_port** %115, align 8
  %116 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %117 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %116, i32 0, i32 3
  %118 = call i32 @i2c_bit_add_bus(%struct.TYPE_8__* %117)
  store i32 %118, i32* %19, align 4
  br label %131

119:                                              ; preds = %70, %39
  %120 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %121 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %122 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store %struct.nouveau_i2c_port* %120, %struct.nouveau_i2c_port** %123, align 8
  %124 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %13, align 8
  %125 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %126 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store %struct.i2c_algorithm* %124, %struct.i2c_algorithm** %127, align 8
  %128 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %129 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %128, i32 0, i32 3
  %130 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %129)
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %119, %86
  %132 = load i32, i32* %19, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %18, align 8
  %136 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %135, i32 0, i32 2
  %137 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %17, align 8
  %138 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %137, i32 0, i32 0
  %139 = call i32 @list_add_tail(i32* %136, i32* %138)
  %140 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %141 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %140, i32 0, i32 0
  %142 = call i32 @atomic_dec(i32* %141)
  %143 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %144 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %143, i32 0, i32 0
  %145 = call i32 @atomic_dec(i32* %144)
  br label %146

146:                                              ; preds = %134, %131
  %147 = load i32, i32* %19, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %146, %83, %37
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_object_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, %struct.nouveau_i2c*) #1

declare dso_local i32 @nouveau_boolopt(i32, i8*, i32) #1

declare dso_local %struct.nouveau_i2c_port* @kzalloc(i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_8__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

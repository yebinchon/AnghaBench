; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_chan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nve0_fifo_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nve0_fifo_base*, %struct.TYPE_6__ }
%struct.nve0_fifo_base = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nve0_fifo_chan = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nve0_channel_ind_class = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FIFO_ENGINE_NR = common dso_local global i32 0, align 4
@fifo_engine = common dso_local global %struct.TYPE_10__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@nve0_fifo_context_attach = common dso_local global i32 0, align 4
@nve0_fifo_context_detach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nve0_fifo_chan_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_chan_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_bar*, align 8
  %15 = alloca %struct.nve0_fifo_priv*, align 8
  %16 = alloca %struct.nve0_fifo_base*, align 8
  %17 = alloca %struct.nve0_fifo_chan*, align 8
  %18 = alloca %struct.nve0_channel_ind_class*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %25 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %24)
  store %struct.nouveau_bar* %25, %struct.nouveau_bar** %14, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = bitcast %struct.nouveau_object* %26 to i8*
  %28 = bitcast i8* %27 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %28, %struct.nve0_fifo_priv** %15, align 8
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %30 = bitcast %struct.nouveau_object* %29 to i8*
  %31 = bitcast i8* %30 to %struct.nve0_fifo_base*
  store %struct.nve0_fifo_base* %31, %struct.nve0_fifo_base** %16, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = bitcast i8* %32 to %struct.nve0_channel_ind_class*
  store %struct.nve0_channel_ind_class* %33, %struct.nve0_channel_ind_class** %18, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 16
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %209

40:                                               ; preds = %6
  store i32 0, i32* %23, align 4
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %23, align 4
  %43 = load i32, i32* @FIFO_ENGINE_NR, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.nve0_channel_ind_class*, %struct.nve0_channel_ind_class** %18, align 8
  %47 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %23, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fifo_engine, align 8
  %56 = load i32, i32* %23, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @nouveau_engine(%struct.nouveau_object* %54, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* %23, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.nve0_channel_ind_class*, %struct.nve0_channel_ind_class** %18, align 8
  %67 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %73

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %23, align 4
  br label %41

73:                                               ; preds = %63, %41
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* @FIFO_ENGINE_NR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %209

80:                                               ; preds = %73
  %81 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %82 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %83 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %84 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %15, align 8
  %85 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.nve0_channel_ind_class*, %struct.nve0_channel_ind_class** %18, align 8
  %90 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fifo_engine, align 8
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %81, %struct.nouveau_object* %82, %struct.nouveau_oclass* %83, i32 1, i32 %88, i32 512, i32 %91, i32 %97, %struct.nve0_fifo_chan** %17)
  store i32 %98, i32* %22, align 4
  %99 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %17, align 8
  %100 = call %struct.nouveau_object* @nv_object(%struct.nve0_fifo_chan* %99)
  %101 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %100, %struct.nouveau_object** %101, align 8
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %80
  %105 = load i32, i32* %22, align 4
  store i32 %105, i32* %7, align 4
  br label %209

106:                                              ; preds = %80
  %107 = load i32, i32* @nve0_fifo_context_attach, align 4
  %108 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %17, align 8
  %109 = call %struct.TYPE_9__* @nv_parent(%struct.nve0_fifo_chan* %108)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @nve0_fifo_context_detach, align 4
  %112 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %17, align 8
  %113 = call %struct.TYPE_9__* @nv_parent(%struct.nve0_fifo_chan* %112)
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %23, align 4
  %116 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %17, align 8
  %117 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %17, align 8
  %119 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 512
  store i32 %122, i32* %19, align 4
  %123 = load %struct.nve0_channel_ind_class*, %struct.nve0_channel_ind_class** %18, align 8
  %124 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %20, align 4
  %126 = load %struct.nve0_channel_ind_class*, %struct.nve0_channel_ind_class** %18, align 8
  %127 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 8
  %130 = call i32 @log2i(i32 %129)
  store i32 %130, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %131

131:                                              ; preds = %143, %106
  %132 = load i32, i32* %23, align 4
  %133 = icmp slt i32 %132, 512
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %15, align 8
  %136 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %137, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i32 @nv_wo32(%struct.nve0_fifo_base* %138, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %144, 4
  store i32 %145, i32* %23, align 4
  br label %131

146:                                              ; preds = %131
  %147 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %148 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %15, align 8
  %149 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %150, align 8
  %152 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 @lower_32_bits(i32 %155)
  %157 = call i32 @nv_wo32(%struct.nve0_fifo_base* %147, i32 8, i32 %156)
  %158 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %159 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %15, align 8
  %160 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %161, align 8
  %163 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @upper_32_bits(i32 %166)
  %168 = call i32 @nv_wo32(%struct.nve0_fifo_base* %158, i32 12, i32 %167)
  %169 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %170 = call i32 @nv_wo32(%struct.nve0_fifo_base* %169, i32 16, i32 64206)
  %171 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %172 = call i32 @nv_wo32(%struct.nve0_fifo_base* %171, i32 48, i32 -1790)
  %173 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @lower_32_bits(i32 %174)
  %176 = call i32 @nv_wo32(%struct.nve0_fifo_base* %173, i32 72, i32 %175)
  %177 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %178 = load i32, i32* %20, align 4
  %179 = call i32 @upper_32_bits(i32 %178)
  %180 = load i32, i32* %21, align 4
  %181 = shl i32 %180, 16
  %182 = or i32 %179, %181
  %183 = call i32 @nv_wo32(%struct.nve0_fifo_base* %177, i32 76, i32 %182)
  %184 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %185 = call i32 @nv_wo32(%struct.nve0_fifo_base* %184, i32 132, i32 541065216)
  %186 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %187 = call i32 @nv_wo32(%struct.nve0_fifo_base* %186, i32 148, i32 805306369)
  %188 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %189 = call i32 @nv_wo32(%struct.nve0_fifo_base* %188, i32 156, i32 256)
  %190 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %191 = call i32 @nv_wo32(%struct.nve0_fifo_base* %190, i32 172, i32 31)
  %192 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %193 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %17, align 8
  %194 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @nv_wo32(%struct.nve0_fifo_base* %192, i32 232, i32 %196)
  %198 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %199 = call i32 @nv_wo32(%struct.nve0_fifo_base* %198, i32 184, i32 -134217728)
  %200 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %201 = call i32 @nv_wo32(%struct.nve0_fifo_base* %200, i32 248, i32 268447872)
  %202 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %16, align 8
  %203 = call i32 @nv_wo32(%struct.nve0_fifo_base* %202, i32 252, i32 268435472)
  %204 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %205 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %204, i32 0, i32 0
  %206 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %205, align 8
  %207 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %208 = call i32 %206(%struct.nouveau_bar* %207)
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %146, %104, %77, %37
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i64 @nouveau_engine(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_fifo_channel_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i32, %struct.nve0_fifo_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nve0_fifo_chan*) #1

declare dso_local %struct.TYPE_9__* @nv_parent(%struct.nve0_fifo_chan*) #1

declare dso_local i32 @log2i(i32) #1

declare dso_local i32 @nv_wo32(%struct.nve0_fifo_base*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

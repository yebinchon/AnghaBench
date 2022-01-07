; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_iforce_upload_constant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_iforce_upload_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.iforce_core_effect* }
%struct.iforce_core_effect = type { i32, %struct.resource, %struct.resource }
%struct.resource = type { i32 }
%struct.ff_effect = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FF_MOD1_IS_USED = common dso_local global i32 0, align 4
@FF_MOD2_IS_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_upload_constant(%struct.iforce* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iforce*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iforce_core_effect*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %15 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %16 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.iforce*, %struct.iforce** %5, align 8
  %19 = getelementptr inbounds %struct.iforce, %struct.iforce* %18, i32 0, i32 0
  %20 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %20, i64 %22
  store %struct.iforce_core_effect* %23, %struct.iforce_core_effect** %9, align 8
  %24 = load %struct.iforce*, %struct.iforce** %5, align 8
  %25 = getelementptr inbounds %struct.iforce, %struct.iforce* %24, i32 0, i32 0
  %26 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %26, i64 %28
  %30 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %29, i32 0, i32 2
  store %struct.resource* %30, %struct.resource** %10, align 8
  %31 = load %struct.iforce*, %struct.iforce** %5, align 8
  %32 = getelementptr inbounds %struct.iforce, %struct.iforce* %31, i32 0, i32 0
  %33 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %33, i64 %35
  %37 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %36, i32 0, i32 1
  store %struct.resource* %37, %struct.resource** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %38 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %39 = icmp ne %struct.ff_effect* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.iforce*, %struct.iforce** %5, align 8
  %42 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %43 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %44 = call i64 @need_magnitude_modifier(%struct.iforce* %41, %struct.ff_effect* %42, %struct.ff_effect* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %40, %3
  %47 = load %struct.iforce*, %struct.iforce** %5, align 8
  %48 = load %struct.resource*, %struct.resource** %10, align 8
  %49 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %50 = icmp ne %struct.ff_effect* %49, null
  %51 = zext i1 %50 to i32
  %52 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %53 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @make_magnitude_modifier(%struct.iforce* %47, %struct.resource* %48, i32 %51, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %173

62:                                               ; preds = %46
  %63 = load i32, i32* @FF_MOD1_IS_USED, align 4
  %64 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %65 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_bit(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %40
  %69 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %70 = icmp ne %struct.ff_effect* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.iforce*, %struct.iforce** %5, align 8
  %73 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %74 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %75 = call i64 @need_envelope_modifier(%struct.iforce* %72, %struct.ff_effect* %73, %struct.ff_effect* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %118

77:                                               ; preds = %71, %68
  %78 = load %struct.iforce*, %struct.iforce** %5, align 8
  %79 = load %struct.resource*, %struct.resource** %11, align 8
  %80 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %81 = icmp ne %struct.ff_effect* %80, null
  %82 = zext i1 %81 to i32
  %83 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %84 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %90 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %96 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %102 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @make_envelope_modifier(%struct.iforce* %78, %struct.resource* %79, i32 %82, i32 %88, i32 %94, i32 %100, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %77
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %4, align 4
  br label %173

112:                                              ; preds = %77
  %113 = load i32, i32* @FF_MOD2_IS_USED, align 4
  %114 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %115 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @set_bit(i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %71
  %119 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %120 = icmp ne %struct.ff_effect* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %123 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %124 = call i64 @need_core(%struct.ff_effect* %122, %struct.ff_effect* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %121, %118
  %127 = load %struct.iforce*, %struct.iforce** %5, align 8
  %128 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %129 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.resource*, %struct.resource** %10, align 8
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.resource*, %struct.resource** %11, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %138 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %142 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %146 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %150 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %154 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @make_core(%struct.iforce* %127, i32 %130, i32 %133, i32 %136, i32 0, i32 32, i32 %140, i32 %144, i32 %148, i32 %152, i32 %155)
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %126, %121
  %158 = load i32, i32* %14, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* %14, align 4
  br label %171

162:                                              ; preds = %157
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %165, %162
  %169 = phi i1 [ false, %162 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  br label %171

171:                                              ; preds = %168, %160
  %172 = phi i32 [ %161, %160 ], [ %170, %168 ]
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %171, %110, %60
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @need_magnitude_modifier(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_magnitude_modifier(%struct.iforce*, %struct.resource*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @need_envelope_modifier(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_envelope_modifier(%struct.iforce*, %struct.resource*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @need_core(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_core(%struct.iforce*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

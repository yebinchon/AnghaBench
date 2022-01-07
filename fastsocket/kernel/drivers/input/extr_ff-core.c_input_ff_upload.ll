; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_input_ff_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_input_ff_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, %struct.ff_device* }
%struct.ff_device = type { i32, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32, %struct.file**, %struct.ff_effect*, i32 }
%struct.ff_effect = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }

@EV_FF = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FF_EFFECT_MIN = common dso_local global i64 0, align 8
@FF_EFFECT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"invalid or not supported effect type in upload\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FF_PERIODIC = common dso_local global i64 0, align 8
@FF_WAVEFORM_MIN = common dso_local global i64 0, align 8
@FF_WAVEFORM_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid or not supported wave form in upload\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_ff_upload(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ff_device*, align 8
  %9 = alloca %struct.ff_effect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 3
  %14 = load %struct.ff_device*, %struct.ff_device** %13, align 8
  store %struct.ff_device* %14, %struct.ff_device** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @EV_FF, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @test_bit(i64 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %211

24:                                               ; preds = %3
  %25 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %26 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FF_EFFECT_MIN, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %32 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FF_EFFECT_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %38 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @test_bit(i64 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36, %30, %24
  %46 = call i32 @debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %211

49:                                               ; preds = %36
  %50 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %51 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FF_PERIODIC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %49
  %56 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %57 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FF_WAVEFORM_MIN, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %82, label %63

63:                                               ; preds = %55
  %64 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %65 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FF_WAVEFORM_MAX, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %82, label %71

71:                                               ; preds = %63
  %72 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %73 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @test_bit(i64 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71, %63, %55
  %83 = call i32 @debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %211

86:                                               ; preds = %71, %49
  %87 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %88 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %91 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @test_bit(i64 %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %97 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %98 = call i32 @compat_effect(%struct.ff_device* %96, %struct.ff_effect* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %211

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %106 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %105, i32 0, i32 2
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %109 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %146

112:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %130, %112
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %116 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  %120 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %121 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %120, i32 0, i32 3
  %122 = load %struct.file**, %struct.file*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.file*, %struct.file** %122, i64 %124
  %126 = load %struct.file*, %struct.file** %125, align 8
  %127 = icmp ne %struct.file* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  br label %133

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %113

133:                                              ; preds = %128, %113
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %136 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @ENOSPC, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %206

142:                                              ; preds = %133
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %145 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  store %struct.ff_effect* null, %struct.ff_effect** %9, align 8
  br label %172

146:                                              ; preds = %104
  %147 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %148 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %11, align 4
  %150 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.file*, %struct.file** %7, align 8
  %153 = call i32 @check_effect_access(%struct.ff_device* %150, i32 %151, %struct.file* %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %206

157:                                              ; preds = %146
  %158 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %159 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %158, i32 0, i32 4
  %160 = load %struct.ff_effect*, %struct.ff_effect** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %160, i64 %162
  store %struct.ff_effect* %163, %struct.ff_effect** %9, align 8
  %164 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %165 = load %struct.ff_effect*, %struct.ff_effect** %9, align 8
  %166 = call i32 @check_effects_compatible(%struct.ff_effect* %164, %struct.ff_effect* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %157
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %10, align 4
  br label %206

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %142
  %173 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %174 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %173, i32 0, i32 1
  %175 = load i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)** %174, align 8
  %176 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %177 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %178 = load %struct.ff_effect*, %struct.ff_effect** %9, align 8
  %179 = call i32 %175(%struct.input_dev* %176, %struct.ff_effect* %177, %struct.ff_effect* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %206

183:                                              ; preds = %172
  %184 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 0
  %186 = call i32 @spin_lock_irq(i32* %185)
  %187 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %188 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %187, i32 0, i32 4
  %189 = load %struct.ff_effect*, %struct.ff_effect** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %189, i64 %191
  %193 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %194 = bitcast %struct.ff_effect* %192 to i8*
  %195 = bitcast %struct.ff_effect* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 %195, i64 24, i1 false)
  %196 = load %struct.file*, %struct.file** %7, align 8
  %197 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %198 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %197, i32 0, i32 3
  %199 = load %struct.file**, %struct.file*** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.file*, %struct.file** %199, i64 %201
  store %struct.file* %196, %struct.file** %202, align 8
  %203 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %204 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %203, i32 0, i32 0
  %205 = call i32 @spin_unlock_irq(i32* %204)
  br label %206

206:                                              ; preds = %183, %182, %168, %156, %139
  %207 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %208 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %207, i32 0, i32 2
  %209 = call i32 @mutex_unlock(i32* %208)
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %206, %101, %82, %45, %21
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @compat_effect(%struct.ff_device*, %struct.ff_effect*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @check_effect_access(%struct.ff_device*, i32, %struct.file*) #1

declare dso_local i32 @check_effects_compatible(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

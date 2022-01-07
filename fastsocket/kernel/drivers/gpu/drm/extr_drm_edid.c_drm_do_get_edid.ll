; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_do_get_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_do_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_KMS = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Ignoring invalid EDID block %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: EDID block %d invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_connector*, %struct.i2c_adapter*)* @drm_do_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @drm_do_get_edid(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @drm_debug, align 4
  %18 = load i32, i32* @DRM_UT_KMS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @EDID_LENGTH, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %213

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @EDID_LENGTH, align 4
  %37 = call i64 @drm_do_probe_ddc_edid(%struct.i2c_adapter* %34, i32* %35, i32 0, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %210

40:                                               ; preds = %33
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @drm_edid_block_valid(i32* %41, i32 0, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %63

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @EDID_LENGTH, align 4
  %52 = call i64 @drm_edid_is_zero(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %192

59:                                               ; preds = %49, %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %30

63:                                               ; preds = %45, %30
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %192

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 126
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32*, i32** %9, align 8
  store i32* %73, i32** %3, align 8
  br label %213

74:                                               ; preds = %67
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 126
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @EDID_LENGTH, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32* @krealloc(i32* %75, i32 %81, i32 %82)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %74
  br label %210

87:                                               ; preds = %74
  %88 = load i32*, i32** %10, align 8
  store i32* %88, i32** %9, align 8
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %153, %87
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 126
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %90, %93
  br i1 %94, label %95, label %156

95:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %129, %95
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %132

99:                                               ; preds = %96
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* @EDID_LENGTH, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @EDID_LENGTH, align 4
  %110 = call i64 @drm_do_probe_ddc_edid(%struct.i2c_adapter* %100, i32* %107, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %210

113:                                              ; preds = %99
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* @EDID_LENGTH, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @drm_edid_block_valid(i32* %120, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %113
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %132

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %96

132:                                              ; preds = %125, %96
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 4
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %140 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %145 = call i32 @drm_get_connector_name(%struct.drm_connector* %144)
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @dev_warn(i32 %143, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %149 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %138, %135, %132
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %89

156:                                              ; preds = %89
  %157 = load i32, i32* %8, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 126
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %156
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 126
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* @EDID_LENGTH, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %167
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 126
  store i32 %175, i32* %177, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* @EDID_LENGTH, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call i32* @krealloc(i32* %178, i32 %182, i32 %183)
  store i32* %184, i32** %10, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %162
  br label %210

188:                                              ; preds = %162
  %189 = load i32*, i32** %10, align 8
  store i32* %189, i32** %9, align 8
  br label %190

190:                                              ; preds = %188, %156
  %191 = load i32*, i32** %9, align 8
  store i32* %191, i32** %3, align 8
  br label %213

192:                                              ; preds = %66, %54
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %197 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %196, i32 0, i32 1
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %202 = call i32 @drm_get_connector_name(%struct.drm_connector* %201)
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @dev_warn(i32 %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %195, %192
  %206 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %207 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %205, %187, %112, %86, %39
  %211 = load i32*, i32** %9, align 8
  %212 = call i32 @kfree(i32* %211)
  store i32* null, i32** %3, align 8
  br label %213

213:                                              ; preds = %210, %190, %72, %28
  %214 = load i32*, i32** %3, align 8
  ret i32* %214
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @drm_do_probe_ddc_edid(%struct.i2c_adapter*, i32*, i32, i32) #1

declare dso_local i64 @drm_edid_block_valid(i32*, i32, i32) #1

declare dso_local i64 @drm_edid_is_zero(i32*, i32) #1

declare dso_local i32* @krealloc(i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

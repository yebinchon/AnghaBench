; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_v_scale_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_calculate_v_scale_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.saa7146_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@hps_v_coeff_tab = common dso_local global %struct.TYPE_2__* null, align 8
@v_attenuation = common dso_local global i64* null, align 8
@MASK_W0 = common dso_local global i32 0, align 4
@MASK_B2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, i32, i32, i32, i32*, i32*)* @calculate_v_scale_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_v_scale_registers(%struct.saa7146_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %187

30:                                               ; preds = %6
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 2, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %14, align 4
  br label %40

40:                                               ; preds = %39, %34
  br label %63

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49, %45, %41
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 4, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 0, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 255, i32* %21, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 1024, %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sdiv i32 %72, %74
  %76 = sub nsw i32 %75, 1024
  store i32 %76, i32* %16, align 4
  br label %78

77:                                               ; preds = %66
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %77, %70
  store i32 0, i32* %20, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sdiv i32 %79, 16
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %16, align 4
  %83 = sdiv i32 %82, 64
  %84 = add nsw i32 %81, %83
  store i32 %84, i32* %18, align 4
  br label %154

85:                                               ; preds = %63
  store i32 1, i32* %15, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = mul nsw i32 10240, %89
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %90, %91
  %93 = add nsw i32 %92, 9
  %94 = sdiv i32 %93, 10
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 15
  %97 = sdiv i32 %96, 16
  store i32 %97, i32* %19, align 4
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 512
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  store i32 0, i32* %17, align 4
  br label %106

101:                                              ; preds = %85
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 1024, %103
  %105 = sdiv i32 %102, %104
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %101, %100
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hps_v_coeff_tab, align 8
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %108, 63
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %17, align 4
  br label %113

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 63, %112 ]
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %21, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hps_v_coeff_tab, align 8
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 63
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %17, align 4
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 63, %124 ]
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %131

131:                                              ; preds = %149, %125
  %132 = load i64*, i64** @v_attenuation, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = load i64*, i64** @v_attenuation, align 8
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %22, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp sge i64 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %152

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %23, align 4
  br label %131

152:                                              ; preds = %147, %131
  %153 = load i32, i32* %23, align 4
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %152, %78
  %155 = load i32, i32* %15, align 4
  %156 = shl i32 %155, 31
  %157 = load i32, i32* %16, align 4
  %158 = shl i32 %157, 21
  %159 = or i32 %156, %158
  %160 = load i32, i32* %17, align 4
  %161 = shl i32 %160, 15
  %162 = or i32 %159, %161
  %163 = load i32, i32* %18, align 4
  %164 = shl i32 %163, 8
  %165 = or i32 %162, %164
  %166 = load i32, i32* %19, align 4
  %167 = shl i32 %166, 1
  %168 = or i32 %165, %167
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* @MASK_W0, align 4
  %173 = load i32, i32* @MASK_B2, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = load i32*, i32** %13, align 8
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %20, align 4
  %180 = shl i32 %179, 16
  %181 = load i32, i32* %21, align 4
  %182 = shl i32 %181, 0
  %183 = or i32 %180, %182
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %183
  store i32 %186, i32* %184, align 4
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %154, %27
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

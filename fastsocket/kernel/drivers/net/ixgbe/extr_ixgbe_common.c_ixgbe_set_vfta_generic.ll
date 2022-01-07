; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_vfta_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_vfta_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_VT_CTL = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_VT_ENABLE = common dso_local global i32 0, align 4
@IXGBE_VLVF_VIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vfta_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 4095
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %21, i32* %5, align 4
  br label %202

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 5
  %25 = and i32 %24, 127
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 31
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @IXGBE_VFTA(i32 %31)
  %33 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %22
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %15, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %57

46:                                               ; preds = %22
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %12, align 4
  store i32 1, i32* %16, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %59 = load i32, i32* @IXGBE_VT_CTL, align 4
  %60 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @IXGBE_VT_CTL_VT_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %192

65:                                               ; preds = %57
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw* %66, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %5, align 4
  br label %202

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 32
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %81 = load i32, i32* %17, align 4
  %82 = mul nsw i32 %81, 2
  %83 = call i32 @IXGBE_VLVFB(i32 %82)
  %84 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %80, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 1, %85
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %90 = load i32, i32* %17, align 4
  %91 = mul nsw i32 %90, 2
  %92 = call i32 @IXGBE_VLVFB(i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %89, i32 %92, i32 %93)
  br label %114

95:                                               ; preds = %76
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 %98, 1
  %100 = call i32 @IXGBE_VLVFB(i32 %99)
  %101 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %96, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 32
  %104 = shl i32 1, %103
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %108 = load i32, i32* %17, align 4
  %109 = mul nsw i32 %108, 2
  %110 = add nsw i32 %109, 1
  %111 = call i32 @IXGBE_VLVFB(i32 %110)
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %107, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %95, %79
  br label %171

115:                                              ; preds = %73
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 32
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %120 = load i32, i32* %17, align 4
  %121 = mul nsw i32 %120, 2
  %122 = call i32 @IXGBE_VLVFB(i32 %121)
  %123 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %119, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %8, align 4
  %125 = shl i32 1, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %130 = load i32, i32* %17, align 4
  %131 = mul nsw i32 %130, 2
  %132 = call i32 @IXGBE_VLVFB(i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %129, i32 %132, i32 %133)
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 %136, 2
  %138 = add nsw i32 %137, 1
  %139 = call i32 @IXGBE_VLVFB(i32 %138)
  %140 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %135, i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %13, align 4
  br label %170

143:                                              ; preds = %115
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %145 = load i32, i32* %17, align 4
  %146 = mul nsw i32 %145, 2
  %147 = add nsw i32 %146, 1
  %148 = call i32 @IXGBE_VLVFB(i32 %147)
  %149 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %144, i32 %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %150, 32
  %152 = shl i32 1, %151
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %13, align 4
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %157 = load i32, i32* %17, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %158, 1
  %160 = call i32 @IXGBE_VLVFB(i32 %159)
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %156, i32 %160, i32 %161)
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %164 = load i32, i32* %17, align 4
  %165 = mul nsw i32 %164, 2
  %166 = call i32 @IXGBE_VLVFB(i32 %165)
  %167 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %163, i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %143, %118
  br label %171

171:                                              ; preds = %170, %114
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @IXGBE_VLVF(i32 %176)
  %178 = load i32, i32* @IXGBE_VLVF_VIEN, align 4
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %175, i32 %177, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %174
  store i32 0, i32* %16, align 4
  br label %185

185:                                              ; preds = %184, %174
  br label %191

186:                                              ; preds = %171
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @IXGBE_VLVF(i32 %188)
  %190 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %187, i32 %189, i32 0)
  br label %191

191:                                              ; preds = %186, %185
  br label %192

192:                                              ; preds = %191, %57
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @IXGBE_VFTA(i32 %197)
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %196, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %192
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %71, %20
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

declare dso_local i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VLVFB(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VLVF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

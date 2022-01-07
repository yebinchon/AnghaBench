; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vlvf_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vlvf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@e1000_82576 = common dso_local global i64 0, align 8
@E1000_VLVF_ARRAY_SIZE = common dso_local global i64 0, align 8
@E1000_VLVF_VLANID_ENABLE = common dso_local global i64 0, align 8
@E1000_VLVF_VLANID_MASK = common dso_local global i64 0, align 8
@E1000_VLVF_POOLSEL_SHIFT = common dso_local global i64 0, align 8
@E1000_VMOLR_RLPML_MASK = common dso_local global i64 0, align 8
@E1000_VLVF_POOLSEL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i64, i32, i64)* @igb_vlvf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_vlvf_set(%struct.igb_adapter* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.e1000_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 2
  store %struct.e1000_hw* %16, %struct.e1000_hw** %10, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %10, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_82576, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %234

24:                                               ; preds = %4
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %234

30:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @E1000_VLVF_ARRAY_SIZE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @E1000_VLVF(i64 %36)
  %38 = call i64 @rd32(i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @E1000_VLVF_VLANID_ENABLE, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @E1000_VLVF_VLANID_MASK, align 8
  %47 = and i64 %45, %46
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %31

54:                                               ; preds = %49, %31
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %161

57:                                               ; preds = %54
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @E1000_VLVF_ARRAY_SIZE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @E1000_VLVF_ARRAY_SIZE, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @E1000_VLVF(i64 %67)
  %69 = call i64 @rd32(i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @E1000_VLVF_VLANID_ENABLE, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %79

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %12, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %62

79:                                               ; preds = %74, %62
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @E1000_VLVF_ARRAY_SIZE, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %160

84:                                               ; preds = %80
  %85 = load i64, i64* @E1000_VLVF_POOLSEL_SHIFT, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %11, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @E1000_VLVF_VLANID_ENABLE, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %84
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %10, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @igb_vfta_set(%struct.e1000_hw* %98, i64 %99, i32 1)
  %101 = load i64, i64* @E1000_VLVF_VLANID_ENABLE, align 8
  %102 = load i64, i64* %11, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %97, %84
  %105 = load i64, i64* @E1000_VLVF_VLANID_MASK, align 8
  %106 = xor i64 %105, -1
  %107 = load i64, i64* %11, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %11, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @E1000_VLVF(i64 %112)
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @wr32(i32 %113, i64 %114)
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %118 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %234

122:                                              ; preds = %104
  %123 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %124 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %122
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @E1000_VMOLR(i64 %132)
  %134 = call i64 @rd32(i32 %133)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* @E1000_VMOLR_RLPML_MASK, align 8
  %137 = and i64 %135, %136
  store i64 %137, i64* %13, align 8
  %138 = load i64, i64* %13, align 8
  %139 = add nsw i64 %138, 4
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* @E1000_VMOLR_RLPML_MASK, align 8
  %141 = xor i64 %140, -1
  %142 = load i64, i64* %11, align 8
  %143 = and i64 %142, %141
  store i64 %143, i64* %11, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %11, align 8
  %146 = or i64 %145, %144
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @E1000_VMOLR(i64 %147)
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @wr32(i32 %148, i64 %149)
  br label %151

151:                                              ; preds = %131, %122
  %152 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %151, %80
  br label %233

161:                                              ; preds = %54
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* @E1000_VLVF_ARRAY_SIZE, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %232

165:                                              ; preds = %161
  %166 = load i64, i64* @E1000_VLVF_POOLSEL_SHIFT, align 8
  %167 = load i64, i64* %9, align 8
  %168 = add nsw i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = shl i32 1, %169
  %171 = xor i32 %170, -1
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %11, align 8
  %174 = and i64 %173, %172
  store i64 %174, i64* %11, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load i64, i64* @E1000_VLVF_POOLSEL_MASK, align 8
  %177 = and i64 %175, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %165
  store i64 0, i64* %11, align 8
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %10, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @igb_vfta_set(%struct.e1000_hw* %180, i64 %181, i32 0)
  br label %183

183:                                              ; preds = %179, %165
  %184 = load i64, i64* %12, align 8
  %185 = call i32 @E1000_VLVF(i64 %184)
  %186 = load i64, i64* %11, align 8
  %187 = call i32 @wr32(i32 %185, i64 %186)
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %190 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %234

194:                                              ; preds = %183
  %195 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %196 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %195, i32 0, i32 1
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %204 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %203, i32 0, i32 1
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i64, i64* %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %231, label %211

211:                                              ; preds = %194
  %212 = load i64, i64* %9, align 8
  %213 = call i32 @E1000_VMOLR(i64 %212)
  %214 = call i64 @rd32(i32 %213)
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* %11, align 8
  %216 = load i64, i64* @E1000_VMOLR_RLPML_MASK, align 8
  %217 = and i64 %215, %216
  store i64 %217, i64* %14, align 8
  %218 = load i64, i64* %14, align 8
  %219 = sub nsw i64 %218, 4
  store i64 %219, i64* %14, align 8
  %220 = load i64, i64* @E1000_VMOLR_RLPML_MASK, align 8
  %221 = xor i64 %220, -1
  %222 = load i64, i64* %11, align 8
  %223 = and i64 %222, %221
  store i64 %223, i64* %11, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load i64, i64* %11, align 8
  %226 = or i64 %225, %224
  store i64 %226, i64* %11, align 8
  %227 = load i64, i64* %9, align 8
  %228 = call i32 @E1000_VMOLR(i64 %227)
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @wr32(i32 %228, i64 %229)
  br label %231

231:                                              ; preds = %211, %194
  br label %232

232:                                              ; preds = %231, %161
  br label %233

233:                                              ; preds = %232, %160
  store i32 0, i32* %5, align 4
  br label %234

234:                                              ; preds = %233, %193, %121, %29, %23
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @E1000_VLVF(i64) #1

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @E1000_VMOLR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

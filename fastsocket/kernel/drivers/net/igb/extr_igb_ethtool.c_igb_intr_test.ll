; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_intr_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.net_device*, %struct.e1000_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@igb_test_intr = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICS = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*)* @igb_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_intr_test(%struct.igb_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 5
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @igb_test_intr, align 4
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %40 = call i64 @request_irq(i32 %34, i32 %35, i32 0, i32 %38, %struct.igb_adapter* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  store i32 1, i32* %43, align 4
  store i32 -1, i32* %3, align 4
  br label %227

44:                                               ; preds = %28
  br label %90

45:                                               ; preds = %2
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @igb_test_intr, align 4
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %59 = call i64 @request_irq(i32 %53, i32 %54, i32 0, i32 %57, %struct.igb_adapter* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32*, i32** %5, align 8
  store i32 1, i32* %62, align 4
  store i32 -1, i32* %3, align 4
  br label %227

63:                                               ; preds = %52
  br label %89

64:                                               ; preds = %45
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @igb_test_intr, align 4
  %67 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %72 = call i64 @request_irq(i32 %65, i32 %66, i32 %67, i32 %70, %struct.igb_adapter* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %88

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @igb_test_intr, align 4
  %78 = load i32, i32* @IRQF_SHARED, align 4
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %83 = call i64 @request_irq(i32 %76, i32 %77, i32 %78, i32 %81, %struct.igb_adapter* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32*, i32** %5, align 8
  store i32 1, i32* %86, align 4
  store i32 -1, i32* %3, align 4
  br label %227

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %63
  br label %90

90:                                               ; preds = %89, %44
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @E1000_IMC, align 4
  %101 = call i32 @wr32(i32 %100, i32 -1)
  %102 = call i32 (...) @wrfl()
  %103 = call i32 @msleep(i32 10)
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %112 [
    i32 134, label %108
    i32 133, label %109
    i32 132, label %110
    i32 129, label %111
    i32 128, label %111
    i32 131, label %111
    i32 130, label %111
  ]

108:                                              ; preds = %90
  store i32 938770141, i32* %9, align 4
  br label %113

109:                                              ; preds = %90
  store i32 2010446845, i32* %9, align 4
  br label %113

110:                                              ; preds = %90
  store i32 2010971861, i32* %9, align 4
  br label %113

111:                                              ; preds = %90, %90, %90, %90
  store i32 2010971861, i32* %9, align 4
  br label %113

112:                                              ; preds = %90
  store i32 2147483647, i32* %9, align 4
  br label %113

113:                                              ; preds = %112, %111, %110, %109, %108
  br label %114

114:                                              ; preds = %199, %113
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 31
  br i1 %116, label %117, label %202

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = shl i32 1, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  br label %199

125:                                              ; preds = %117
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %125
  %129 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %130 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* @E1000_ICR, align 4
  %132 = call i32 @wr32(i32 %131, i32 -1)
  %133 = load i32, i32* @E1000_IMC, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @wr32(i32 %133, i32 %134)
  %136 = load i32, i32* @E1000_ICS, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @wr32(i32 %136, i32 %137)
  %139 = call i32 (...) @wrfl()
  %140 = call i32 @msleep(i32 10)
  %141 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %128
  %148 = load i32*, i32** %5, align 8
  store i32 3, i32* %148, align 4
  br label %202

149:                                              ; preds = %128
  br label %150

150:                                              ; preds = %149, %125
  %151 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %152 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* @E1000_ICR, align 4
  %154 = call i32 @wr32(i32 %153, i32 -1)
  %155 = load i32, i32* @E1000_IMS, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @wr32(i32 %155, i32 %156)
  %158 = load i32, i32* @E1000_ICS, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @wr32(i32 %158, i32 %159)
  %161 = call i32 (...) @wrfl()
  %162 = call i32 @msleep(i32 10)
  %163 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %164 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %150
  %170 = load i32*, i32** %5, align 8
  store i32 4, i32* %170, align 4
  br label %202

171:                                              ; preds = %150
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %198, label %174

174:                                              ; preds = %171
  %175 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %176 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  %177 = load i32, i32* @E1000_ICR, align 4
  %178 = call i32 @wr32(i32 %177, i32 -1)
  %179 = load i32, i32* @E1000_IMC, align 4
  %180 = load i32, i32* %8, align 4
  %181 = xor i32 %180, -1
  %182 = call i32 @wr32(i32 %179, i32 %181)
  %183 = load i32, i32* @E1000_ICS, align 4
  %184 = load i32, i32* %8, align 4
  %185 = xor i32 %184, -1
  %186 = call i32 @wr32(i32 %183, i32 %185)
  %187 = call i32 (...) @wrfl()
  %188 = call i32 @msleep(i32 10)
  %189 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %190 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %174
  %196 = load i32*, i32** %5, align 8
  store i32 5, i32* %196, align 4
  br label %202

197:                                              ; preds = %174
  br label %198

198:                                              ; preds = %197, %171
  br label %199

199:                                              ; preds = %198, %124
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %114

202:                                              ; preds = %195, %169, %147, %114
  %203 = load i32, i32* @E1000_IMC, align 4
  %204 = call i32 @wr32(i32 %203, i32 -1)
  %205 = call i32 (...) @wrfl()
  %206 = call i32 @msleep(i32 10)
  %207 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %208 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %207, i32 0, i32 2
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = icmp ne %struct.TYPE_6__* %209, null
  br i1 %210, label %211, label %220

211:                                              ; preds = %202
  %212 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %213 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %212, i32 0, i32 2
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %219 = call i32 @free_irq(i32 %217, %struct.igb_adapter* %218)
  br label %224

220:                                              ; preds = %202
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %223 = call i32 @free_irq(i32 %221, %struct.igb_adapter* %222)
  br label %224

224:                                              ; preds = %220, %211
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %224, %85, %61, %42
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.igb_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @free_irq(i32, %struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_reg_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32 }

@STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@FLAG_IS_ICH = common dso_local global i32 0, align 4
@E1000_FCAL = common dso_local global i32 0, align 4
@E1000_FCAH = common dso_local global i32 0, align 4
@E1000_FCT = common dso_local global i32 0, align 4
@E1000_VET = common dso_local global i32 0, align 4
@E1000_RDTR = common dso_local global i32 0, align 4
@E1000_FCRTH = common dso_local global i32 0, align 4
@E1000_FCTTV = common dso_local global i32 0, align 4
@E1000_TIPG = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TXCW = common dso_local global i32 0, align 4
@E1000_TIDV = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_MASK = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_SHIFT = common dso_local global i32 0, align 4
@E1000_RA = common dso_local global i32 0, align 4
@E1000_MTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reg_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.e1000_mac_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 1
  store %struct.e1000_hw* %16, %struct.e1000_hw** %6, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  store %struct.e1000_mac_info* %19, %struct.e1000_mac_info** %7, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 133, label %23
    i32 132, label %23
    i32 134, label %23
  ]

23:                                               ; preds = %2, %2, %2
  store i32 2147480575, i32* %12, align 4
  br label %25

24:                                               ; preds = %2
  store i32 2147479603, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* @STATUS, align 4
  %27 = call i32 @er32(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @STATUS, align 4
  %29 = call i32 @er32(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @STATUS, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  %35 = load i32, i32* @STATUS, align 4
  %36 = call i32 @er32(i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @e_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  store i32 1, i32* %46, align 4
  store i32 1, i32* %3, align 4
  br label %199

47:                                               ; preds = %25
  %48 = load i32, i32* @STATUS, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ew32(i32 %48, i32 %49)
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FLAG_IS_ICH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @E1000_FCAL, align 4
  %59 = call i32 @REG_PATTERN_TEST(i32 %58, i32 -1, i32 -1)
  %60 = load i32, i32* @E1000_FCAH, align 4
  %61 = call i32 @REG_PATTERN_TEST(i32 %60, i32 65535, i32 -1)
  %62 = load i32, i32* @E1000_FCT, align 4
  %63 = call i32 @REG_PATTERN_TEST(i32 %62, i32 65535, i32 -1)
  %64 = load i32, i32* @E1000_VET, align 4
  %65 = call i32 @REG_PATTERN_TEST(i32 %64, i32 65535, i32 -1)
  br label %66

66:                                               ; preds = %57, %47
  %67 = load i32, i32* @E1000_RDTR, align 4
  %68 = call i32 @REG_PATTERN_TEST(i32 %67, i32 65535, i32 -1)
  %69 = call i32 @E1000_RDBAH(i32 0)
  %70 = call i32 @REG_PATTERN_TEST(i32 %69, i32 -1, i32 -1)
  %71 = call i32 @E1000_RDLEN(i32 0)
  %72 = call i32 @REG_PATTERN_TEST(i32 %71, i32 1048448, i32 1048575)
  %73 = call i32 @E1000_RDH(i32 0)
  %74 = call i32 @REG_PATTERN_TEST(i32 %73, i32 65535, i32 65535)
  %75 = call i32 @E1000_RDT(i32 0)
  %76 = call i32 @REG_PATTERN_TEST(i32 %75, i32 65535, i32 65535)
  %77 = load i32, i32* @E1000_FCRTH, align 4
  %78 = call i32 @REG_PATTERN_TEST(i32 %77, i32 65528, i32 65528)
  %79 = load i32, i32* @E1000_FCTTV, align 4
  %80 = call i32 @REG_PATTERN_TEST(i32 %79, i32 65535, i32 65535)
  %81 = load i32, i32* @E1000_TIPG, align 4
  %82 = call i32 @REG_PATTERN_TEST(i32 %81, i32 1073741823, i32 1073741823)
  %83 = call i32 @E1000_TDBAH(i32 0)
  %84 = call i32 @REG_PATTERN_TEST(i32 %83, i32 -1, i32 -1)
  %85 = call i32 @E1000_TDLEN(i32 0)
  %86 = call i32 @REG_PATTERN_TEST(i32 %85, i32 1048448, i32 1048575)
  %87 = load i32, i32* @E1000_RCTL, align 4
  %88 = call i32 @REG_SET_AND_CHECK(i32 %87, i32 -1, i32 0)
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FLAG_IS_ICH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 113488702, i32 115323902
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @E1000_RCTL, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @REG_SET_AND_CHECK(i32 %97, i32 %98, i32 4194299)
  %100 = load i32, i32* @E1000_TCTL, align 4
  %101 = call i32 @REG_SET_AND_CHECK(i32 %100, i32 -1, i32 0)
  %102 = load i32, i32* @E1000_RCTL, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @REG_SET_AND_CHECK(i32 %102, i32 %103, i32 -1)
  %105 = call i32 @E1000_RDBAL(i32 0)
  %106 = call i32 @REG_PATTERN_TEST(i32 %105, i32 -16, i32 -1)
  %107 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @FLAG_IS_ICH, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %66
  %114 = load i32, i32* @E1000_TXCW, align 4
  %115 = call i32 @REG_PATTERN_TEST(i32 %114, i32 -1073676289, i32 65535)
  br label %116

116:                                              ; preds = %113, %66
  %117 = call i32 @E1000_TDBAL(i32 0)
  %118 = call i32 @REG_PATTERN_TEST(i32 %117, i32 -16, i32 -1)
  %119 = load i32, i32* @E1000_TIDV, align 4
  %120 = call i32 @REG_PATTERN_TEST(i32 %119, i32 65535, i32 65535)
  store i32 -2147221505, i32* %13, align 4
  %121 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %122 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %127 [
    i32 131, label %124
    i32 128, label %124
    i32 130, label %124
    i32 129, label %124
  ]

124:                                              ; preds = %116, %116, %116, %116
  %125 = load i32, i32* %13, align 4
  %126 = or i32 %125, 262144
  store i32 %126, i32* %13, align 4
  br label %128

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %124
  %129 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %130 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 129
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32, i32* @FWSM, align 4
  %135 = call i32 @er32(i32 %134)
  %136 = load i32, i32* @E1000_FWSM_WLOCK_MAC_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @E1000_FWSM_WLOCK_MAC_SHIFT, align 4
  %139 = ashr i32 %137, %138
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %133, %128
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %180, %140
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %144 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %183

147:                                              ; preds = %141
  %148 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %149 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %152, label %173

152:                                              ; preds = %147
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %152
  br label %180

163:                                              ; preds = %158, %155
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 10
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %13, align 4
  %168 = or i32 %167, 1073741824
  store i32 %168, i32* %13, align 4
  br label %172

169:                                              ; preds = %163
  %170 = load i32, i32* %13, align 4
  %171 = and i32 %170, -1073741825
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %147
  %174 = load i32, i32* @E1000_RA, align 4
  %175 = load i32, i32* %11, align 4
  %176 = shl i32 %175, 1
  %177 = add nsw i32 %176, 1
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @REG_PATTERN_TEST_ARRAY(i32 %174, i32 %177, i32 %178, i32 -1)
  br label %180

180:                                              ; preds = %173, %162
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %141

183:                                              ; preds = %141
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %194, %183
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %187 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load i32, i32* @E1000_MTA, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @REG_PATTERN_TEST_ARRAY(i32 %191, i32 %192, i32 -1, i32 -1)
  br label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %184

197:                                              ; preds = %184
  %198 = load i32*, i32** %5, align 8
  store i32 0, i32* %198, align 4
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %197, %42
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e_err(i8*, i32, i32) #1

declare dso_local i32 @REG_PATTERN_TEST(i32, i32, i32) #1

declare dso_local i32 @E1000_RDBAH(i32) #1

declare dso_local i32 @E1000_RDLEN(i32) #1

declare dso_local i32 @E1000_RDH(i32) #1

declare dso_local i32 @E1000_RDT(i32) #1

declare dso_local i32 @E1000_TDBAH(i32) #1

declare dso_local i32 @E1000_TDLEN(i32) #1

declare dso_local i32 @REG_SET_AND_CHECK(i32, i32, i32) #1

declare dso_local i32 @E1000_RDBAL(i32) #1

declare dso_local i32 @E1000_TDBAL(i32) #1

declare dso_local i32 @REG_PATTERN_TEST_ARRAY(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

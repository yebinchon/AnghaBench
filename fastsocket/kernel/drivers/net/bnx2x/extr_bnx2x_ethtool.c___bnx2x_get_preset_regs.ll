; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c___bnx2x_get_preset_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c___bnx2x_get_preset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wreg_addr = type { i64, i64, i64, i64*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.bnx2x = type { i32 }

@wreg_addr_e1 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e1h = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e2 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e3 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@wreg_addr_e3b0 = common dso_local global %struct.wreg_addr zeroinitializer, align 8
@IDLE_REGS_COUNT = common dso_local global i64 0, align 8
@idle_reg_addrs = common dso_local global %struct.TYPE_4__* null, align 8
@REGS_COUNT = common dso_local global i64 0, align 8
@reg_addrs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64*, i64)* @__bnx2x_get_preset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnx2x_get_preset_regs(%struct.bnx2x* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wreg_addr*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.wreg_addr* null, %struct.wreg_addr** %10, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = call i64 @CHIP_IS_E1(%struct.bnx2x* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.wreg_addr* @wreg_addr_e1, %struct.wreg_addr** %10, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.wreg_addr* @wreg_addr_e1h, %struct.wreg_addr** %10, align 8
  br label %38

20:                                               ; preds = %15
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = call i64 @CHIP_IS_E2(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.wreg_addr* @wreg_addr_e2, %struct.wreg_addr** %10, align 8
  br label %37

25:                                               ; preds = %20
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = call i64 @CHIP_IS_E3A0(%struct.bnx2x* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.wreg_addr* @wreg_addr_e3, %struct.wreg_addr** %10, align 8
  br label %36

30:                                               ; preds = %25
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.wreg_addr* @wreg_addr_e3b0, %struct.wreg_addr** %10, align 8
  br label %35

35:                                               ; preds = %34, %30
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %19
  br label %39

39:                                               ; preds = %38, %14
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %88, %39
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @IDLE_REGS_COUNT, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %40
  %45 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = call i64 @bnx2x_is_reg_in_chip(%struct.bnx2x* %45, %struct.TYPE_4__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %44
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @IS_REG_IN_PRESET(i32 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %51
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @idle_reg_addrs, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = mul i64 %76, 4
  %78 = add i64 %75, %77
  %79 = call i8* @REG_RD(%struct.bnx2x* %70, i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load i64*, i64** %5, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  br label %83

83:                                               ; preds = %69
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %61

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86, %51, %44
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %40

91:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @REGS_COUNT, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = call i64 @bnx2x_is_reg_in_chip(%struct.bnx2x* %97, %struct.TYPE_4__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %96
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @IS_REG_IN_PRESET(i32 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %103
  store i64 0, i64* %8, align 8
  br label %113

113:                                              ; preds = %135, %112
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %114, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %113
  %122 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reg_addrs, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = mul i64 %128, 4
  %130 = add i64 %127, %129
  %131 = call i8* @REG_RD(%struct.bnx2x* %122, i64 %130)
  %132 = ptrtoint i8* %131 to i64
  %133 = load i64*, i64** %5, align 8
  %134 = getelementptr inbounds i64, i64* %133, i32 1
  store i64* %134, i64** %5, align 8
  store i64 %132, i64* %133, align 8
  br label %135

135:                                              ; preds = %121
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %8, align 8
  br label %113

138:                                              ; preds = %113
  br label %139

139:                                              ; preds = %138, %103, %96
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %7, align 8
  br label %92

143:                                              ; preds = %92
  %144 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %145 = load %struct.wreg_addr*, %struct.wreg_addr** %10, align 8
  %146 = call i64 @bnx2x_is_wreg_in_chip(%struct.bnx2x* %144, %struct.wreg_addr* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %202

148:                                              ; preds = %143
  %149 = load %struct.wreg_addr*, %struct.wreg_addr** %10, align 8
  %150 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i64 @IS_REG_IN_PRESET(i32 %151, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %202

155:                                              ; preds = %148
  store i64 0, i64* %7, align 8
  br label %156

156:                                              ; preds = %198, %155
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.wreg_addr*, %struct.wreg_addr** %10, align 8
  %159 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %157, %160
  br i1 %161, label %162, label %201

162:                                              ; preds = %156
  %163 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %164 = load %struct.wreg_addr*, %struct.wreg_addr** %10, align 8
  %165 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = mul i64 %167, 4
  %169 = add i64 %166, %168
  %170 = call i8* @REG_RD(%struct.bnx2x* %163, i64 %169)
  %171 = ptrtoint i8* %170 to i64
  %172 = load i64*, i64** %5, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %5, align 8
  store i64 %171, i64* %172, align 8
  store i64 0, i64* %8, align 8
  br label %174

174:                                              ; preds = %194, %162
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.wreg_addr*, %struct.wreg_addr** %10, align 8
  %177 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ult i64 %175, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = load %struct.wreg_addr*, %struct.wreg_addr** %10, align 8
  %182 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %181, i32 0, i32 3
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %9, align 8
  %185 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %8, align 8
  %188 = mul i64 %187, 4
  %189 = add i64 %186, %188
  %190 = call i8* @REG_RD(%struct.bnx2x* %185, i64 %189)
  %191 = ptrtoint i8* %190 to i64
  %192 = load i64*, i64** %5, align 8
  %193 = getelementptr inbounds i64, i64* %192, i32 1
  store i64* %193, i64** %5, align 8
  store i64 %191, i64* %192, align 8
  br label %194

194:                                              ; preds = %180
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  br label %174

197:                                              ; preds = %174
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %7, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %7, align 8
  br label %156

201:                                              ; preds = %156
  br label %202

202:                                              ; preds = %201, %148, %143
  %203 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %204 = call i64 @CHIP_IS_E2(%struct.bnx2x* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %208 = call i64 @CHIP_IS_E3(%struct.bnx2x* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206, %202
  %211 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %212 = load i64*, i64** %5, align 8
  %213 = load i64, i64* %6, align 8
  %214 = call i32 @bnx2x_read_pages_regs(%struct.bnx2x* %211, i64* %212, i64 %213)
  br label %215

215:                                              ; preds = %210, %206
  ret i32 0
}

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_is_reg_in_chip(%struct.bnx2x*, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_REG_IN_PRESET(i32, i64) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i64 @bnx2x_is_wreg_in_chip(%struct.bnx2x*, %struct.wreg_addr*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_pages_regs(%struct.bnx2x*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_phy_start_neg_ex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_phy_start_neg_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PHY_AGERE_ET1011C = common dso_local global i64 0, align 8
@PORT_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@PHY_GIG_CONTROL = common dso_local global i32 0, align 4
@PHYAddr = common dso_local global i32* null, align 8
@PHY_GIG_ALL_PARAMS = common dso_local global i32 0, align 4
@PORT_CONFIG_1000MB_SPEED = common dso_local global i32 0, align 4
@PORT_CONFIG_FULL_DUPLEX_ENABLED = common dso_local global i32 0, align 4
@PHY_GIG_ADV_1000F = common dso_local global i32 0, align 4
@PHY_GIG_ADV_1000H = common dso_local global i32 0, align 4
@PHY_NEG_ADVER = common dso_local global i32 0, align 4
@PHY_NEG_ALL_PARAMS = common dso_local global i32 0, align 4
@PORT_CONFIG_SYM_PAUSE_ENABLED = common dso_local global i32 0, align 4
@PHY_NEG_ASY_PAUSE = common dso_local global i32 0, align 4
@PHY_NEG_SYM_PAUSE = common dso_local global i32 0, align 4
@PORT_CONFIG_100MB_SPEED = common dso_local global i32 0, align 4
@PHY_NEG_ADV_100F = common dso_local global i32 0, align 4
@PORT_CONFIG_10MB_SPEED = common dso_local global i32 0, align 4
@PHY_NEG_ADV_10F = common dso_local global i32 0, align 4
@PORT_CONFIG_HALF_DUPLEX_ENABLED = common dso_local global i32 0, align 4
@PHY_NEG_ADV_100H = common dso_local global i32 0, align 4
@PHY_NEG_ADV_10H = common dso_local global i32 0, align 4
@CONTROL_REG = common dso_local global i32 0, align 4
@PHY_CTRL_RESTART_NEG = common dso_local global i32 0, align 4
@PHY_CTRL_AUTO_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_phy_start_neg_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_phy_start_neg_ex(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %5 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_AGERE_ET1011C, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %12 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %11, i32 19, i32 0)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @PORT_CONFIG_DEFAULT, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %37 = load i32, i32* @PHY_GIG_CONTROL, align 4
  %38 = load i32*, i32** @PHYAddr, align 8
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ql_mii_read_reg_ex(%struct.ql3_adapter* %36, i32 %37, i32* %3, i32 %43)
  %45 = load i32, i32* @PHY_GIG_ALL_PARAMS, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PORT_CONFIG_1000MB_SPEED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %35
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PORT_CONFIG_FULL_DUPLEX_ENABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @PHY_GIG_ADV_1000F, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @PHY_GIG_ADV_1000H, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %69 = load i32, i32* @PHY_GIG_CONTROL, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32*, i32** @PHYAddr, align 8
  %72 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %68, i32 %69, i32 %70, i32 %76)
  %78 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %79 = load i32, i32* @PHY_NEG_ADVER, align 4
  %80 = load i32*, i32** @PHYAddr, align 8
  %81 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ql_mii_read_reg_ex(%struct.ql3_adapter* %78, i32 %79, i32* %3, i32 %85)
  %87 = load i32, i32* @PHY_NEG_ALL_PARAMS, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @PORT_CONFIG_SYM_PAUSE_ENABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %67
  %96 = load i32, i32* @PHY_NEG_ASY_PAUSE, align 4
  %97 = load i32, i32* @PHY_NEG_SYM_PAUSE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %67
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @PORT_CONFIG_FULL_DUPLEX_ENABLED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @PORT_CONFIG_100MB_SPEED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @PHY_NEG_ADV_100F, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @PORT_CONFIG_10MB_SPEED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @PHY_NEG_ADV_10F, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %115
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @PORT_CONFIG_HALF_DUPLEX_ENABLED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @PORT_CONFIG_100MB_SPEED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @PHY_NEG_ADV_100H, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @PORT_CONFIG_10MB_SPEED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @PHY_NEG_ADV_10H, align 4
  %146 = load i32, i32* %3, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %139
  br label %149

149:                                              ; preds = %148, %125
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @PORT_CONFIG_1000MB_SPEED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %3, align 4
  %156 = or i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %159 = load i32, i32* @PHY_NEG_ADVER, align 4
  %160 = load i32, i32* %3, align 4
  %161 = load i32*, i32** @PHYAddr, align 8
  %162 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %163 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %158, i32 %159, i32 %160, i32 %166)
  %168 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %169 = load i32, i32* @CONTROL_REG, align 4
  %170 = load i32*, i32** @PHYAddr, align 8
  %171 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ql_mii_read_reg_ex(%struct.ql3_adapter* %168, i32 %169, i32* %3, i32 %175)
  %177 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %178 = load i32, i32* @CONTROL_REG, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @PHY_CTRL_RESTART_NEG, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @PHY_CTRL_AUTO_NEG, align 4
  %183 = or i32 %181, %182
  %184 = load i32*, i32** @PHYAddr, align 8
  %185 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %186 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %177, i32 %178, i32 %183, i32 %189)
  ret void
}

declare dso_local i32 @ql_mii_write_reg(%struct.ql3_adapter*, i32, i32) #1

declare dso_local i32 @ql_mii_read_reg_ex(%struct.ql3_adapter*, i32, i32*, i32) #1

declare dso_local i32 @ql_mii_write_reg_ex(%struct.ql3_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

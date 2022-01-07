; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_slow_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_slow_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PL_INT_CAUSE = common dso_local global i32 0, align 4
@GLBL_INTR_MASK = common dso_local global i32 0, align 4
@CIM = common dso_local global i32 0, align 4
@MPS = common dso_local global i32 0, align 4
@NCSI = common dso_local global i32 0, align 4
@PL = common dso_local global i32 0, align 4
@SMB = common dso_local global i32 0, align 4
@XGMAC0 = common dso_local global i32 0, align 4
@XGMAC1 = common dso_local global i32 0, align 4
@XGMAC_KR0 = common dso_local global i32 0, align 4
@XGMAC_KR1 = common dso_local global i32 0, align 4
@PCIE = common dso_local global i32 0, align 4
@MC = common dso_local global i32 0, align 4
@MEM_MC = common dso_local global i32 0, align 4
@EDC0 = common dso_local global i32 0, align 4
@MEM_EDC0 = common dso_local global i32 0, align 4
@EDC1 = common dso_local global i32 0, align 4
@MEM_EDC1 = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@MA = common dso_local global i32 0, align 4
@PM_TX = common dso_local global i32 0, align 4
@PM_RX = common dso_local global i32 0, align 4
@ULP_RX = common dso_local global i32 0, align 4
@CPL_SWITCH = common dso_local global i32 0, align 4
@SGE = common dso_local global i32 0, align 4
@ULP_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_slow_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load i32, i32* @PL_INT_CAUSE, align 4
  %7 = call i32 @t4_read_reg(%struct.adapter* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GLBL_INTR_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %202

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CIM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = call i32 @cim_intr_handler(%struct.adapter* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MPS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = call i32 @mps_intr_handler(%struct.adapter* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NCSI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = call i32 @ncsi_intr_handler(%struct.adapter* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = call i32 @pl_intr_handler(%struct.adapter* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SMB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = call i32 @smb_intr_handler(%struct.adapter* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @XGMAC0, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = call i32 @xgmac_intr_handler(%struct.adapter* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @XGMAC1, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = call i32 @xgmac_intr_handler(%struct.adapter* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @XGMAC_KR0, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = call i32 @xgmac_intr_handler(%struct.adapter* %75, i32 2)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @XGMAC_KR1, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = call i32 @xgmac_intr_handler(%struct.adapter* %83, i32 3)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @PCIE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = call i32 @pcie_intr_handler(%struct.adapter* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @MC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = load i32, i32* @MEM_MC, align 4
  %101 = call i32 @mem_intr_handler(%struct.adapter* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @EDC0, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.adapter*, %struct.adapter** %3, align 8
  %109 = load i32, i32* @MEM_EDC0, align 4
  %110 = call i32 @mem_intr_handler(%struct.adapter* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @EDC1, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = load i32, i32* @MEM_EDC1, align 4
  %119 = call i32 @mem_intr_handler(%struct.adapter* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @LE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = call i32 @le_intr_handler(%struct.adapter* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @TP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.adapter*, %struct.adapter** %3, align 8
  %135 = call i32 @tp_intr_handler(%struct.adapter* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @MA, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.adapter*, %struct.adapter** %3, align 8
  %143 = call i32 @ma_intr_handler(%struct.adapter* %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @PM_TX, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.adapter*, %struct.adapter** %3, align 8
  %151 = call i32 @pmtx_intr_handler(%struct.adapter* %150)
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @PM_RX, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.adapter*, %struct.adapter** %3, align 8
  %159 = call i32 @pmrx_intr_handler(%struct.adapter* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @ULP_RX, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.adapter*, %struct.adapter** %3, align 8
  %167 = call i32 @ulprx_intr_handler(%struct.adapter* %166)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @CPL_SWITCH, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.adapter*, %struct.adapter** %3, align 8
  %175 = call i32 @cplsw_intr_handler(%struct.adapter* %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @SGE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.adapter*, %struct.adapter** %3, align 8
  %183 = call i32 @sge_intr_handler(%struct.adapter* %182)
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @ULP_TX, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.adapter*, %struct.adapter** %3, align 8
  %191 = call i32 @ulptx_intr_handler(%struct.adapter* %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load %struct.adapter*, %struct.adapter** %3, align 8
  %194 = load i32, i32* @PL_INT_CAUSE, align 4
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @GLBL_INTR_MASK, align 4
  %197 = and i32 %195, %196
  %198 = call i32 @t4_write_reg(%struct.adapter* %193, i32 %194, i32 %197)
  %199 = load %struct.adapter*, %struct.adapter** %3, align 8
  %200 = load i32, i32* @PL_INT_CAUSE, align 4
  %201 = call i32 @t4_read_reg(%struct.adapter* %199, i32 %200)
  store i32 1, i32* %2, align 4
  br label %202

202:                                              ; preds = %192, %12
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @cim_intr_handler(%struct.adapter*) #1

declare dso_local i32 @mps_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ncsi_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pl_intr_handler(%struct.adapter*) #1

declare dso_local i32 @smb_intr_handler(%struct.adapter*) #1

declare dso_local i32 @xgmac_intr_handler(%struct.adapter*, i32) #1

declare dso_local i32 @pcie_intr_handler(%struct.adapter*) #1

declare dso_local i32 @mem_intr_handler(%struct.adapter*, i32) #1

declare dso_local i32 @le_intr_handler(%struct.adapter*) #1

declare dso_local i32 @tp_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ma_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pmtx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @pmrx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ulprx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @cplsw_intr_handler(%struct.adapter*) #1

declare dso_local i32 @sge_intr_handler(%struct.adapter*) #1

declare dso_local i32 @ulptx_intr_handler(%struct.adapter*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

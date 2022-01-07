; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sibyte.c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sibyte.c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_sibyte_data* }
%struct.i2c_algo_sibyte_data = type { i32 }
%union.i2c_smbus_data = type { i32 }

@R_SMB_STATUS = common dso_local global i32 0, align 4
@M_SMB_BUSY = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@M_SMB_QDATA = common dso_local global i32 0, align 4
@V_SMB_TT_QUICKCMD = common dso_local global i32 0, align 4
@R_SMB_START = common dso_local global i32 0, align 4
@V_SMB_TT_RD1BYTE = common dso_local global i32 0, align 4
@R_SMB_CMD = common dso_local global i32 0, align 4
@V_SMB_TT_WR1BYTE = common dso_local global i32 0, align 4
@V_SMB_TT_CMD_RD1BYTE = common dso_local global i32 0, align 4
@R_SMB_DATA = common dso_local global i32 0, align 4
@V_SMB_TT_WR2BYTE = common dso_local global i32 0, align 4
@V_SMB_TT_CMD_RD2BYTE = common dso_local global i32 0, align 4
@M_SMB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.i2c_algo_sibyte_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 0
  %21 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %20, align 8
  store %struct.i2c_algo_sibyte_data* %21, %struct.i2c_algo_sibyte_data** %16, align 8
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %30, %7
  %23 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %24 = load i32, i32* @R_SMB_STATUS, align 4
  %25 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %23, i32 %24)
  %26 = call i32 @csr_in32(i32 %25)
  %27 = load i32, i32* @M_SMB_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %22

31:                                               ; preds = %22
  %32 = load i32, i32* %14, align 4
  switch i32 %32, label %172 [
    i32 129, label %33
    i32 131, label %53
    i32 130, label %84
    i32 128, label %123
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @V_SMB_ADDR(i32 %34)
  %36 = load i8, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @I2C_SMBUS_READ, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @M_SMB_QDATA, align 4
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %35, %45
  %47 = load i32, i32* @V_SMB_TT_QUICKCMD, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %50 = load i32, i32* @R_SMB_START, align 4
  %51 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %49, i32 %50)
  %52 = call i32 @csr_out32(i32 %48, i32 %51)
  br label %173

53:                                               ; preds = %31
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @I2C_SMBUS_READ, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @V_SMB_ADDR(i32 %60)
  %62 = load i32, i32* @V_SMB_TT_RD1BYTE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %65 = load i32, i32* @R_SMB_START, align 4
  %66 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %64, i32 %65)
  %67 = call i32 @csr_out32(i32 %63, i32 %66)
  store i32 1, i32* %17, align 4
  br label %83

68:                                               ; preds = %53
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @V_SMB_CMD(i32 %69)
  %71 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %72 = load i32, i32* @R_SMB_CMD, align 4
  %73 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %71, i32 %72)
  %74 = call i32 @csr_out32(i32 %70, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @V_SMB_ADDR(i32 %75)
  %77 = load i32, i32* @V_SMB_TT_WR1BYTE, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %80 = load i32, i32* @R_SMB_START, align 4
  %81 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %79, i32 %80)
  %82 = call i32 @csr_out32(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %68, %59
  br label %173

84:                                               ; preds = %31
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @V_SMB_CMD(i32 %85)
  %87 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %88 = load i32, i32* @R_SMB_CMD, align 4
  %89 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %87, i32 %88)
  %90 = call i32 @csr_out32(i32 %86, i32 %89)
  %91 = load i8, i8* %12, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* @I2C_SMBUS_READ, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @V_SMB_ADDR(i32 %97)
  %99 = load i32, i32* @V_SMB_TT_CMD_RD1BYTE, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %102 = load i32, i32* @R_SMB_START, align 4
  %103 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %101, i32 %102)
  %104 = call i32 @csr_out32(i32 %100, i32 %103)
  store i32 1, i32* %17, align 4
  br label %122

105:                                              ; preds = %84
  %106 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %107 = bitcast %union.i2c_smbus_data* %106 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @V_SMB_LB(i32 %108)
  %110 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %111 = load i32, i32* @R_SMB_DATA, align 4
  %112 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %110, i32 %111)
  %113 = call i32 @csr_out32(i32 %109, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @V_SMB_ADDR(i32 %114)
  %116 = load i32, i32* @V_SMB_TT_WR2BYTE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %119 = load i32, i32* @R_SMB_START, align 4
  %120 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %118, i32 %119)
  %121 = call i32 @csr_out32(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %105, %96
  br label %173

123:                                              ; preds = %31
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @V_SMB_CMD(i32 %124)
  %126 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %127 = load i32, i32* @R_SMB_CMD, align 4
  %128 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %126, i32 %127)
  %129 = call i32 @csr_out32(i32 %125, i32 %128)
  %130 = load i8, i8* %12, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* @I2C_SMBUS_READ, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %123
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @V_SMB_ADDR(i32 %136)
  %138 = load i32, i32* @V_SMB_TT_CMD_RD2BYTE, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %141 = load i32, i32* @R_SMB_START, align 4
  %142 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %140, i32 %141)
  %143 = call i32 @csr_out32(i32 %139, i32 %142)
  store i32 2, i32* %17, align 4
  br label %171

144:                                              ; preds = %123
  %145 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %146 = bitcast %union.i2c_smbus_data* %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 255
  %149 = call i32 @V_SMB_LB(i32 %148)
  %150 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %151 = load i32, i32* @R_SMB_DATA, align 4
  %152 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %150, i32 %151)
  %153 = call i32 @csr_out32(i32 %149, i32 %152)
  %154 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %155 = bitcast %union.i2c_smbus_data* %154 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 8
  %158 = call i32 @V_SMB_MB(i32 %157)
  %159 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %160 = load i32, i32* @R_SMB_DATA, align 4
  %161 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %159, i32 %160)
  %162 = call i32 @csr_out32(i32 %158, i32 %161)
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @V_SMB_ADDR(i32 %163)
  %165 = load i32, i32* @V_SMB_TT_WR2BYTE, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %168 = load i32, i32* @R_SMB_START, align 4
  %169 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %167, i32 %168)
  %170 = call i32 @csr_out32(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %144, %135
  br label %173

172:                                              ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %221

173:                                              ; preds = %171, %122, %83, %44
  br label %174

174:                                              ; preds = %182, %173
  %175 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %176 = load i32, i32* @R_SMB_STATUS, align 4
  %177 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %175, i32 %176)
  %178 = call i32 @csr_in32(i32 %177)
  %179 = load i32, i32* @M_SMB_BUSY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %174

183:                                              ; preds = %174
  %184 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %185 = load i32, i32* @R_SMB_STATUS, align 4
  %186 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %184, i32 %185)
  %187 = call i32 @csr_in32(i32 %186)
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* @M_SMB_ERROR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %183
  %193 = load i32, i32* @M_SMB_ERROR, align 4
  %194 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %195 = load i32, i32* @R_SMB_STATUS, align 4
  %196 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %194, i32 %195)
  %197 = call i32 @csr_out32(i32 %193, i32 %196)
  store i32 -1, i32* %8, align 4
  br label %221

198:                                              ; preds = %183
  %199 = load i32, i32* %17, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %203 = load i32, i32* @R_SMB_DATA, align 4
  %204 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %202, i32 %203)
  %205 = call i32 @csr_in32(i32 %204)
  %206 = and i32 %205, 255
  %207 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %208 = bitcast %union.i2c_smbus_data* %207 to i32*
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %201, %198
  %210 = load i32, i32* %17, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load %struct.i2c_algo_sibyte_data*, %struct.i2c_algo_sibyte_data** %16, align 8
  %214 = load i32, i32* @R_SMB_DATA, align 4
  %215 = call i32 @SMB_CSR(%struct.i2c_algo_sibyte_data* %213, i32 %214)
  %216 = call i32 @csr_in32(i32 %215)
  %217 = and i32 %216, 65535
  %218 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %219 = bitcast %union.i2c_smbus_data* %218 to i32*
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %212, %209
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %220, %192, %172
  %222 = load i32, i32* %8, align 4
  ret i32 %222
}

declare dso_local i32 @csr_in32(i32) #1

declare dso_local i32 @SMB_CSR(%struct.i2c_algo_sibyte_data*, i32) #1

declare dso_local i32 @csr_out32(i32, i32) #1

declare dso_local i32 @V_SMB_ADDR(i32) #1

declare dso_local i32 @V_SMB_CMD(i32) #1

declare dso_local i32 @V_SMB_LB(i32) #1

declare dso_local i32 @V_SMB_MB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

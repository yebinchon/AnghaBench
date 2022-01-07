; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_serdes_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_serdes_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.ql_mpi_coredump = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@XG_SERDES_XAUI_HSS_PCS_START = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_XAUI_PWR_DOWN = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_STS = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_XFI1_PWR_UP = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_XFI2_PWR_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.ql_mpi_coredump*)* @ql_get_serdes_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_serdes_regs(%struct.ql_adapter* %0, %struct.ql_mpi_coredump* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.ql_mpi_coredump*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.ql_mpi_coredump* %1, %struct.ql_mpi_coredump** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %21 = load i32, i32* @XG_SERDES_XAUI_HSS_PCS_START, align 4
  %22 = call i32 @ql_read_other_func_serdes_reg(%struct.ql_adapter* %20, i32 %21, i32* %12)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %36 = load i32, i32* @XG_SERDES_XAUI_HSS_PCS_START, align 4
  %37 = call i32 @ql_read_serdes_reg(%struct.ql_adapter* %35, i32 %36, i32* %12)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %81

50:                                               ; preds = %2
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %52 = load i32, i32* @XG_SERDES_XAUI_HSS_PCS_START, align 4
  %53 = call i32 @ql_read_other_func_serdes_reg(%struct.ql_adapter* %51, i32 %52, i32* %12)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %67 = load i32, i32* @XG_SERDES_XAUI_HSS_PCS_START, align 4
  %68 = call i32 @ql_read_serdes_reg(%struct.ql_adapter* %66, i32 %67, i32* %12)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %73
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %83 = load i32, i32* @XG_SERDES_ADDR_STS, align 4
  %84 = call i32 @ql_read_serdes_reg(%struct.ql_adapter* %82, i32 %83, i32* %12)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @XG_SERDES_ADDR_XFI1_PWR_UP, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @XG_SERDES_ADDR_XFI1_PWR_UP, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %7, align 4
  br label %102

101:                                              ; preds = %94
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @XG_SERDES_ADDR_XFI2_PWR_UP, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @XG_SERDES_ADDR_XFI2_PWR_UP, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %6, align 4
  br label %117

116:                                              ; preds = %109
  store i32 1, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %126 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %11, align 8
  %128 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %129 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %13, align 8
  br label %138

131:                                              ; preds = %118
  %132 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %133 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %11, align 8
  %135 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %136 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %13, align 8
  br label %138

138:                                              ; preds = %131, %124
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %150, %138
  %140 = load i32, i32* %10, align 4
  %141 = icmp ule i32 %140, 52
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %143, i32 %144, i32* %145, i32* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, 4
  store i32 %152, i32* %10, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %11, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %13, align 8
  br label %139

157:                                              ; preds = %139
  %158 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %165 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %11, align 8
  %167 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %168 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %13, align 8
  br label %177

170:                                              ; preds = %157
  %171 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %172 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %11, align 8
  %174 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %175 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %13, align 8
  br label %177

177:                                              ; preds = %170, %163
  store i32 2048, i32* %10, align 4
  br label %178

178:                                              ; preds = %189, %177
  %179 = load i32, i32* %10, align 4
  %180 = icmp ule i32 %179, 2176
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32*, i32** %11, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %182, i32 %183, i32* %184, i32* %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %10, align 4
  %191 = add i32 %190, 4
  store i32 %191, i32* %10, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %11, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %13, align 8
  br label %178

196:                                              ; preds = %178
  %197 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %198 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 1
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %204 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %11, align 8
  %206 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %207 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  store i32* %208, i32** %13, align 8
  br label %216

209:                                              ; preds = %196
  %210 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %211 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  store i32* %212, i32** %11, align 8
  %213 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %214 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  store i32* %215, i32** %13, align 8
  br label %216

216:                                              ; preds = %209, %202
  store i32 4096, i32* %10, align 4
  br label %217

217:                                              ; preds = %228, %216
  %218 = load i32, i32* %10, align 4
  %219 = icmp ule i32 %218, 4148
  br i1 %219, label %220, label %235

220:                                              ; preds = %217
  %221 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %222 = load i32, i32* %10, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %221, i32 %222, i32* %223, i32* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %220
  %229 = load i32, i32* %10, align 4
  %230 = add i32 %229, 4
  store i32 %230, i32* %10, align 4
  %231 = load i32*, i32** %11, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %11, align 8
  %233 = load i32*, i32** %13, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %13, align 8
  br label %217

235:                                              ; preds = %217
  %236 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %237 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 1
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %235
  %242 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %243 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %242, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  store i32* %244, i32** %11, align 8
  %245 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %246 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %245, i32 0, i32 7
  %247 = load i32*, i32** %246, align 8
  store i32* %247, i32** %13, align 8
  br label %255

248:                                              ; preds = %235
  %249 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %250 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %249, i32 0, i32 7
  %251 = load i32*, i32** %250, align 8
  store i32* %251, i32** %11, align 8
  %252 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %253 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %252, i32 0, i32 6
  %254 = load i32*, i32** %253, align 8
  store i32* %254, i32** %13, align 8
  br label %255

255:                                              ; preds = %248, %241
  store i32 4176, i32* %10, align 4
  br label %256

256:                                              ; preds = %267, %255
  %257 = load i32, i32* %10, align 4
  %258 = icmp ule i32 %257, 4220
  br i1 %258, label %259, label %274

259:                                              ; preds = %256
  %260 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load i32*, i32** %11, align 8
  %263 = load i32*, i32** %13, align 8
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %260, i32 %261, i32* %262, i32* %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %259
  %268 = load i32, i32* %10, align 4
  %269 = add i32 %268, 4
  store i32 %269, i32* %10, align 4
  %270 = load i32*, i32** %11, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %11, align 8
  %272 = load i32*, i32** %13, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %13, align 8
  br label %256

274:                                              ; preds = %256
  %275 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %276 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %282 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %281, i32 0, i32 8
  %283 = load i32*, i32** %282, align 8
  store i32* %283, i32** %11, align 8
  %284 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %285 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %284, i32 0, i32 9
  %286 = load i32*, i32** %285, align 8
  store i32* %286, i32** %13, align 8
  br label %294

287:                                              ; preds = %274
  %288 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %289 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %288, i32 0, i32 9
  %290 = load i32*, i32** %289, align 8
  store i32* %290, i32** %11, align 8
  %291 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %292 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %291, i32 0, i32 8
  %293 = load i32*, i32** %292, align 8
  store i32* %293, i32** %13, align 8
  br label %294

294:                                              ; preds = %287, %280
  store i32 6144, i32* %10, align 4
  br label %295

295:                                              ; preds = %306, %294
  %296 = load i32, i32* %10, align 4
  %297 = icmp ule i32 %296, 6200
  br i1 %297, label %298, label %313

298:                                              ; preds = %295
  %299 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load i32*, i32** %11, align 8
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %7, align 4
  %305 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %299, i32 %300, i32* %301, i32* %302, i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %298
  %307 = load i32, i32* %10, align 4
  %308 = add i32 %307, 4
  store i32 %308, i32* %10, align 4
  %309 = load i32*, i32** %11, align 8
  %310 = getelementptr inbounds i32, i32* %309, i32 1
  store i32* %310, i32** %11, align 8
  %311 = load i32*, i32** %13, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %13, align 8
  br label %295

313:                                              ; preds = %295
  %314 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %315 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, 1
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %313
  %320 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %321 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %320, i32 0, i32 10
  %322 = load i32*, i32** %321, align 8
  store i32* %322, i32** %11, align 8
  %323 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %324 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %323, i32 0, i32 11
  %325 = load i32*, i32** %324, align 8
  store i32* %325, i32** %13, align 8
  br label %333

326:                                              ; preds = %313
  %327 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %328 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %327, i32 0, i32 11
  %329 = load i32*, i32** %328, align 8
  store i32* %329, i32** %11, align 8
  %330 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %331 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %330, i32 0, i32 10
  %332 = load i32*, i32** %331, align 8
  store i32* %332, i32** %13, align 8
  br label %333

333:                                              ; preds = %326, %319
  store i32 7168, i32* %10, align 4
  br label %334

334:                                              ; preds = %345, %333
  %335 = load i32, i32* %10, align 4
  %336 = icmp ule i32 %335, 7199
  br i1 %336, label %337, label %352

337:                                              ; preds = %334
  %338 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %339 = load i32, i32* %10, align 4
  %340 = load i32*, i32** %11, align 8
  %341 = load i32*, i32** %13, align 8
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* %7, align 4
  %344 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %338, i32 %339, i32* %340, i32* %341, i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %337
  %346 = load i32, i32* %10, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %10, align 4
  %348 = load i32*, i32** %11, align 8
  %349 = getelementptr inbounds i32, i32* %348, i32 1
  store i32* %349, i32** %11, align 8
  %350 = load i32*, i32** %13, align 8
  %351 = getelementptr inbounds i32, i32* %350, i32 1
  store i32* %351, i32** %13, align 8
  br label %334

352:                                              ; preds = %334
  %353 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %354 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, 1
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %352
  %359 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %360 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %359, i32 0, i32 12
  %361 = load i32*, i32** %360, align 8
  store i32* %361, i32** %11, align 8
  %362 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %363 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %362, i32 0, i32 13
  %364 = load i32*, i32** %363, align 8
  store i32* %364, i32** %13, align 8
  br label %372

365:                                              ; preds = %352
  %366 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %367 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %366, i32 0, i32 13
  %368 = load i32*, i32** %367, align 8
  store i32* %368, i32** %11, align 8
  %369 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %370 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %369, i32 0, i32 12
  %371 = load i32*, i32** %370, align 8
  store i32* %371, i32** %13, align 8
  br label %372

372:                                              ; preds = %365, %358
  store i32 7232, i32* %10, align 4
  br label %373

373:                                              ; preds = %384, %372
  %374 = load i32, i32* %10, align 4
  %375 = icmp ule i32 %374, 7263
  br i1 %375, label %376, label %391

376:                                              ; preds = %373
  %377 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %378 = load i32, i32* %10, align 4
  %379 = load i32*, i32** %11, align 8
  %380 = load i32*, i32** %13, align 8
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %7, align 4
  %383 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %377, i32 %378, i32* %379, i32* %380, i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %376
  %385 = load i32, i32* %10, align 4
  %386 = add i32 %385, 1
  store i32 %386, i32* %10, align 4
  %387 = load i32*, i32** %11, align 8
  %388 = getelementptr inbounds i32, i32* %387, i32 1
  store i32* %388, i32** %11, align 8
  %389 = load i32*, i32** %13, align 8
  %390 = getelementptr inbounds i32, i32* %389, i32 1
  store i32* %390, i32** %13, align 8
  br label %373

391:                                              ; preds = %373
  %392 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %393 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %404

397:                                              ; preds = %391
  %398 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %399 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %398, i32 0, i32 14
  %400 = load i32*, i32** %399, align 8
  store i32* %400, i32** %11, align 8
  %401 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %402 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %401, i32 0, i32 15
  %403 = load i32*, i32** %402, align 8
  store i32* %403, i32** %13, align 8
  br label %411

404:                                              ; preds = %391
  %405 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %406 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %405, i32 0, i32 15
  %407 = load i32*, i32** %406, align 8
  store i32* %407, i32** %11, align 8
  %408 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %409 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %408, i32 0, i32 14
  %410 = load i32*, i32** %409, align 8
  store i32* %410, i32** %13, align 8
  br label %411

411:                                              ; preds = %404, %397
  store i32 7680, i32* %10, align 4
  br label %412

412:                                              ; preds = %423, %411
  %413 = load i32, i32* %10, align 4
  %414 = icmp ule i32 %413, 7711
  br i1 %414, label %415, label %430

415:                                              ; preds = %412
  %416 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %417 = load i32, i32* %10, align 4
  %418 = load i32*, i32** %11, align 8
  %419 = load i32*, i32** %13, align 8
  %420 = load i32, i32* %6, align 4
  %421 = load i32, i32* %7, align 4
  %422 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %416, i32 %417, i32* %418, i32* %419, i32 %420, i32 %421)
  br label %423

423:                                              ; preds = %415
  %424 = load i32, i32* %10, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %10, align 4
  %426 = load i32*, i32** %11, align 8
  %427 = getelementptr inbounds i32, i32* %426, i32 1
  store i32* %427, i32** %11, align 8
  %428 = load i32*, i32** %13, align 8
  %429 = getelementptr inbounds i32, i32* %428, i32 1
  store i32* %429, i32** %13, align 8
  br label %412

430:                                              ; preds = %412
  ret i32 0
}

declare dso_local i32 @ql_read_other_func_serdes_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_read_serdes_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_get_both_serdes(%struct.ql_adapter*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

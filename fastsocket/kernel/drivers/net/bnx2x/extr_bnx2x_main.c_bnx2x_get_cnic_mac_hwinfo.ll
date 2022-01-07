; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_cnic_mac_hwinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_cnic_mac_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i32, i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@func_ext_config = common dso_local global %struct.TYPE_9__* null, align 8
@MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Read iSCSI MAC: %pM\0A\00", align 1
@NO_ISCSI_OOO_FLAG = common dso_local global i32 0, align 4
@NO_ISCSI_FLAG = common dso_local global i32 0, align 4
@MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Read FCoE L2 MAC: %pM\0A\00", align 1
@NO_FCOE_FLAG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"SD ISCSI MODE\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SD FCoE MODE\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Read FIP MAC: %pM\0A\00", align 1
@dev_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_get_cnic_mac_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i32 @BP_PORT(%struct.bnx2x* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i64 @IS_MF(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %162

24:                                               ; preds = %1
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @IS_MF_SD(%struct.bnx2x* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %114, label %28

28:                                               ; preds = %24
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %114, label %32

32:                                               ; preds = %28
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MF_CFG_RD(%struct.bnx2x* %33, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %32
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MF_CFG_RD(%struct.bnx2x* %46, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MF_CFG_RD(%struct.bnx2x* %54, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @bnx2x_set_mac_buf(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %66)
  br label %76

68:                                               ; preds = %32
  %69 = load i32, i32* @NO_ISCSI_OOO_FLAG, align 4
  %70 = load i32, i32* @NO_ISCSI_FLAG, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %45
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MF_CFG_RD(%struct.bnx2x* %82, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MF_CFG_RD(%struct.bnx2x* %90, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @bnx2x_set_mac_buf(i32* %98, i32 %99, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %102)
  br label %110

104:                                              ; preds = %76
  %105 = load i32, i32* @NO_FCOE_FLAG, align 4
  %106 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %81
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %148

114:                                              ; preds = %28, %24
  %115 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %116 = call i64 @BNX2X_IS_MF_SD_PROTOCOL_ISCSI(%struct.bnx2x* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %121 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %120, i32 0, i32 3
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i32 @memcpy(i32* %119, i32* %124, i32 %125)
  %127 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %128)
  br label %147

130:                                              ; preds = %114
  %131 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %132 = call i64 @BNX2X_IS_MF_SD_PROTOCOL_FCOE(%struct.bnx2x* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %137 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %136, i32 0, i32 3
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @ETH_ALEN, align 4
  %142 = call i32 @memcpy(i32* %135, i32* %140, i32 %141)
  %143 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %144)
  br label %146

146:                                              ; preds = %134, %130
  br label %147

147:                                              ; preds = %146, %118
  br label %148

148:                                              ; preds = %147, %110
  %149 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %150 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %154 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %153, i32 0, i32 3
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @memcpy(i32* %157, i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %148
  br label %203

162:                                              ; preds = %1
  %163 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @SHMEM_RD(%struct.bnx2x* %163, i32 %169)
  store i32 %170, i32* %4, align 4
  %171 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @SHMEM_RD(%struct.bnx2x* %171, i32 %177)
  store i32 %178, i32* %3, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @bnx2x_set_mac_buf(i32* %179, i32 %180, i32 %181)
  %183 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @SHMEM_RD(%struct.bnx2x* %183, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @SHMEM_RD(%struct.bnx2x* %191, i32 %197)
  store i32 %198, i32* %3, align 4
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @bnx2x_set_mac_buf(i32* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %162, %161
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @is_valid_ether_addr(i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* @NO_ISCSI_OOO_FLAG, align 4
  %209 = load i32, i32* @NO_ISCSI_FLAG, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %212 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* @ETH_ALEN, align 4
  %217 = call i32 @memset(i32* %215, i32 0, i32 %216)
  br label %218

218:                                              ; preds = %207, %203
  %219 = load i32*, i32** %8, align 8
  %220 = call i32 @is_valid_ether_addr(i32* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* @NO_FCOE_FLAG, align 4
  %224 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %225 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %229 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* @ETH_ALEN, align 4
  %232 = call i32 @memset(i32* %230, i32 0, i32 %231)
  br label %233

233:                                              ; preds = %222, %218
  ret void
}

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_mac_buf(i32*, i32, i32) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, ...) #1

declare dso_local i64 @BNX2X_IS_MF_SD_PROTOCOL_ISCSI(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @BNX2X_IS_MF_SD_PROTOCOL_FCOE(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

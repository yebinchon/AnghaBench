; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.bnx2x_vfop_filters* }
%struct.bnx2x_vfop_filters = type { i32 }
%struct.TYPE_6__ = type { %struct.bnx2x_vlan_mac_ramrod_params }
%struct.bnx2x_vlan_mac_ramrod_params = type { i32, %struct.TYPE_9__, %struct.bnx2x_vlan_mac_obj* }
%struct.TYPE_9__ = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i64 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*, i32*)*, %struct.TYPE_10__ }
%struct.bnx2x.0 = type opaque
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)* }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@VFOP_DONE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@RAMROD_CONT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"VLAN-MAC error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_vlan_mac(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_vlan_mac_ramrod_params*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %struct.bnx2x_vfop_filters*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %12 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %10, %struct.bnx2x_virtf* %11)
  store %struct.bnx2x_vfop* %12, %struct.bnx2x_vfop** %5, align 8
  %13 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.bnx2x_vlan_mac_ramrod_params* %16, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %17 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %17, i32 0, i32 2
  %19 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %18, align 8
  store %struct.bnx2x_vlan_mac_obj* %19, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %20 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %23, align 8
  store %struct.bnx2x_vfop_filters* %24, %struct.bnx2x_vfop_filters** %8, align 8
  %25 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %29 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %180

33:                                               ; preds = %2
  %34 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %35 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %36 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @DP(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %41 = call i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf* %40)
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %176 [
    i32 129, label %43
    i32 128, label %66
    i32 130, label %91
    i32 132, label %112
    i32 131, label %144
  ]

43:                                               ; preds = %33
  %44 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %44, i32 0, i32 0
  store i32 130, i32* %45, align 8
  %46 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %47 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %46, i32 0, i32 0
  %48 = load i64 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*, i32*)*, i64 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*, i32*)** %47, align 8
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = bitcast %struct.bnx2x* %49 to %struct.bnx2x.0*
  %51 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %52 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %53 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %55, i32 0, i32 0
  %57 = call i64 %48(%struct.bnx2x.0* %50, %struct.bnx2x_vlan_mac_obj* %51, i32* %54, i32* %56)
  %58 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %61 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %62 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @VFOP_DONE, align 4
  %65 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %60, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %33, %43
  %67 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %68 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %67, i32 0, i32 0
  store i32 130, i32* %68, align 8
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %71 = call i8* @bnx2x_config_vlan_mac(%struct.bnx2x* %69, %struct.bnx2x_vlan_mac_ramrod_params* %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EEXIST, align 8
  %79 = sub nsw i64 0, %78
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %83 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %66
  %85 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %86 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %87 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @VFOP_DONE, align 4
  %90 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %85, i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %33, %84
  %92 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %93 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %94, align 8
  %96 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %97 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %96, i32 0, i32 1
  %98 = call i32 %95(%struct.TYPE_10__* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %105 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %107 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %108 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @VFOP_DONE, align 4
  %111 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %106, i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %33, %91
  %113 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %114 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %113, i32 0, i32 0
  store i32 130, i32* %114, align 8
  %115 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %116 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %8, align 8
  %117 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %118 = call i8* @bnx2x_vfop_config_list(%struct.bnx2x* %115, %struct.bnx2x_vfop_filters* %116, %struct.bnx2x_vlan_mac_ramrod_params* %117)
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %121 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %123 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %180

127:                                              ; preds = %112
  %128 = load i32, i32* @RAMROD_CONT, align 4
  %129 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %130 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %129, i32 0, i32 0
  %131 = call i32 @set_bit(i32 %128, i32* %130)
  %132 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %133 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %134 = call i8* @bnx2x_config_vlan_mac(%struct.bnx2x* %132, %struct.bnx2x_vlan_mac_ramrod_params* %133)
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %137 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %139 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %140 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @VFOP_DONE, align 4
  %143 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %138, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %33, %127
  %145 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %146 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %145, i32 0, i32 0
  store i32 130, i32* %146, align 8
  %147 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %148 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %8, align 8
  %149 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %150 = call i8* @bnx2x_vfop_config_list(%struct.bnx2x* %147, %struct.bnx2x_vfop_filters* %148, %struct.bnx2x_vlan_mac_ramrod_params* %149)
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %153 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %155 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %144
  %159 = load i32, i32* @RAMROD_CONT, align 4
  %160 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %161 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %160, i32 0, i32 0
  %162 = call i32 @set_bit(i32 %159, i32* %161)
  %163 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %164 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %6, align 8
  %165 = call i8* @bnx2x_config_vlan_mac(%struct.bnx2x* %163, %struct.bnx2x_vlan_mac_ramrod_params* %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %168 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %158, %144
  %170 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %171 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %172 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @VFOP_DONE, align 4
  %175 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %170, i64 %173, i32 %174)
  br label %176

176:                                              ; preds = %33, %169
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @bnx2x_vfop_default(i32 %177)
  br label %179

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179, %126, %32
  %181 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %182 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %183)
  br label %185

185:                                              ; preds = %180
  %186 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %8, align 8
  %187 = call i32 @kfree(%struct.bnx2x_vfop_filters* %186)
  %188 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %189 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %190 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %191 = call i32 @bnx2x_vfop_credit(%struct.bnx2x* %188, %struct.bnx2x_vfop* %189, %struct.bnx2x_vlan_mac_obj* %190)
  %192 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %193 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %194 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %195 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %192, %struct.bnx2x_virtf* %193, %struct.bnx2x_vfop* %194)
  br label %196

196:                                              ; preds = %185
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf*, i64, i32) #1

declare dso_local i8* @bnx2x_config_vlan_mac(%struct.bnx2x*, %struct.bnx2x_vlan_mac_ramrod_params*) #1

declare dso_local i8* @bnx2x_vfop_config_list(%struct.bnx2x*, %struct.bnx2x_vfop_filters*, %struct.bnx2x_vlan_mac_ramrod_params*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @kfree(%struct.bnx2x_vfop_filters*) #1

declare dso_local i32 @bnx2x_vfop_credit(%struct.bnx2x*, %struct.bnx2x_vfop*, %struct.bnx2x_vlan_mac_obj*) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

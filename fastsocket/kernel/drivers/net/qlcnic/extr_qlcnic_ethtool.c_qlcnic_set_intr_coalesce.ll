; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_intr_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_intr_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.qlcnic_nic_intr_coalesce }
%struct.qlcnic_nic_intr_coalesce = type { i8*, i8*, i8*, i8*, i8*, i8* }

@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_INTR_DEFAULT = common dso_local global i8* null, align 8
@QLCNIC_INTR_COAL_TYPE_RX = common dso_local global i8* null, align 8
@QLCNIC_DEF_INTR_COALESCE_RX_TIME_US = common dso_local global i8* null, align 8
@QLCNIC_DEF_INTR_COALESCE_RX_PACKETS = common dso_local global i8* null, align 8
@QLCNIC_DEF_INTR_COALESCE_TX_TIME_US = common dso_local global i8* null, align 8
@QLCNIC_DEF_INTR_COALESCE_TX_PACKETS = common dso_local global i8* null, align 8
@QLCNIC_INTR_COAL_TYPE_TX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @qlcnic_set_intr_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_intr_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_nic_intr_coalesce*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %6, align 8
  %14 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %303

22:                                               ; preds = %2
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %127, label %27

27:                                               ; preds = %22
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 65535
  br i1 %31, label %127, label %32

32:                                               ; preds = %27
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 65535
  br i1 %36, label %127, label %37

37:                                               ; preds = %32
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 65535
  br i1 %41, label %127, label %42

42:                                               ; preds = %37
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 20
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %127, label %47

47:                                               ; preds = %42
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 19
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %127, label %52

52:                                               ; preds = %47
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 18
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %127, label %57

57:                                               ; preds = %52
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 17
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %127, label %62

62:                                               ; preds = %57
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 16
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %127, label %67

67:                                               ; preds = %62
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 15
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %127, label %72

72:                                               ; preds = %67
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 14
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %127, label %77

77:                                               ; preds = %72
  %78 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 13
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %127, label %82

82:                                               ; preds = %77
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %82
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %127, label %92

92:                                               ; preds = %87
  %93 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %92
  %98 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %102
  %108 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %124 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122, %117, %112, %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %303

130:                                              ; preds = %122
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %132 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store %struct.qlcnic_nic_intr_coalesce* %134, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %136 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %262

138:                                              ; preds = %130
  %139 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %145 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %150 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %155 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %153, %148, %143, %138
  %159 = load i8*, i8** @QLCNIC_INTR_DEFAULT, align 8
  %160 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %161 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @QLCNIC_INTR_COAL_TYPE_RX, align 8
  %163 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %164 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %163, i32 0, i32 5
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_TIME_US, align 8
  %166 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %167 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_PACKETS, align 8
  %169 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %170 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_TX_TIME_US, align 8
  %172 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %173 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_TX_PACKETS, align 8
  %175 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %176 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  br label %261

177:                                              ; preds = %153
  %178 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %179 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %10, align 8
  %183 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %184 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %11, align 8
  %188 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %189 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %8, align 8
  %193 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %194 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  store i8* %197, i8** %9, align 8
  %198 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %199 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %198, i32 0, i32 4
  store i8* null, i8** %199, align 8
  %200 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %201 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = icmp eq i8* %202, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %177
  %206 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %207 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = icmp eq i8* %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load i8*, i8** @QLCNIC_INTR_COAL_TYPE_TX, align 8
  %213 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %214 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %217 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %220 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %219, i32 0, i32 3
  store i8* %218, i8** %220, align 8
  br label %260

221:                                              ; preds = %205, %177
  %222 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %223 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = icmp eq i8* %224, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %229 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %228, i32 0, i32 3
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %11, align 8
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = load i8*, i8** @QLCNIC_INTR_COAL_TYPE_RX, align 8
  %235 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %236 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %235, i32 0, i32 5
  store i8* %234, i8** %236, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %239 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %242 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  br label %259

243:                                              ; preds = %227, %221
  %244 = load i8*, i8** @QLCNIC_INTR_COAL_TYPE_RX, align 8
  %245 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %246 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %249 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %248, i32 0, i32 0
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** %9, align 8
  %251 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %252 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %255 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %258 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %257, i32 0, i32 3
  store i8* %256, i8** %258, align 8
  br label %259

259:                                              ; preds = %243, %233
  br label %260

260:                                              ; preds = %259, %211
  br label %261

261:                                              ; preds = %260, %158
  br label %300

262:                                              ; preds = %130
  %263 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %264 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %269 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %267, %262
  %273 = load i8*, i8** @QLCNIC_INTR_DEFAULT, align 8
  %274 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %275 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %274, i32 0, i32 4
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_TIME_US, align 8
  %277 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %278 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %277, i32 0, i32 0
  store i8* %276, i8** %278, align 8
  %279 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_PACKETS, align 8
  %280 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %281 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  br label %299

282:                                              ; preds = %267
  %283 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %284 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %283, i32 0, i32 4
  store i8* null, i8** %284, align 8
  %285 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %286 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %291 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %290, i32 0, i32 0
  store i8* %289, i8** %291, align 8
  %292 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %293 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = inttoptr i64 %295 to i8*
  %297 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %7, align 8
  %298 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %282, %272
  br label %300

300:                                              ; preds = %299, %261
  %301 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %302 = call i32 @qlcnic_config_intr_coalesce(%struct.qlcnic_adapter* %301)
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %300, %127, %19
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_config_intr_coalesce(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

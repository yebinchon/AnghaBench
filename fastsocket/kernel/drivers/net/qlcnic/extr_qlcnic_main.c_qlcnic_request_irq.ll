; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.TYPE_2__*, i32, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.qlcnic_host_tx_ring = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_tx_ring* }
%struct.net_device = type { i8*, i32 }
%struct.qlcnic_host_sds_ring = type { i32, i32 }

@QLCNIC_INTERRUPT_TEST = common dso_local global i64 0, align 8
@qlcnic_tmp_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@qlcnic_msix_intr = common dso_local global i32 0, align 4
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@qlcnic_msi_intr = common dso_local global i32 0, align 4
@qlcnic_intr = common dso_local global i32 0, align 4
@qlcnic_83xx_intr = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"qlcnic\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s-tx-0-rx-%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-rx-%d\00", align 1
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@qlcnic_msix_tx_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s-tx-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_request_irq(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 7
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %11, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 6
  %18 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %17, align 8
  store %struct.qlcnic_recv_context* %18, %struct.qlcnic_recv_context** %12, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QLCNIC_INTERRUPT_TEST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @qlcnic_tmp_intr, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = call i32 @QLCNIC_IS_MSI_FAMILY(%struct.qlcnic_adapter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @IRQF_SHARED, align 8
  %38 = load i64, i64* %10, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %73

41:                                               ; preds = %1
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @qlcnic_msix_intr, align 4
  store i32 %49, i32* %4, align 4
  br label %72

50:                                               ; preds = %41
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @qlcnic_msi_intr, align 4
  store i32 %58, i32* %4, align 4
  br label %71

59:                                               ; preds = %50
  %60 = load i64, i64* @IRQF_SHARED, align 8
  %61 = load i64, i64* %10, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %64 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @qlcnic_intr, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @qlcnic_83xx_intr, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %40
  %74 = load %struct.net_device*, %struct.net_device** %11, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %238

86:                                               ; preds = %73
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %88 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %92 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %177

94:                                               ; preds = %90
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %177

101:                                              ; preds = %94, %86
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %173, %101
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %176

109:                                              ; preds = %105
  %110 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %12, align 8
  %111 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %110, i32 0, i32 0
  %112 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %112, i64 %114
  %116 = bitcast %struct.qlcnic_host_tx_ring* %115 to %struct.qlcnic_host_sds_ring*
  store %struct.qlcnic_host_sds_ring* %116, %struct.qlcnic_host_sds_ring** %5, align 8
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %118 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %120
  %126 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %134 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %135, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %146

137:                                              ; preds = %125
  %138 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %139 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.net_device*, %struct.net_device** %11, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %140, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %137, %132
  br label %156

147:                                              ; preds = %120, %109
  %148 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %149 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.net_device*, %struct.net_device** %11, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %150, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %147, %146
  %157 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %158 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %163 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %166 = bitcast %struct.qlcnic_host_sds_ring* %165 to %struct.qlcnic_host_tx_ring*
  %167 = call i32 @request_irq(i32 %159, i32 %160, i64 %161, i32 %164, %struct.qlcnic_host_tx_ring* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %156
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %239

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %105

176:                                              ; preds = %105
  br label %177

177:                                              ; preds = %176, %94, %90
  %178 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %179 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %237

181:                                              ; preds = %177
  %182 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %183 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %237

188:                                              ; preds = %181
  %189 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %237, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* @qlcnic_msix_tx_intr, align 4
  store i32 %196, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %233, %195
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %197
  %204 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %205 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %204, i32 0, i32 3
  %206 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %206, i64 %208
  store %struct.qlcnic_host_tx_ring* %209, %struct.qlcnic_host_tx_ring** %6, align 8
  %210 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %211 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.net_device*, %struct.net_device** %11, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %212, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %215, i32 %216)
  %218 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %219 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %4, align 4
  %222 = load i64, i64* %10, align 8
  %223 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %224 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %227 = call i32 @request_irq(i32 %220, i32 %221, i64 %222, i32 %225, %struct.qlcnic_host_tx_ring* %226)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %203
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %2, align 4
  br label %239

232:                                              ; preds = %203
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %197

236:                                              ; preds = %197
  br label %237

237:                                              ; preds = %236, %188, %181, %177
  br label %238

238:                                              ; preds = %237, %73
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %230, %170
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCNIC_IS_MSI_FAMILY(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

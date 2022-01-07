; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_probe_slices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_probe_slices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i8*, i32, %struct.TYPE_4__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.myri10ge_cmd = type { i32 }

@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@myri10ge_max_slices = common dso_local global i32 0, align 4
@myri10ge_fw_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"overriding rss firmware to %s\0A\00", align 1
@myri10ge_fw_aligned = common dso_local global i8* null, align 8
@myri10ge_fw_rss_aligned = common dso_local global i8* null, align 8
@myri10ge_fw_rss_unaligned = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Rss firmware not found\0A\00", align 1
@MXGEFW_CMD_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"failed reset\0A\00", align 1
@MXGEFW_CMD_SET_INTRQ_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed MXGEFW_CMD_SET_INTRQ_SIZE\0A\00", align 1
@MXGEFW_CMD_GET_MAX_RSS_QUEUES = common dso_local global i32 0, align 4
@myri10ge_msi = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_probe_slices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_probe_slices(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.myri10ge_cmd, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %10 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %11 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %10, i32 0, i32 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %14 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %17 = call i32 @pci_find_capability(%struct.pci_dev* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @num_online_cpus()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @myri10ge_max_slices, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @myri10ge_max_slices, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %21, %1
  br label %244

31:                                               ; preds = %27, %24
  %32 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %33 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** @myri10ge_fw_name, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %39 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %38, i32 0, i32 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i8*, i8** @myri10ge_fw_name, align 8
  %43 = call i32 (i32*, i8*, ...) @dev_info(i32* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** @myri10ge_fw_name, align 8
  %45 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %46 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %60

47:                                               ; preds = %31
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** @myri10ge_fw_aligned, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** @myri10ge_fw_rss_aligned, align 8
  %53 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %54 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %59

55:                                               ; preds = %47
  %56 = load i8*, i8** @myri10ge_fw_rss_unaligned, align 8
  %57 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %58 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %62 = call i32 @myri10ge_load_firmware(%struct.myri10ge_priv* %61, i32 0)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_info(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %244

69:                                               ; preds = %60
  %70 = call i32 @memset(%struct.myri10ge_cmd* %3, i32 0, i32 4)
  %71 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %72 = load i32, i32* @MXGEFW_CMD_RESET, align 4
  %73 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %71, i32 %72, %struct.myri10ge_cmd* %3, i32 0)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %78 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %77, i32 0, i32 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %236

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %3, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %89 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %91 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %3, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %98 = load i32, i32* @MXGEFW_CMD_SET_INTRQ_SIZE, align 4
  %99 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %97, i32 %98, %struct.myri10ge_cmd* %3, i32 0)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %82
  %103 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %104 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %103, i32 0, i32 4
  %105 = load %struct.pci_dev*, %struct.pci_dev** %104, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %236

108:                                              ; preds = %82
  %109 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %110 = load i32, i32* @MXGEFW_CMD_GET_MAX_RSS_QUEUES, align 4
  %111 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %109, i32 %110, %struct.myri10ge_cmd* %3, i32 0)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %236

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %3, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %119 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @myri10ge_msi, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  br label %236

124:                                              ; preds = %120
  %125 = load i32, i32* @myri10ge_max_slices, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* @myri10ge_max_slices, align 4
  br label %129

129:                                              ; preds = %127, %124
  %130 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %131 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @myri10ge_max_slices, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @myri10ge_max_slices, align 4
  %137 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %138 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %129
  %140 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %141 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call %struct.TYPE_4__* @kzalloc(i32 %145, i32 %146)
  %148 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %149 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %148, i32 0, i32 3
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %149, align 8
  %150 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %151 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = icmp eq %struct.TYPE_4__* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %139
  br label %223

155:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %171, %155
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %159 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %156
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %165 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %164, i32 0, i32 3
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32 %163, i32* %170, align 4
  br label %171

171:                                              ; preds = %162
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %156

174:                                              ; preds = %156
  br label %175

175:                                              ; preds = %221, %174
  %176 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %177 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %180, label %222

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %188, %180
  %182 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %183 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @is_power_of_2(i32 %184)
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %190 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %190, align 8
  br label %181

193:                                              ; preds = %181
  %194 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %195 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %223

199:                                              ; preds = %193
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %202 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %201, i32 0, i32 3
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %205 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @pci_enable_msix(%struct.pci_dev* %200, %struct.TYPE_4__* %203, i32 %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %199
  %211 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %212 = call i32 @pci_disable_msix(%struct.pci_dev* %211)
  br label %244

213:                                              ; preds = %199
  %214 = load i32, i32* %7, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %219 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %221

220:                                              ; preds = %213
  br label %223

221:                                              ; preds = %216
  br label %175

222:                                              ; preds = %175
  br label %223

223:                                              ; preds = %222, %220, %198, %154
  %224 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %225 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %224, i32 0, i32 3
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = icmp ne %struct.TYPE_4__* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %230 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %229, i32 0, i32 3
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = call i32 @kfree(%struct.TYPE_4__* %231)
  %233 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %234 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %233, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %234, align 8
  br label %235

235:                                              ; preds = %228, %223
  br label %236

236:                                              ; preds = %235, %123, %114, %102, %76
  %237 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %238 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %237, i32 0, i32 0
  store i32 1, i32* %238, align 8
  %239 = load i8*, i8** %5, align 8
  %240 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %241 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %243 = call i32 @myri10ge_load_firmware(%struct.myri10ge_priv* %242, i32 0)
  br label %244

244:                                              ; preds = %236, %210, %65, %30
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @myri10ge_load_firmware(%struct.myri10ge_priv*, i32) #1

declare dso_local i32 @memset(%struct.myri10ge_cmd*, i32, i32) #1

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_pci_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i64, i32 }
%struct.qlcnic_pci_info = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_CMD_GET_PCI_INFO = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@QLCNIC_MAX_PCI_FUNC = common dso_local global i32 0, align 4
@QLCNIC_TYPE_NIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"id = %d active = %d type = %d\0A\09port = %d min bw = %d max bw = %d\0A\09mac_addr =  %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Max vNIC functions = %d, active vNIC functions = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get PCI Info, error = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_pci_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_pci_info* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_pci_info*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.qlcnic_cmd_args, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_pci_info* %1, %struct.qlcnic_pci_info** %4, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %13, align 8
  store %struct.qlcnic_hardware_context* %14, %struct.qlcnic_hardware_context** %5, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = load i32, i32* @QLCNIC_CMD_GET_PCI_INFO, align 4
  %21 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %7, %struct.qlcnic_adapter* %19, i32 %20)
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %22, %struct.qlcnic_cmd_args* %7)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %209

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %37 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 2, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %188, %29
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @QLCNIC_MAX_PCI_FUNC, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %193

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65535
  %51 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %52 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -65536
  %61 = lshr i32 %60, 16
  %62 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %63 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 65535
  %74 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %77 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @QLCNIC_TYPE_NIC, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %42
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %83 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %42
  %87 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -65536
  %95 = lshr i32 %94, 16
  %96 = zext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %100 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 65535
  %111 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %112 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, -65536
  %121 = lshr i32 %120, 16
  %122 = zext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %11, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %126 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %8, align 4
  %129 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %130 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* @ETH_ALEN, align 4
  %139 = sub nsw i32 %138, 2
  %140 = call i32 @memcpy(i32 %131, i32* %137, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %144 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, 8
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = call i32 @memcpy(i32 %148, i32* %154, i32 2)
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 3
  store i32 %157, i32* %8, align 4
  %158 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %159 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %187

163:                                              ; preds = %86
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %166 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %169 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %172 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %175 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %178 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %181 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %184 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_info(%struct.device* %164, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %170, i32 %173, i8* %176, i32 %179, i8* %182, i32 %185)
  br label %187

187:                                              ; preds = %163, %86
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %192 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %191, i32 1
  store %struct.qlcnic_pci_info* %192, %struct.qlcnic_pci_info** %4, align 8
  br label %38

193:                                              ; preds = %38
  %194 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %195 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %193
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %202 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %205 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_info(%struct.device* %200, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %199, %193
  br label %215

209:                                              ; preds = %2
  %210 = load %struct.device*, %struct.device** %6, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @dev_err(%struct.device* %210, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %9, align 4
  br label %215

215:                                              ; preds = %209, %208
  %216 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %7)
  %217 = load i32, i32* %9, align 4
  ret i32 %217
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

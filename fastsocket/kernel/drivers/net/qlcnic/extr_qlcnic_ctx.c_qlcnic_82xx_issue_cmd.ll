; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.pci_dev* }
%struct.qlcnic_hardware_context = type { i32 }
%struct.pci_dev = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i64* }

@QLCNIC_SIGN_CRB_OFFSET = common dso_local global i32 0, align 4
@QLCNIC_CDRP_MAX_ARGS = common dso_local global i32 0, align 4
@QLCNIC_CDRP_CRB_OFFSET = common dso_local global i32 0, align 4
@QLCNIC_CDRP_RSP_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"card response timeout.\0A\00", align 1
@QLCNIC_CDRP_RSP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"CDRP invalid args 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CDRP command not supported: 0x%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"CDRP requested action not permitted: 0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"CDRP invalid or unknown cmd received: 0x%x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"CDRP command timeout: 0x%x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"CDRP command failed: 0x%x.\0A\00", align 1
@QLCNIC_CDRP_RSP_OK = common dso_local global i64 0, align 8
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_issue_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %9, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  store %struct.qlcnic_hardware_context* %16, %struct.qlcnic_hardware_context** %10, align 8
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %18 = call i64 @qlcnic_get_cmd_signature(%struct.qlcnic_hardware_context* %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %20 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %24 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 128, i32* %27, align 4
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %211

34:                                               ; preds = %2
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %36 = load i32, i32* @QLCNIC_SIGN_CRB_OFFSET, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @QLCWR32(%struct.qlcnic_adapter* %35, i32 %36, i64 %37)
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %56, %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @QLCNIC_CDRP_MAX_ARGS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @QLCNIC_CDRP_ARG(i32 %45)
  %47 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %48 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @QLCWR32(%struct.qlcnic_adapter* %44, i32 %46, i64 %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = load i32, i32* @QLCNIC_CDRP_CRB_OFFSET, align 4
  %62 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %63 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @QLCNIC_CDRP_FORM_CMD(i64 %67)
  %69 = call i32 @QLCWR32(%struct.qlcnic_adapter* %60, i32 %61, i64 %68)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %71 = call i64 @qlcnic_poll_rsp(%struct.qlcnic_adapter* %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @QLCNIC_CDRP_RSP_TIMEOUT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %59
  %76 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %80 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 128, i32* %83, align 4
  br label %178

84:                                               ; preds = %59
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @QLCNIC_CDRP_RSP_FAIL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %165

88:                                               ; preds = %84
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %90 = call i32 @QLCNIC_CDRP_ARG(i32 1)
  %91 = call i8* @QLCRD32(%struct.qlcnic_adapter* %89, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %94 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %92, i32* %97, align 4
  %98 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %99 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %154 [
    i32 132, label %104
    i32 129, label %114
    i32 131, label %114
    i32 130, label %124
    i32 133, label %134
    i32 128, label %144
  ]

104:                                              ; preds = %88
  %105 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %108 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %164

114:                                              ; preds = %88, %88
  %115 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %118 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %164

124:                                              ; preds = %88
  %125 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 0
  %127 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %128 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %164

134:                                              ; preds = %88
  %135 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %138 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %164

144:                                              ; preds = %88
  %145 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %148 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  br label %164

154:                                              ; preds = %88
  %155 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 0
  %157 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %158 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32*, i8*, ...) @dev_err(i32* %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %154, %144, %134, %124, %114, %104
  br label %177

165:                                              ; preds = %84
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* @QLCNIC_CDRP_RSP_OK, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %171 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %172 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %170, i32* %175, align 4
  br label %176

176:                                              ; preds = %169, %165
  br label %177

177:                                              ; preds = %176, %164
  br label %178

178:                                              ; preds = %177, %75
  store i32 1, i32* %6, align 4
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %182 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %179
  %187 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @QLCNIC_CDRP_ARG(i32 %188)
  %190 = call i8* @QLCRD32(%struct.qlcnic_adapter* %187, i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %193 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %191, i32* %198, align 4
  br label %199

199:                                              ; preds = %186
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %179

202:                                              ; preds = %179
  %203 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %204 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %203)
  %205 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %206 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %202, %22
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @qlcnic_get_cmd_signature(%struct.qlcnic_hardware_context*) #1

declare dso_local i64 @qlcnic_api_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i64) #1

declare dso_local i32 @QLCNIC_CDRP_ARG(i32) #1

declare dso_local i64 @QLCNIC_CDRP_FORM_CMD(i64) #1

declare dso_local i64 @qlcnic_poll_rsp(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_api_unlock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

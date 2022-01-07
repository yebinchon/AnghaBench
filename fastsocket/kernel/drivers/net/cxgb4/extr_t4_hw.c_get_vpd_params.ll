; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_get_vpd_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_get_vpd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.vpd_params = type { i32, i32, i32 }

@VPD_LEN = common dso_local global i32 0, align 4
@VPD_BASE = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_ID_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"missing VPD ID string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ID_LEN = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_RO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"missing VPD-R section\0A\00", align 1
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bad VPD-R length %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"missing VPD keyword RV\0A\00", align 1
@PCI_VPD_INFO_FLD_HDR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"corrupted VPD EEPROM, actual csum %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"missing VPD keyword EC\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"missing VPD keyword SN\0A\00", align 1
@EC_LEN = common dso_local global i32 0, align 4
@SERNUM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.vpd_params*)* @get_vpd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vpd_params(%struct.adapter* %0, %struct.vpd_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.vpd_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.vpd_params* %1, %struct.vpd_params** %5, align 8
  %17 = load i32, i32* @VPD_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VPD_BASE, align 4
  %25 = mul nuw i64 8, %18
  %26 = trunc i64 %25 to i32
  %27 = call i32 @pci_read_vpd(i32 %23, i32 %24, i32 %26, i64* %20)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

32:                                               ; preds = %2
  %33 = getelementptr inbounds i64, i64* %20, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = load i64, i64* @PCI_VPD_LRDT_ID_STRING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

44:                                               ; preds = %32
  %45 = call i32 @pci_vpd_lrdt_size(i64* %20)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @ID_LEN, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ID_LEN, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* @VPD_LEN, align 4
  %53 = load i32, i32* @PCI_VPD_LRDT_RO_DATA, align 4
  %54 = call i32 @pci_vpd_find_tag(i64* %20, i32 0, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

64:                                               ; preds = %51
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %20, i64 %66
  %68 = call i32 @pci_vpd_lrdt_size(i64* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* @VPD_LEN, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %64
  %78 = load %struct.adapter*, %struct.adapter** %4, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %20, i32 %87, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.adapter*, %struct.adapter** %4, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

99:                                               ; preds = %86
  %100 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103
  store i64 0, i64* %12, align 8
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %20, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %6, align 4
  br label %105

118:                                              ; preds = %105
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load %struct.adapter*, %struct.adapter** %4, align 8
  %123 = getelementptr inbounds %struct.adapter, %struct.adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %12, align 8
  %126 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %20, i32 %131, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.adapter*, %struct.adapter** %4, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

143:                                              ; preds = %130
  %144 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %20, i32 %150, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.adapter*, %struct.adapter** %4, align 8
  %157 = getelementptr inbounds %struct.adapter, %struct.adapter* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, ...) @dev_err(i32 %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

162:                                              ; preds = %149
  %163 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %169 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %20, i64 %172
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @memcpy(i32 %170, i64* %173, i32 %174)
  %176 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %177 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @strim(i32 %178)
  %180 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %181 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %20, i64 %184
  %186 = load i32, i32* @EC_LEN, align 4
  %187 = call i32 @memcpy(i32 %182, i64* %185, i32 %186)
  %188 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %189 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @strim(i32 %190)
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %20, i64 %193
  %195 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %196 = sext i32 %195 to i64
  %197 = sub i64 0, %196
  %198 = getelementptr inbounds i64, i64* %194, i64 %197
  %199 = call i32 @pci_vpd_info_field_size(i64* %198)
  store i32 %199, i32* %6, align 4
  %200 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %201 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %20, i64 %204
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @SERNUM_LEN, align 4
  %208 = call i32 @min(i32 %206, i32 %207)
  %209 = call i32 @memcpy(i32 %202, i64* %205, i32 %208)
  %210 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %211 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @strim(i32 %212)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %214

214:                                              ; preds = %167, %155, %136, %121, %92, %77, %57, %37, %30
  %215 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_read_vpd(i32, i32, i32, i64*) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @pci_vpd_lrdt_size(i64*) #2

declare dso_local i32 @pci_vpd_find_tag(i64*, i32, i32, i32) #2

declare dso_local i32 @pci_vpd_find_info_keyword(...) #2

declare dso_local i32 @memcpy(i32, i64*, i32) #2

declare dso_local i32 @strim(i32) #2

declare dso_local i32 @pci_vpd_info_field_size(i64*) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

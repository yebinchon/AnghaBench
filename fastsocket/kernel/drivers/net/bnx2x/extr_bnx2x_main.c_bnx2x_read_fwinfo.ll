; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_read_fwinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_read_fwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i8*, i32 }

@BNX2X_VPD_LEN = common dso_local global i32 0, align 4
@VENDOR_ID_LEN = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_RO_DATA = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_VPD_RO_KEYWORD_MFR_ID = common dso_local global i32 0, align 4
@PCI_VPD_INFO_FLD_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@PCI_VENDOR_ID_DELL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@PCI_VPD_RO_KEYWORD_VENDOR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_read_fwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_read_fwinfo(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %15 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @VENDOR_ID_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @VENDOR_ID_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i8* null, i8** %12, align 8
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %32 = call i32 @pci_read_vpd(i32 %30, i32 0, i32 %31, i8* %19)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @memset(i8* %35, i32 0, i32 8)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %191

41:                                               ; preds = %1
  %42 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %43 = load i32, i32* @PCI_VPD_LRDT_RO_DATA, align 4
  %44 = call i32 @pci_vpd_find_tag(i8* %19, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %191

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %19, i64 %53
  %55 = call i32 @pci_vpd_lrdt_size(i8* %54)
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %48
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kmalloc(i32 %64, i32 %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %191

70:                                               ; preds = %63
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %73 = call i32 @memcpy(i8* %71, i8* %19, i32 %72)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 @pci_read_vpd(i32 %76, i32 %77, i32 %80, i8* %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  br label %191

92:                                               ; preds = %70
  %93 = load i8*, i8** %12, align 8
  store i8* %93, i8** %11, align 8
  br label %95

94:                                               ; preds = %48
  store i8* %19, i8** %11, align 8
  br label %95

95:                                               ; preds = %94, %92
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @PCI_VPD_RO_KEYWORD_MFR_ID, align 4
  %100 = call i32 @pci_vpd_find_info_keyword(i8* %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %191

104:                                              ; preds = %95
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i32 @pci_vpd_info_field_size(i8* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @VENDOR_ID_LEN, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %191

114:                                              ; preds = %104
  %115 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* @VENDOR_ID_LEN, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @PCI_VENDOR_ID_DELL, align 4
  %123 = call i32 @snprintf(i8* %23, i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @VENDOR_ID_LEN, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @PCI_VENDOR_ID_DELL, align 4
  %127 = call i32 @snprintf(i8* %27, i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i32, i32* @VENDOR_ID_LEN, align 4
  %133 = call i32 @strncmp(i8* %23, i8* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %114
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* @VENDOR_ID_LEN, align 4
  %141 = call i32 @strncmp(i8* %27, i8* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %190, label %143

143:                                              ; preds = %135, %114
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @PCI_VPD_RO_KEYWORD_VENDOR0, align 4
  %148 = call i32 @pci_vpd_find_info_keyword(i8* %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %143
  %152 = load i8*, i8** %11, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = call i32 @pci_vpd_info_field_size(i8* %155)
  store i32 %156, i32* %13, align 4
  %157 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp slt i32 %162, 32
  br i1 %163, label %164, label %186

164:                                              ; preds = %151
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* @BNX2X_VPD_LEN, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %172 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @memcpy(i8* %173, i8* %177, i32 %178)
  %180 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %181 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8 32, i8* %185, align 1
  br label %186

186:                                              ; preds = %170, %164, %151
  br label %187

187:                                              ; preds = %186, %143
  %188 = load i8*, i8** %12, align 8
  %189 = call i32 @kfree(i8* %188)
  store i32 1, i32* %14, align 4
  br label %194

190:                                              ; preds = %135
  br label %191

191:                                              ; preds = %190, %113, %103, %91, %69, %47, %40
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 @kfree(i8* %192)
  store i32 1, i32* %14, align 4
  br label %194

194:                                              ; preds = %191, %187
  %195 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %195)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_read_vpd(i32, i32, i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @pci_vpd_find_tag(i8*, i32, i32, i32) #2

declare dso_local i32 @pci_vpd_lrdt_size(i8*) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @pci_vpd_find_info_keyword(i8*, i32, i32, i32) #2

declare dso_local i32 @pci_vpd_info_field_size(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

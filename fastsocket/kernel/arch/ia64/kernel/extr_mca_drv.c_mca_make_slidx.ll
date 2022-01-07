; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_mca_make_slidx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_mca_make_slidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@SAL_PROC_DEV_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_MEM_DEV_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_SEL_DEV_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_PCI_BUS_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_SMBIOS_DEV_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_PCI_COMP_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_SPECIFIC_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_HOST_CTLR_ERR_SECT_GUID = common dso_local global i32 0, align 4
@SAL_PLAT_BUS_ERR_SECT_GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @mca_make_slidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_make_slidx(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 10
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 9
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 8
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 11
  store i8* %44, i8** %46, align 8
  store i32 4, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %188, %2
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %198

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %9, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SAL_PROC_DEV_ERR_SECT_GUID, align 4
  %61 = call i32 @efi_guidcmp(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %51
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %66, %struct.TYPE_7__* %67)
  br label %187

69:                                               ; preds = %51
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SAL_PLAT_MEM_DEV_ERR_SECT_GUID, align 4
  %74 = call i32 @efi_guidcmp(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %79, %struct.TYPE_7__* %80)
  br label %186

82:                                               ; preds = %69
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SAL_PLAT_SEL_DEV_ERR_SECT_GUID, align 4
  %87 = call i32 @efi_guidcmp(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %92, %struct.TYPE_7__* %93)
  br label %185

95:                                               ; preds = %82
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SAL_PLAT_PCI_BUS_ERR_SECT_GUID, align 4
  %100 = call i32 @efi_guidcmp(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %105, %struct.TYPE_7__* %106)
  br label %184

108:                                              ; preds = %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SAL_PLAT_SMBIOS_DEV_ERR_SECT_GUID, align 4
  %113 = call i32 @efi_guidcmp(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %118, %struct.TYPE_7__* %119)
  br label %183

121:                                              ; preds = %108
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SAL_PLAT_PCI_COMP_ERR_SECT_GUID, align 4
  %126 = call i32 @efi_guidcmp(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %121
  store i32 1, i32* %5, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %131, %struct.TYPE_7__* %132)
  br label %182

134:                                              ; preds = %121
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SAL_PLAT_SPECIFIC_ERR_SECT_GUID, align 4
  %139 = call i32 @efi_guidcmp(i32 %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %134
  store i32 1, i32* %5, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %146 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %144, %struct.TYPE_7__* %145)
  br label %181

147:                                              ; preds = %134
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SAL_PLAT_HOST_CTLR_ERR_SECT_GUID, align 4
  %152 = call i32 @efi_guidcmp(i32 %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %147
  store i32 1, i32* %5, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %159 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %157, %struct.TYPE_7__* %158)
  br label %180

160:                                              ; preds = %147
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @SAL_PLAT_BUS_ERR_SECT_GUID, align 4
  %165 = call i32 @efi_guidcmp(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %160
  store i32 1, i32* %5, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %172 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %170, %struct.TYPE_7__* %171)
  br label %179

173:                                              ; preds = %160
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %178 = call i32 @LOG_INDEX_ADD_SECT_PTR(i32 %176, %struct.TYPE_7__* %177)
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %154
  br label %181

181:                                              ; preds = %180, %141
  br label %182

182:                                              ; preds = %181, %128
  br label %183

183:                                              ; preds = %182, %115
  br label %184

184:                                              ; preds = %183, %102
  br label %185

185:                                              ; preds = %184, %89
  br label %186

186:                                              ; preds = %185, %76
  br label %187

187:                                              ; preds = %186, %63
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %47

198:                                              ; preds = %47
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @efi_guidcmp(i32, i32) #1

declare dso_local i32 @LOG_INDEX_ADD_SECT_PTR(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

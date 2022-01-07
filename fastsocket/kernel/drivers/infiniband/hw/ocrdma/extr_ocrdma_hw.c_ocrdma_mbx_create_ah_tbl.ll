; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_ah_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_ah_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_create_ah_tbl = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.ocrdma_create_ah_tbl_rsp = type { i32 }
%struct.ocrdma_pbe = type { i8*, i8* }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_CREATE_AH_TBL = common dso_local global i32 0, align 4
@OCRDMA_MAX_AH = common dso_local global i32 0, align 4
@OCRDMA_AH_TBL_PAGES = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_NUM_PAGES_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_NUM_PAGES_MASK = common dso_local global i32 0, align 4
@OCRDMA_MAX_Q_PAGE_SIZE_CNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_MIN_Q_PAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_PAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_PAGE_SIZE_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_ENTRY_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_ENTRY_SIZE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_mbx_create_ah_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_create_ah_tbl(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_create_ah_tbl*, align 8
  %8 = alloca %struct.ocrdma_create_ah_tbl_rsp*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_pbe*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %9, align 8
  %16 = load i32, i32* @OCRDMA_CMD_CREATE_AH_TBL, align 4
  %17 = call %struct.ocrdma_create_ah_tbl* @ocrdma_init_emb_mqe(i32 %16, i32 16)
  store %struct.ocrdma_create_ah_tbl* %17, %struct.ocrdma_create_ah_tbl** %7, align 8
  %18 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %19 = icmp ne %struct.ocrdma_create_ah_tbl* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %260

22:                                               ; preds = %1
  %23 = load i32, i32* @OCRDMA_MAX_AH, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %29 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @OCRDMA_AH_TBL_PAGES, align 4
  %32 = load i32, i32* @OCRDMA_CREATE_AH_NUM_PAGES_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @OCRDMA_CREATE_AH_NUM_PAGES_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %37 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %50, %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @OCRDMA_MAX_Q_PAGE_SIZE_CNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @OCRDMA_MIN_Q_PAGE_SIZE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %44, %45
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %38

53:                                               ; preds = %48, %38
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @OCRDMA_CREATE_AH_PAGE_SIZE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @OCRDMA_CREATE_AH_PAGE_SIZE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %60 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @OCRDMA_CREATE_AH_ENTRY_SIZE_SHIFT, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 4, %64
  %66 = load i32, i32* @OCRDMA_CREATE_AH_ENTRY_SIZE_MASK, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %65, %67
  %69 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %70 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = or i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %79 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @dma_alloc_coherent(i32* %76, i32 %77, i32* %81, i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %86 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32* %84, i32** %88, align 8
  %89 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %90 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %53
  br label %256

96:                                               ; preds = %53
  %97 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %100 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @dma_alloc_coherent(i32* %98, i32 %102, i32* %10, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %107 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 5
  store i32* %105, i32** %108, align 8
  %109 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %110 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %96
  br label %234

115:                                              ; preds = %96
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %118 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %122 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %125 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %129 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memset(i32* %127, i32 0, i32 %131)
  %133 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %134 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to %struct.ocrdma_pbe*
  store %struct.ocrdma_pbe* %138, %struct.ocrdma_pbe** %11, align 8
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %168, %115
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %142 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @OCRDMA_MIN_Q_PAGE_SIZE, align 4
  %146 = sdiv i32 %144, %145
  %147 = icmp slt i32 %140, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %139
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %152, i64 %154
  %156 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %155, i32 0, i32 1
  store i8* %151, i8** %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i64 @upper_32_bits(i32 %157)
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %160, i64 %162
  %164 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %163, i32 0, i32 0
  store i8* %159, i8** %164, align 8
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %148
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %139

171:                                              ; preds = %139
  %172 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %173 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = zext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %180 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i8* %178, i8** %183, align 8
  %184 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %185 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @upper_32_bits(i32 %188)
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %192 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i8* %190, i8** %195, align 8
  %196 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %197 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %198 = bitcast %struct.ocrdma_create_ah_tbl* %197 to %struct.ocrdma_mqe*
  %199 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %196, %struct.ocrdma_mqe* %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %171
  br label %215

203:                                              ; preds = %171
  %204 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %205 = bitcast %struct.ocrdma_create_ah_tbl* %204 to %struct.ocrdma_create_ah_tbl_rsp*
  store %struct.ocrdma_create_ah_tbl_rsp* %205, %struct.ocrdma_create_ah_tbl_rsp** %8, align 8
  %206 = load %struct.ocrdma_create_ah_tbl_rsp*, %struct.ocrdma_create_ah_tbl_rsp** %8, align 8
  %207 = getelementptr inbounds %struct.ocrdma_create_ah_tbl_rsp, %struct.ocrdma_create_ah_tbl_rsp* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 65535
  %210 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %211 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  store i32 %209, i32* %212, align 4
  %213 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %214 = call i32 @kfree(%struct.ocrdma_create_ah_tbl* %213)
  store i32 0, i32* %2, align 4
  br label %260

215:                                              ; preds = %202
  %216 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %217 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %216, i32 0, i32 0
  %218 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %219 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %223 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %227 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @dma_free_coherent(i32* %217, i32 %221, i32* %225, i32 %229)
  %231 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %232 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  store i32* null, i32** %233, align 8
  br label %234

234:                                              ; preds = %215, %114
  %235 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %236 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 0
  %237 = load i32, i32* @PAGE_SIZE, align 4
  %238 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %239 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %244 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @dma_free_coherent(i32* %236, i32 %237, i32* %242, i32 %247)
  %249 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %250 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  store i32* null, i32** %252, align 8
  %253 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %254 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %256

256:                                              ; preds = %234, %95
  %257 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %258 = call i32 @kfree(%struct.ocrdma_create_ah_tbl* %257)
  %259 = load i32, i32* %5, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %256, %203, %20
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local %struct.ocrdma_create_ah_tbl* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_create_ah_tbl*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

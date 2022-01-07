; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_setup_virt_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_setup_virt_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { i32, i32, %struct.TYPE_2__, i64, i32*, i64, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i64, i32* }
%struct.nes_pbl = type { i32, i64, i32*, i64 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i32 }

@NES_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Userspace PBL, pbl_size=%u, pbl_entries = %d pbl_vbase=%p, pbl_pbase=%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"QP nespbl->page is NULL \0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"QP sq_vbase kmap failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"QP sq_vbase= %p sq_pbase=%lx rq_vbase=%p rq_pbase=%lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_qp*, %struct.nes_pbl*, %struct.nes_vnic*, i32, i32)* @nes_setup_virt_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_setup_virt_qp(%struct.nes_qp* %0, %struct.nes_pbl* %1, %struct.nes_vnic* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nes_qp*, align 8
  %8 = alloca %struct.nes_pbl*, align 8
  %9 = alloca %struct.nes_vnic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.nes_device*, align 8
  %18 = alloca %struct.nes_adapter*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nes_qp* %0, %struct.nes_qp** %7, align 8
  store %struct.nes_pbl* %1, %struct.nes_pbl** %8, align 8
  store %struct.nes_vnic* %2, %struct.nes_vnic** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %14, align 8
  %22 = load %struct.nes_vnic*, %struct.nes_vnic** %9, align 8
  %23 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %22, i32 0, i32 0
  %24 = load %struct.nes_device*, %struct.nes_device** %23, align 8
  store %struct.nes_device* %24, %struct.nes_device** %17, align 8
  %25 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %26 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %25, i32 0, i32 1
  %27 = load %struct.nes_adapter*, %struct.nes_adapter** %26, align 8
  store %struct.nes_adapter* %27, %struct.nes_adapter** %18, align 8
  %28 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %29 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %19, align 8
  %33 = load i32, i32* @NES_DBG_QP, align 4
  %34 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %35 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %19, align 8
  %38 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %39 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %43 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @nes_debug(i32 %33, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i8* %41, i64 %44)
  %46 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %47 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = lshr i64 %51, 12
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = lshr i64 %56, 12
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %21, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = shl i32 %66, 32
  %68 = or i32 %62, %67
  %69 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %70 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %73 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %5
  %77 = load i32, i32* @NES_DBG_QP, align 4
  %78 = call i32 (i32, i8*, ...) @nes_debug(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %80 = call i32 @kfree(%struct.nes_pbl* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %377

83:                                               ; preds = %5
  %84 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %85 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @kmap(i64 %86)
  %88 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %89 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %92 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %95 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  %96 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %97 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %83
  %102 = load i32, i32* @NES_DBG_QP, align 4
  %103 = call i32 (i32, i8*, ...) @nes_debug(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %105 = call i32 @kfree(%struct.nes_pbl* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %377

108:                                              ; preds = %83
  %109 = load i32, i32* %21, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  %121 = shl i32 %120, 32
  %122 = or i32 %116, %121
  %123 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %124 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @NES_DBG_QP, align 4
  %127 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %128 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %132 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %137 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %141 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = call i32 (i32, i8*, ...) @nes_debug(i32 %126, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %130, i64 %135, i8* %139, i64 %144)
  %146 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %147 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %146, i32 0, i32 0
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %151 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %180, label %154

154:                                              ; preds = %108
  %155 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %156 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %159 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %162 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %165 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @pci_free_consistent(i32 %157, i32 %160, i32* %163, i64 %166)
  %168 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %169 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %168, i32 0, i32 0
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %173 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @kunmap(i64 %174)
  %176 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %177 = call i32 @kfree(%struct.nes_pbl* %176)
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %6, align 4
  br label %377

180:                                              ; preds = %108
  %181 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %182 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %182, align 4
  %185 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %186 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %185, i32 0, i32 0
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %190 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %193 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %192, i32 0, i32 7
  %194 = call i8* @pci_alloc_consistent(i32 %191, i32 256, i64* %193)
  %195 = bitcast i8* %194 to i32*
  %196 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %197 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %196, i32 0, i32 6
  store i32* %195, i32** %197, align 8
  %198 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %199 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %16, align 8
  %201 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %202 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %201, i32 0, i32 6
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %239, label %205

205:                                              ; preds = %180
  %206 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %207 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %210 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %213 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %216 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @pci_free_consistent(i32 %208, i32 %211, i32* %214, i64 %217)
  %219 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %220 = call i32 @kfree(%struct.nes_pbl* %219)
  %221 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %222 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %221, i32 0, i32 0
  %223 = load i64, i64* %12, align 8
  %224 = call i32 @spin_lock_irqsave(i32* %222, i64 %223)
  %225 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %226 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %230 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %229, i32 0, i32 0
  %231 = load i64, i64* %12, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* %230, i64 %231)
  %233 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %234 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @kunmap(i64 %235)
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %6, align 4
  br label %377

239:                                              ; preds = %180
  %240 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %241 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @memset(i32* %242, i32 0, i32 256)
  %244 = load i32*, i32** %16, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 16
  store i32* %245, i32** %15, align 8
  %246 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %247 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  store i32* %248, i32** %14, align 8
  br label %249

249:                                              ; preds = %253, %239
  %250 = load i32, i32* %21, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %21, align 4
  %252 = icmp ne i32 %250, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load i32*, i32** %14, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %14, align 8
  %256 = load i32, i32* %254, align 4
  %257 = load i32*, i32** %15, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %15, align 8
  store i32 %256, i32* %257, align 4
  br label %249

259:                                              ; preds = %249
  %260 = load i32*, i32** %16, align 8
  store i32* %260, i32** %15, align 8
  br label %261

261:                                              ; preds = %265, %259
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %20, align 4
  %264 = icmp ne i32 %262, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load i32*, i32** %14, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %14, align 8
  %268 = load i32, i32* %266, align 4
  %269 = load i32*, i32** %15, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 1
  store i32* %270, i32** %15, align 8
  store i32 %268, i32* %269, align 4
  br label %261

271:                                              ; preds = %261
  %272 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %273 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %276 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %279 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %282 = getelementptr inbounds %struct.nes_pbl, %struct.nes_pbl* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @pci_free_consistent(i32 %274, i32 %277, i32* %280, i64 %283)
  %285 = load %struct.nes_pbl*, %struct.nes_pbl** %8, align 8
  %286 = call i32 @kfree(%struct.nes_pbl* %285)
  %287 = call i32 @max(i64 4, i64 256)
  %288 = add nsw i32 %287, 256
  %289 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %290 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* @PAGE_SIZE, align 4
  %292 = sub nsw i32 %291, 1
  %293 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %294 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* @PAGE_SIZE, align 4
  %298 = sub nsw i32 %297, 1
  %299 = xor i32 %298, -1
  %300 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %301 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = and i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %305 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %308 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %311 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 4
  %313 = call i8* @pci_alloc_consistent(i32 %306, i32 %309, i64* %312)
  store i8* %313, i8** %13, align 8
  %314 = load i8*, i8** %13, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %347, label %316

316:                                              ; preds = %271
  %317 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  %318 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %321 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %320, i32 0, i32 6
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %324 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %323, i32 0, i32 7
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @pci_free_consistent(i32 %319, i32 256, i32* %322, i64 %325)
  %327 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %328 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %327, i32 0, i32 6
  store i32* null, i32** %328, align 8
  %329 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %330 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %329, i32 0, i32 0
  %331 = load i64, i64* %12, align 8
  %332 = call i32 @spin_lock_irqsave(i32* %330, i64 %331)
  %333 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %334 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  %337 = load %struct.nes_adapter*, %struct.nes_adapter** %18, align 8
  %338 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %337, i32 0, i32 0
  %339 = load i64, i64* %12, align 8
  %340 = call i32 @spin_unlock_irqrestore(i32* %338, i64 %339)
  %341 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %342 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %341, i32 0, i32 5
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @kunmap(i64 %343)
  %345 = load i32, i32* @ENOMEM, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %6, align 4
  br label %377

347:                                              ; preds = %271
  %348 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %349 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %348, i32 0, i32 1
  store i32 1, i32* %349, align 4
  %350 = load i8*, i8** %13, align 8
  %351 = bitcast i8* %350 to i32*
  %352 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %353 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 5
  store i32* %351, i32** %354, align 8
  %355 = load i8*, i8** %13, align 8
  %356 = getelementptr i8, i8* %355, i64 256
  store i8* %356, i8** %13, align 8
  %357 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %358 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 5
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @memset(i32* %360, i32 0, i32 256)
  %362 = load i8*, i8** %13, align 8
  %363 = bitcast i8* %362 to i32*
  %364 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %365 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %364, i32 0, i32 4
  store i32* %363, i32** %365, align 8
  %366 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %367 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %366, i32 0, i32 4
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @memset(i32* %368, i32 0, i32 4)
  %370 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %371 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = add nsw i64 %373, 256
  %375 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %376 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %375, i32 0, i32 3
  store i64 %374, i64* %376, align 8
  store i32 0, i32* %6, align 4
  br label %377

377:                                              ; preds = %347, %316, %205, %154, %101, %76
  %378 = load i32, i32* %6, align 4
  ret i32 %378
}

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.nes_pbl*) #1

declare dso_local i32 @kmap(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kunmap(i64) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

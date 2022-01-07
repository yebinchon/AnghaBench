; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_systab_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_systab_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.i2o_controller = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.resource, %struct.resource, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.device }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }
%struct.resource = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8** }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: requires private memory resources.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Can't find parent resource!\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: allocated %llu bytes of PCI memory at 0x%016llX.\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: allocated %llu bytes of PCI I/O at 0x%016llX.\0A\00", align 1
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@i2o_systab = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SGL_OFFSET_6 = common dso_local global i32 0, align 4
@I2O_CMD_SYS_TAB_SET = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: Unable to set SysTab (status=%#x).\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: SysTab set.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_systab_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_systab_set(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca %struct.i2o_message*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %11 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %12 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %16 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %1
  %27 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %28 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %27, i32 0, i32 6
  store %struct.resource* %28, %struct.resource** %9, align 8
  %29 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %30 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %29, i32 0, i32 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.resource*, %struct.resource** %9, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.resource*, %struct.resource** %9, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.resource*, %struct.resource** %9, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %46 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @osm_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %50 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %49, i32 0, i32 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load %struct.resource*, %struct.resource** %9, align 8
  %53 = call %struct.resource* @pci_find_parent_resource(%struct.TYPE_11__* %51, %struct.resource* %52)
  store %struct.resource* %53, %struct.resource** %7, align 8
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = icmp eq %struct.resource* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %26
  %57 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %58 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @osm_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %26
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = icmp ne %struct.resource* %62, null
  br i1 %63, label %64, label %113

64:                                               ; preds = %61
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = load %struct.resource*, %struct.resource** %9, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @allocate_resource(%struct.resource* %65, %struct.resource* %66, i32 %69, i32 %72, i32 %75, i32 1048576, i32* null, i32* null)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %64
  %79 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %80 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.resource*, %struct.resource** %9, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 1, %83
  %85 = load %struct.resource*, %struct.resource** %9, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.resource*, %struct.resource** %9, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %97 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.resource*, %struct.resource** %9, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 1, %101
  %103 = load %struct.resource*, %struct.resource** %9, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = load %struct.resource*, %struct.resource** %9, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 (i8*, i32, ...) @osm_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %98, i64 %107, i64 %111)
  br label %113

113:                                              ; preds = %78, %64, %61
  br label %114

114:                                              ; preds = %113, %1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %210

122:                                              ; preds = %114
  %123 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %124 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %123, i32 0, i32 5
  store %struct.resource* %124, %struct.resource** %10, align 8
  %125 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %126 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %125, i32 0, i32 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.resource*, %struct.resource** %10, align 8
  %133 = getelementptr inbounds %struct.resource, %struct.resource* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @IORESOURCE_IO, align 4
  %135 = load %struct.resource*, %struct.resource** %10, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.resource*, %struct.resource** %10, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 0
  store i32 0, i32* %138, align 4
  %139 = load %struct.resource*, %struct.resource** %10, align 8
  %140 = getelementptr inbounds %struct.resource, %struct.resource* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %142 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, i32, ...) @osm_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %146 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %145, i32 0, i32 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load %struct.resource*, %struct.resource** %10, align 8
  %149 = call %struct.resource* @pci_find_parent_resource(%struct.TYPE_11__* %147, %struct.resource* %148)
  store %struct.resource* %149, %struct.resource** %7, align 8
  %150 = load %struct.resource*, %struct.resource** %7, align 8
  %151 = icmp eq %struct.resource* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %122
  %153 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %154 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @osm_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %152, %122
  %158 = load %struct.resource*, %struct.resource** %7, align 8
  %159 = icmp ne %struct.resource* %158, null
  br i1 %159, label %160, label %209

160:                                              ; preds = %157
  %161 = load %struct.resource*, %struct.resource** %7, align 8
  %162 = load %struct.resource*, %struct.resource** %10, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @allocate_resource(%struct.resource* %161, %struct.resource* %162, i32 %165, i32 %168, i32 %171, i32 1048576, i32* null, i32* null)
  %173 = icmp sge i64 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %160
  %175 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %176 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.resource*, %struct.resource** %10, align 8
  %178 = getelementptr inbounds %struct.resource, %struct.resource* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 1, %179
  %181 = load %struct.resource*, %struct.resource** %10, align 8
  %182 = getelementptr inbounds %struct.resource, %struct.resource* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %180, %183
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.resource*, %struct.resource** %10, align 8
  %188 = getelementptr inbounds %struct.resource, %struct.resource* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %193 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.resource*, %struct.resource** %10, align 8
  %196 = getelementptr inbounds %struct.resource, %struct.resource* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 1, %197
  %199 = load %struct.resource*, %struct.resource** %10, align 8
  %200 = getelementptr inbounds %struct.resource, %struct.resource* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %198, %201
  %203 = sext i32 %202 to i64
  %204 = load %struct.resource*, %struct.resource** %10, align 8
  %205 = getelementptr inbounds %struct.resource, %struct.resource* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = call i32 (i8*, i32, ...) @osm_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %194, i64 %203, i64 %207)
  br label %209

209:                                              ; preds = %174, %160, %157
  br label %210

210:                                              ; preds = %209, %114
  %211 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %212 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %213 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %211, i32 %212)
  store %struct.i2o_message* %213, %struct.i2o_message** %4, align 8
  %214 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %215 = call i64 @IS_ERR(%struct.i2o_message* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %219 = call i32 @PTR_ERR(%struct.i2o_message* %218)
  store i32 %219, i32* %2, align 4
  br label %342

220:                                              ; preds = %210
  %221 = load %struct.device*, %struct.device** %6, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 2), align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 1), align 4
  %224 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %225 = call i32 @dma_map_single(%struct.device* %221, i32 %222, i32 %223, i32 %224)
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 0), align 4
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 0), align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %220
  %229 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %230 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %231 = call i32 @i2o_msg_nop(%struct.i2o_controller* %229, %struct.i2o_message* %230)
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %2, align 4
  br label %342

234:                                              ; preds = %220
  %235 = call i32 @I2O_MESSAGE_SIZE(i32 12)
  %236 = load i32, i32* @SGL_OFFSET_6, align 4
  %237 = or i32 %235, %236
  %238 = call i8* @cpu_to_le32(i32 %237)
  %239 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %240 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i8**, i8*** %241, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 0
  store i8* %238, i8** %243, align 8
  %244 = load i32, i32* @I2O_CMD_SYS_TAB_SET, align 4
  %245 = shl i32 %244, 24
  %246 = load i32, i32* @HOST_TID, align 4
  %247 = shl i32 %246, 12
  %248 = or i32 %245, %247
  %249 = load i32, i32* @ADAPTER_TID, align 4
  %250 = or i32 %248, %249
  %251 = call i8* @cpu_to_le32(i32 %250)
  %252 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %253 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i8**, i8*** %254, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  store i8* %251, i8** %256, align 8
  %257 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %258 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 2
  %261 = call i8* @cpu_to_le32(i32 %260)
  %262 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %263 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %262, i32 0, i32 0
  %264 = load i8**, i8*** %263, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 0
  store i8* %261, i8** %265, align 8
  %266 = call i8* @cpu_to_le32(i32 0)
  %267 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %268 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %267, i32 0, i32 0
  %269 = load i8**, i8*** %268, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 1
  store i8* %266, i8** %270, align 8
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 1), align 4
  %272 = or i32 1409286144, %271
  %273 = call i8* @cpu_to_le32(i32 %272)
  %274 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %275 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %274, i32 0, i32 0
  %276 = load i8**, i8*** %275, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 2
  store i8* %273, i8** %277, align 8
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 0), align 4
  %279 = call i8* @cpu_to_le32(i32 %278)
  %280 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %281 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %280, i32 0, i32 0
  %282 = load i8**, i8*** %281, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 3
  store i8* %279, i8** %283, align 8
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = or i32 1409286144, %286
  %288 = call i8* @cpu_to_le32(i32 %287)
  %289 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %290 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %289, i32 0, i32 0
  %291 = load i8**, i8*** %290, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i64 4
  store i8* %288, i8** %292, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = call i8* @cpu_to_le32(i32 %295)
  %297 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %298 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %297, i32 0, i32 0
  %299 = load i8**, i8*** %298, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 5
  store i8* %296, i8** %300, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = or i32 -738197504, %303
  %305 = call i8* @cpu_to_le32(i32 %304)
  %306 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %307 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %306, i32 0, i32 0
  %308 = load i8**, i8*** %307, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 6
  store i8* %305, i8** %309, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @cpu_to_le32(i32 %312)
  %314 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %315 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %314, i32 0, i32 0
  %316 = load i8**, i8*** %315, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 6
  store i8* %313, i8** %317, align 8
  %318 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %319 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %320 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %318, %struct.i2o_message* %319, i32 120)
  store i32 %320, i32* %8, align 4
  %321 = load %struct.device*, %struct.device** %6, align 8
  %322 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 0), align 4
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @i2o_systab, i32 0, i32 1), align 4
  %324 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %325 = call i32 @dma_unmap_single(%struct.device* %321, i32 %322, i32 %323, i32 %324)
  %326 = load i32, i32* %8, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %234
  %329 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %330 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %8, align 4
  %333 = sub nsw i32 0, %332
  %334 = call i32 @osm_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %331, i32 %333)
  br label %340

335:                                              ; preds = %234
  %336 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %337 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @osm_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %335, %328
  %341 = load i32, i32* %8, align 4
  store i32 %341, i32* %2, align 4
  br label %342

342:                                              ; preds = %340, %228, %217
  %343 = load i32, i32* %2, align 4
  ret i32 %343
}

declare dso_local i32 @osm_info(i8*, i32, ...) #1

declare dso_local %struct.resource* @pci_find_parent_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i32 @osm_warn(i8*, i32) #1

declare dso_local i64 @allocate_resource(%struct.resource*, %struct.resource*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @i2o_msg_nop(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @I2O_MESSAGE_SIZE(i32) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @osm_err(i8*, i32, i32) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

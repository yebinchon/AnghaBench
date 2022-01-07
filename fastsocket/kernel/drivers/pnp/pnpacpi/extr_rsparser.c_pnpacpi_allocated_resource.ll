; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_allocated_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_allocated_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_extended_irq, %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_memory32, %struct.acpi_resource_memory24, %struct.acpi_resource_vendor_typed, %struct.acpi_resource_fixed_io, %struct.acpi_resource_io, %struct.acpi_resource_dma, %struct.acpi_resource_irq }
%struct.acpi_resource_extended_irq = type { i32, i32, i32, i32, i32* }
%struct.acpi_resource_fixed_memory32 = type { i32, i32, i32 }
%struct.acpi_resource_memory32 = type { i32, i32, i32 }
%struct.acpi_resource_memory24 = type { i32, i32, i32 }
%struct.acpi_resource_vendor_typed = type { i32 }
%struct.acpi_resource_fixed_io = type { i32, i32 }
%struct.acpi_resource_io = type { i32, i32, i32 }
%struct.acpi_resource_dma = type { i32*, i32, i32, i32, i32 }
%struct.acpi_resource_irq = type { i32, i32, i32, i32, i32* }
%struct.pnp_dev = type { i32, i32 }

@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"multiple interrupts in _CRS descriptor; configuration can't be changed\0A\00", align 1
@PNP_WRITE = common dso_local global i32 0, align 4
@ACPI_DECODE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown resource type %d in _CRS\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @pnpacpi_allocated_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpacpi_allocated_resource(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca %struct.acpi_resource_irq*, align 8
  %8 = alloca %struct.acpi_resource_dma*, align 8
  %9 = alloca %struct.acpi_resource_io*, align 8
  %10 = alloca %struct.acpi_resource_fixed_io*, align 8
  %11 = alloca %struct.acpi_resource_vendor_typed*, align 8
  %12 = alloca %struct.acpi_resource_memory24*, align 8
  %13 = alloca %struct.acpi_resource_memory32*, align 8
  %14 = alloca %struct.acpi_resource_fixed_memory32*, align 8
  %15 = alloca %struct.acpi_resource_extended_irq*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.pnp_dev*
  store %struct.pnp_dev* %19, %struct.pnp_dev** %6, align 8
  %20 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %276 [
    i32 132, label %23
    i32 141, label %85
    i32 133, label %123
    i32 129, label %138
    i32 140, label %138
    i32 136, label %139
    i32 128, label %152
    i32 139, label %159
    i32 131, label %160
    i32 130, label %175
    i32 135, label %190
    i32 144, label %205
    i32 143, label %205
    i32 142, label %205
    i32 138, label %209
    i32 137, label %213
    i32 134, label %275
  ]

23:                                               ; preds = %2
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  store %struct.acpi_resource_irq* %26, %struct.acpi_resource_irq** %7, align 8
  %27 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %33 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %34 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %32, i32 0, i32 %33)
  br label %84

35:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %39 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %44 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %52 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %55 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %58 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pnpacpi_parse_allocated_irqresource(%struct.pnp_dev* %43, i32 %50, i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %66 = call i32 @pnp_can_write(%struct.pnp_dev* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %70 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_warn(i32* %75, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @PNP_WRITE, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %80 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %73, %68, %64
  br label %84

84:                                               ; preds = %83, %31
  br label %284

85:                                               ; preds = %2
  %86 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %87 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 7
  store %struct.acpi_resource_dma* %88, %struct.acpi_resource_dma** %8, align 8
  %89 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %8, align 8
  %90 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %85
  %94 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %8, align 8
  %95 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %102 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %8, align 8
  %103 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %8, align 8
  %106 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %8, align 8
  %109 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dma_flags(%struct.pnp_dev* %101, i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %17, align 4
  br label %114

112:                                              ; preds = %93, %85
  %113 = load i32, i32* @IORESOURCE_DISABLED, align 4
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %112, %100
  %115 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %116 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %8, align 8
  %117 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %115, i32 %120, i32 %121)
  br label %284

123:                                              ; preds = %2
  %124 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %125 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 6
  store %struct.acpi_resource_io* %126, %struct.acpi_resource_io** %9, align 8
  %127 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %128 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %9, align 8
  %129 = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %9, align 8
  %132 = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %9, align 8
  %135 = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev* %127, i32 %130, i32 %133, i32 %136)
  br label %284

138:                                              ; preds = %2, %2
  br label %284

139:                                              ; preds = %2
  %140 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %141 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 5
  store %struct.acpi_resource_fixed_io* %142, %struct.acpi_resource_fixed_io** %10, align 8
  %143 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %144 = load %struct.acpi_resource_fixed_io*, %struct.acpi_resource_fixed_io** %10, align 8
  %145 = getelementptr inbounds %struct.acpi_resource_fixed_io, %struct.acpi_resource_fixed_io* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.acpi_resource_fixed_io*, %struct.acpi_resource_fixed_io** %10, align 8
  %148 = getelementptr inbounds %struct.acpi_resource_fixed_io, %struct.acpi_resource_fixed_io* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ACPI_DECODE_10, align 4
  %151 = call i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev* %143, i32 %146, i32 %149, i32 %150)
  br label %284

152:                                              ; preds = %2
  %153 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %154 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  store %struct.acpi_resource_vendor_typed* %155, %struct.acpi_resource_vendor_typed** %11, align 8
  %156 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %157 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %11, align 8
  %158 = call i32 @pnpacpi_parse_allocated_vendor(%struct.pnp_dev* %156, %struct.acpi_resource_vendor_typed* %157)
  br label %284

159:                                              ; preds = %2
  br label %284

160:                                              ; preds = %2
  %161 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %162 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  store %struct.acpi_resource_memory24* %163, %struct.acpi_resource_memory24** %12, align 8
  %164 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %165 = load %struct.acpi_resource_memory24*, %struct.acpi_resource_memory24** %12, align 8
  %166 = getelementptr inbounds %struct.acpi_resource_memory24, %struct.acpi_resource_memory24* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.acpi_resource_memory24*, %struct.acpi_resource_memory24** %12, align 8
  %169 = getelementptr inbounds %struct.acpi_resource_memory24, %struct.acpi_resource_memory24* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.acpi_resource_memory24*, %struct.acpi_resource_memory24** %12, align 8
  %172 = getelementptr inbounds %struct.acpi_resource_memory24, %struct.acpi_resource_memory24* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev* %164, i32 %167, i32 %170, i32 %173)
  br label %284

175:                                              ; preds = %2
  %176 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %177 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  store %struct.acpi_resource_memory32* %178, %struct.acpi_resource_memory32** %13, align 8
  %179 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %180 = load %struct.acpi_resource_memory32*, %struct.acpi_resource_memory32** %13, align 8
  %181 = getelementptr inbounds %struct.acpi_resource_memory32, %struct.acpi_resource_memory32* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.acpi_resource_memory32*, %struct.acpi_resource_memory32** %13, align 8
  %184 = getelementptr inbounds %struct.acpi_resource_memory32, %struct.acpi_resource_memory32* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.acpi_resource_memory32*, %struct.acpi_resource_memory32** %13, align 8
  %187 = getelementptr inbounds %struct.acpi_resource_memory32, %struct.acpi_resource_memory32* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev* %179, i32 %182, i32 %185, i32 %188)
  br label %284

190:                                              ; preds = %2
  %191 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %192 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  store %struct.acpi_resource_fixed_memory32* %193, %struct.acpi_resource_fixed_memory32** %14, align 8
  %194 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %195 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %14, align 8
  %196 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %14, align 8
  %199 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %14, align 8
  %202 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev* %194, i32 %197, i32 %200, i32 %203)
  br label %284

205:                                              ; preds = %2, %2, %2
  %206 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %207 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %208 = call i32 @pnpacpi_parse_allocated_address_space(%struct.pnp_dev* %206, %struct.acpi_resource* %207)
  br label %284

209:                                              ; preds = %2
  %210 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %211 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %212 = call i32 @pnpacpi_parse_allocated_ext_address_space(%struct.pnp_dev* %210, %struct.acpi_resource* %211)
  br label %284

213:                                              ; preds = %2
  %214 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %215 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %216, %struct.acpi_resource_extended_irq** %15, align 8
  %217 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %218 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %223 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %224 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %222, i32 0, i32 %223)
  br label %274

225:                                              ; preds = %213
  store i32 0, i32* %16, align 4
  br label %226

226:                                              ; preds = %251, %225
  %227 = load i32, i32* %16, align 4
  %228 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %229 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %254

232:                                              ; preds = %226
  %233 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %234 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %235 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %242 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %245 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %248 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @pnpacpi_parse_allocated_irqresource(%struct.pnp_dev* %233, i32 %240, i32 %243, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %232
  %252 = load i32, i32* %16, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %16, align 4
  br label %226

254:                                              ; preds = %226
  %255 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %256 = call i32 @pnp_can_write(%struct.pnp_dev* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %254
  %259 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %15, align 8
  %260 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %273

263:                                              ; preds = %258
  %264 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %265 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %264, i32 0, i32 0
  %266 = call i32 (i32*, i8*, ...) @dev_warn(i32* %265, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %267 = load i32, i32* @PNP_WRITE, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %270 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %263, %258, %254
  br label %274

274:                                              ; preds = %273, %221
  br label %284

275:                                              ; preds = %2
  br label %284

276:                                              ; preds = %2
  %277 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %278 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %277, i32 0, i32 0
  %279 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %280 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 (i32*, i8*, ...) @dev_warn(i32* %278, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* @AE_ERROR, align 4
  store i32 %283, i32* %3, align 4
  br label %286

284:                                              ; preds = %275, %274, %209, %205, %190, %175, %160, %159, %152, %139, %138, %123, %114, %84
  %285 = load i32, i32* @AE_OK, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %284, %276
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_irqresource(%struct.pnp_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @pnp_can_write(%struct.pnp_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @dma_flags(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_vendor(%struct.pnp_dev*, %struct.acpi_resource_vendor_typed*) #1

declare dso_local i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_address_space(%struct.pnp_dev*, %struct.acpi_resource*) #1

declare dso_local i32 @pnpacpi_parse_allocated_ext_address_space(%struct.pnp_dev*, %struct.acpi_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

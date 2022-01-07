; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ax_drvdata = type { i32, %struct.ax_drvdata*, i32*, i32*, i32*, i32*, %struct.device*, %struct.parport* }
%struct.parport = type { %struct.ax_drvdata* }
%struct.resource = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no memory for private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no MEM specified\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot reserve memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cannot ioremap region\0A\00", align 1
@PARPORT_IRQ_NONE = common dso_local global i32 0, align 4
@PARPORT_DMA_NONE = common dso_local global i32 0, align 4
@parport_ax88796_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register parallel port\0A\00", align 1
@AX_CPR_STRB = common dso_local global i32 0, align 4
@parport_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"attached parallel port driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @parport_ax88796_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ax88796_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ax_drvdata*, align 8
  %6 = alloca %struct.parport*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %4, align 8
  store %struct.parport* null, %struct.parport** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ax_drvdata* @kzalloc(i32 64, i32 %14)
  store %struct.ax_drvdata* %15, %struct.ax_drvdata** %5, align 8
  %16 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %17 = icmp eq %struct.ax_drvdata* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %189

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %185

34:                                               ; preds = %23
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %44, 3
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.ax_drvdata* @request_mem_region(i32 %49, i64 %50, i32 %53)
  %55 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %56 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %55, i32 0, i32 1
  store %struct.ax_drvdata* %54, %struct.ax_drvdata** %56, align 8
  %57 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %58 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %57, i32 0, i32 1
  %59 = load %struct.ax_drvdata*, %struct.ax_drvdata** %58, align 8
  %60 = icmp eq %struct.ax_drvdata* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %34
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %185

66:                                               ; preds = %34
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32* @ioremap(i32 %69, i64 %70)
  %72 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %73 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %75 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %176

83:                                               ; preds = %66
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i32 @platform_get_irq(%struct.platform_device* %84, i32 0)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @PARPORT_IRQ_NONE, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %92 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = ptrtoint i32* %93 to i64
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @PARPORT_DMA_NONE, align 4
  %97 = call %struct.parport* @parport_register_port(i64 %94, i32 %95, i32 %96, i32* @parport_ax88796_ops)
  store %struct.parport* %97, %struct.parport** %6, align 8
  %98 = load %struct.parport*, %struct.parport** %6, align 8
  %99 = icmp eq %struct.parport* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %171

105:                                              ; preds = %90
  %106 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %107 = load %struct.parport*, %struct.parport** %6, align 8
  %108 = getelementptr inbounds %struct.parport, %struct.parport* %107, i32 0, i32 0
  store %struct.ax_drvdata* %106, %struct.ax_drvdata** %108, align 8
  %109 = load %struct.parport*, %struct.parport** %6, align 8
  %110 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %111 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %110, i32 0, i32 7
  store %struct.parport* %109, %struct.parport** %111, align 8
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %114 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %113, i32 0, i32 6
  store %struct.device* %112, %struct.device** %114, align 8
  %115 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %116 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %119 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %118, i32 0, i32 5
  store i32* %117, i32** %119, align 8
  %120 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %121 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %128 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %127, i32 0, i32 4
  store i32* %126, i32** %128, align 8
  %129 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %130 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %137 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %136, i32 0, i32 3
  store i32* %135, i32** %137, align 8
  %138 = load i32, i32* @AX_CPR_STRB, align 4
  %139 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %140 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @writeb(i32 %138, i32* %141)
  %143 = load i32, i32* %10, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %105
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @parport_irq_handler, align 4
  %148 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.parport*, %struct.parport** %6, align 8
  %153 = call i32 @request_irq(i32 %146, i32 %147, i32 %148, i32 %151, %struct.parport* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %168

157:                                              ; preds = %145
  %158 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %159 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %105
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.parport*, %struct.parport** %6, align 8
  %163 = call i32 @platform_set_drvdata(%struct.platform_device* %161, %struct.parport* %162)
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 @dev_info(%struct.device* %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %166 = load %struct.parport*, %struct.parport** %6, align 8
  %167 = call i32 @parport_announce_port(%struct.parport* %166)
  store i32 0, i32* %2, align 4
  br label %189

168:                                              ; preds = %156
  %169 = load %struct.parport*, %struct.parport** %6, align 8
  %170 = call i32 @parport_remove_port(%struct.parport* %169)
  br label %171

171:                                              ; preds = %168, %100
  %172 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %173 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @iounmap(i32* %174)
  br label %176

176:                                              ; preds = %171, %78
  %177 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %178 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %177, i32 0, i32 1
  %179 = load %struct.ax_drvdata*, %struct.ax_drvdata** %178, align 8
  %180 = call i32 @release_resource(%struct.ax_drvdata* %179)
  %181 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %182 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %181, i32 0, i32 1
  %183 = load %struct.ax_drvdata*, %struct.ax_drvdata** %182, align 8
  %184 = call i32 @kfree(%struct.ax_drvdata* %183)
  br label %185

185:                                              ; preds = %176, %61, %29
  %186 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %187 = call i32 @kfree(%struct.ax_drvdata* %186)
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %160, %18
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.ax_drvdata* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.ax_drvdata* @request_mem_region(i32, i64, i32) #1

declare dso_local i32* @ioremap(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.parport* @parport_register_port(i64, i32, i32, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.parport*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.parport*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @parport_announce_port(%struct.parport*) #1

declare dso_local i32 @parport_remove_port(%struct.parport*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.ax_drvdata*) #1

declare dso_local i32 @kfree(%struct.ax_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

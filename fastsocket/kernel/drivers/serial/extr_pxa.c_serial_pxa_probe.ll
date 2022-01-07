; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_serial_pxa_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_serial_pxa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pxa_port = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32*, i64, i64, i32, i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_PXA = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@serial_pxa_pops = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"FFUART\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"BTUART\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"STUART\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HWUART\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@serial_pxa_ports = common dso_local global %struct.uart_pxa_port** null, align 8
@serial_pxa_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_pxa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pxa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_pxa_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_IRQ, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 0)
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %162

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.uart_pxa_port* @kzalloc(i32 80, i32 %23)
  store %struct.uart_pxa_port* %24, %struct.uart_pxa_port** %4, align 8
  %25 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %26 = icmp ne %struct.uart_pxa_port* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %162

30:                                               ; preds = %22
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = call i32 @clk_get(i32* %32, i32* null)
  %34 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %158

46:                                               ; preds = %30
  %47 = load i32, i32* @PORT_PXA, align 4
  %48 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 10
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @UPIO_MEM, align 4
  %52 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 9
  store i32 %51, i32* %54, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 8
  store i64 %57, i64* %60, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %65 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  store i64 %63, i64* %66, align 8
  %67 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %68 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 64, i32* %69, align 8
  %70 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i32* @serial_pxa_pops, i32** %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 1
  %81 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i32* %80, i32** %83, align 8
  %84 = load i32, i32* @UPF_IOREMAP, align 4
  %85 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %91 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @clk_get_rate(i32 %92)
  %94 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %112 [
    i32 0, label %100
    i32 1, label %103
    i32 2, label %106
    i32 3, label %109
  ]

100:                                              ; preds = %46
  %101 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %102 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %102, align 8
  br label %115

103:                                              ; preds = %46
  %104 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %105, align 8
  br label %115

106:                                              ; preds = %46
  %107 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %108, align 8
  br label %115

109:                                              ; preds = %46
  %110 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %111, align 8
  br label %115

112:                                              ; preds = %46
  %113 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %114 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %114, align 8
  br label %115

115:                                              ; preds = %112, %109, %106, %103, %100
  %116 = load %struct.resource*, %struct.resource** %5, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.resource*, %struct.resource** %5, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.resource*, %struct.resource** %5, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = add nsw i64 %125, 1
  %127 = call i32 @ioremap(i64 %118, i64 %126)
  %128 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %129 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  %131 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %115
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %153

139:                                              ; preds = %115
  %140 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %141 = load %struct.uart_pxa_port**, %struct.uart_pxa_port*** @serial_pxa_ports, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.uart_pxa_port*, %struct.uart_pxa_port** %141, i64 %145
  store %struct.uart_pxa_port* %140, %struct.uart_pxa_port** %146, align 8
  %147 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %148 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %147, i32 0, i32 2
  %149 = call i32 @uart_add_one_port(i32* @serial_pxa_reg, %struct.TYPE_2__* %148)
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.uart_pxa_port* %151)
  store i32 0, i32* %2, align 4
  br label %162

153:                                              ; preds = %136
  %154 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %155 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @clk_put(i32 %156)
  br label %158

158:                                              ; preds = %153, %41
  %159 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %4, align 8
  %160 = call i32 @kfree(%struct.uart_pxa_port* %159)
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %139, %27, %19
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.uart_pxa_port* @kzalloc(i32, i32) #1

declare dso_local i32 @clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_pxa_port*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.uart_pxa_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

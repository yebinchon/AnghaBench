; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_mcp23s08.c_mcp23s08_probe_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_mcp23s08.c_mcp23s08_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp23s08_driver_data = type { %struct.mcp23s08** }
%struct.mcp23s08 = type { i32, i64*, %struct.TYPE_2__, %struct.spi_device*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"mcp23s08\00", align 1
@mcp23s08_direction_input = common dso_local global i32 0, align 4
@mcp23s08_get = common dso_local global i32 0, align 4
@mcp23s08_direction_output = common dso_local global i32 0, align 4
@mcp23s08_set = common dso_local global i32 0, align 4
@mcp23s08_dbg_show = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MCP_IOCON = common dso_local global i32 0, align 4
@IOCON_SEQOP = common dso_local global i32 0, align 4
@IOCON_HAEN = common dso_local global i32 0, align 4
@MCP_GPPU = common dso_local global i32 0, align 4
@MCP_IPOL = common dso_local global i64 0, align 8
@MCP_GPINTEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"can't setup chip %d, --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32, i32)* @mcp23s08_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp23s08_probe_one(%struct.spi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mcp23s08_driver_data*, align 8
  %10 = alloca %struct.mcp23s08*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %15 = call %struct.mcp23s08_driver_data* @spi_get_drvdata(%struct.spi_device* %14)
  store %struct.mcp23s08_driver_data* %15, %struct.mcp23s08_driver_data** %9, align 8
  %16 = load %struct.mcp23s08_driver_data*, %struct.mcp23s08_driver_data** %9, align 8
  %17 = getelementptr inbounds %struct.mcp23s08_driver_data, %struct.mcp23s08_driver_data* %16, i32 0, i32 0
  %18 = load %struct.mcp23s08**, %struct.mcp23s08*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mcp23s08*, %struct.mcp23s08** %18, i64 %20
  %22 = load %struct.mcp23s08*, %struct.mcp23s08** %21, align 8
  store %struct.mcp23s08* %22, %struct.mcp23s08** %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %24 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %23, i32 0, i32 4
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %27 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %28 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %27, i32 0, i32 3
  store %struct.spi_device* %26, %struct.spi_device** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 1
  %31 = or i32 64, %30
  %32 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %33 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %35 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @mcp23s08_direction_input, align 4
  %38 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %39 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 10
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @mcp23s08_get, align 4
  %42 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %43 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 9
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @mcp23s08_direction_output, align 4
  %46 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %47 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 8
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @mcp23s08_set, align 4
  %50 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %51 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @mcp23s08_dbg_show, align 4
  %54 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %55 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %59 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %62 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 8, i32* %63, align 4
  %64 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %65 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 1, i32* %66, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %70 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  store i32* %68, i32** %71, align 8
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %74 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 4
  %76 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %77 = load i32, i32* @MCP_IOCON, align 4
  %78 = call i32 @mcp23s08_read(%struct.mcp23s08* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %4
  br label %184

82:                                               ; preds = %4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @IOCON_SEQOP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @IOCON_HAEN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @IOCON_SEQOP, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @IOCON_HAEN, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %101 = load i32, i32* @MCP_IOCON, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @mcp23s08_write(%struct.mcp23s08* %100, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %184

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %87
  %109 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %110 = load i32, i32* @MCP_GPPU, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @mcp23s08_write(%struct.mcp23s08* %109, i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %184

116:                                              ; preds = %108
  %117 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %118 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %119 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = call i32 @mcp23s08_read_regs(%struct.mcp23s08* %117, i32 0, i64* %120, i32 8)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %184

125:                                              ; preds = %116
  %126 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %127 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @MCP_IPOL, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %135 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @MCP_IPOL, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64 0, i64* %138, align 8
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %133, %125
  %140 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %141 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @MCP_GPINTEN, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %149 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @MCP_GPINTEN, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  store i64 0, i64* %152, align 8
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %147, %139
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %153
  %157 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %158 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %159, i32* %160, align 16
  %161 = load i64, i64* @MCP_IPOL, align 8
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %165 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %166 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* @MCP_IPOL, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = call i32 @memcpy(i32* %164, i64* %169, i32 14)
  %171 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %172 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %171, i32 0, i32 3
  %173 = load %struct.spi_device*, %struct.spi_device** %172, align 8
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %175 = call i32 @spi_write_then_read(%struct.spi_device* %173, i32* %174, i32 16, i32* null, i32 0)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %156
  br label %184

179:                                              ; preds = %156
  br label %180

180:                                              ; preds = %179, %153
  %181 = load %struct.mcp23s08*, %struct.mcp23s08** %10, align 8
  %182 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %181, i32 0, i32 2
  %183 = call i32 @gpiochip_add(%struct.TYPE_2__* %182)
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %180, %178, %124, %115, %106, %81
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %189 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %188, i32 0, i32 0
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @dev_dbg(i32* %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %184
  %194 = load i32, i32* %11, align 4
  ret i32 %194
}

declare dso_local %struct.mcp23s08_driver_data* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mcp23s08_read(%struct.mcp23s08*, i32) #1

declare dso_local i32 @mcp23s08_write(%struct.mcp23s08*, i32, i32) #1

declare dso_local i32 @mcp23s08_read_regs(%struct.mcp23s08*, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @gpiochip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

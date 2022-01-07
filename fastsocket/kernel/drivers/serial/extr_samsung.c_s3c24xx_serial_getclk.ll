; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_getclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_getclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_clksrc = type { i8*, i32 }
%struct.uart_port = type { i32 }
%struct.clk = type { i32 }
%struct.s3c2410_uartcfg = type { i32, %struct.s3c24xx_uart_clksrc* }
%struct.baud_calc = type { i32, i32, %struct.clk*, %struct.s3c24xx_uart_clksrc* }

@MAX_CLKS = common dso_local global i32 0, align 4
@tmp_clksrc = common dso_local global %struct.s3c24xx_uart_clksrc zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"fclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c24xx_uart_clksrc**, %struct.clk**, i32)* @s3c24xx_serial_getclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_getclk(%struct.uart_port* %0, %struct.s3c24xx_uart_clksrc** %1, %struct.clk** %2, i32 %3) #0 {
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.s3c24xx_uart_clksrc**, align 8
  %7 = alloca %struct.clk**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.s3c2410_uartcfg*, align 8
  %10 = alloca %struct.s3c24xx_uart_clksrc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.baud_calc*, align 8
  %14 = alloca %struct.baud_calc*, align 8
  %15 = alloca %struct.baud_calc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.s3c24xx_uart_clksrc, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store %struct.s3c24xx_uart_clksrc** %1, %struct.s3c24xx_uart_clksrc*** %6, align 8
  store %struct.clk** %2, %struct.clk*** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %21 = call %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port* %20)
  store %struct.s3c2410_uartcfg* %21, %struct.s3c2410_uartcfg** %9, align 8
  %22 = load i32, i32* @MAX_CLKS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca %struct.baud_calc, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %9, align 8
  %27 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %26, i32 0, i32 1
  %28 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %27, align 8
  store %struct.s3c24xx_uart_clksrc* %28, %struct.s3c24xx_uart_clksrc** %10, align 8
  store %struct.baud_calc* null, %struct.baud_calc** %14, align 8
  %29 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %9, align 8
  %30 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %73

33:                                               ; preds = %4
  %34 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %9, align 8
  %35 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %struct.s3c24xx_uart_clksrc* @tmp_clksrc, %struct.s3c24xx_uart_clksrc** %10, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %47 = call i32 @s3c24xx_serial_getsource(%struct.uart_port* %46, %struct.s3c24xx_uart_clksrc* %17)
  %48 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %17, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %49, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %57 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %58 = call i32 @s3c24xx_serial_setsource(%struct.uart_port* %56, %struct.s3c24xx_uart_clksrc* %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = call i32 @s3c24xx_serial_getsource(%struct.uart_port* %59, %struct.s3c24xx_uart_clksrc* %17)
  br label %61

61:                                               ; preds = %55, %45
  %62 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %17, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %39
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @s3c24xx_serial_calcbaud(%struct.baud_calc* %25, %struct.uart_port* %67, %struct.s3c24xx_uart_clksrc* %68, i32 %69)
  store %struct.baud_calc* %25, %struct.baud_calc** %14, align 8
  %71 = load %struct.baud_calc*, %struct.baud_calc** %14, align 8
  %72 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %71, i64 1
  store %struct.baud_calc* %72, %struct.baud_calc** %13, align 8
  br label %97

73:                                               ; preds = %4
  store %struct.baud_calc* %25, %struct.baud_calc** %13, align 8
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %9, align 8
  %77 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.baud_calc*, %struct.baud_calc** %13, align 8
  %82 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %83 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @s3c24xx_serial_calcbaud(%struct.baud_calc* %81, %struct.uart_port* %82, %struct.s3c24xx_uart_clksrc* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.baud_calc*, %struct.baud_calc** %13, align 8
  %89 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %88, i32 1
  store %struct.baud_calc* %89, %struct.baud_calc** %13, align 8
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  %94 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %10, align 8
  %95 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %94, i32 1
  store %struct.s3c24xx_uart_clksrc* %95, %struct.s3c24xx_uart_clksrc** %10, align 8
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %66
  %98 = load %struct.baud_calc*, %struct.baud_calc** %14, align 8
  %99 = icmp ne %struct.baud_calc* %98, null
  br i1 %99, label %128, label %100

100:                                              ; preds = %97
  store i32 2147483647, i32* %18, align 4
  store %struct.baud_calc* %25, %struct.baud_calc** %15, align 8
  br label %101

101:                                              ; preds = %124, %100
  %102 = load %struct.baud_calc*, %struct.baud_calc** %15, align 8
  %103 = load %struct.baud_calc*, %struct.baud_calc** %13, align 8
  %104 = icmp ult %struct.baud_calc* %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.baud_calc*, %struct.baud_calc** %15, align 8
  %108 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub i32 %106, %109
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %19, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %19, align 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.baud_calc*, %struct.baud_calc** %15, align 8
  store %struct.baud_calc* %121, %struct.baud_calc** %14, align 8
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %120, %116
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.baud_calc*, %struct.baud_calc** %15, align 8
  %126 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %125, i32 1
  store %struct.baud_calc* %126, %struct.baud_calc** %15, align 8
  br label %101

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127, %97
  %129 = load %struct.baud_calc*, %struct.baud_calc** %14, align 8
  %130 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %129, i32 0, i32 3
  %131 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %130, align 8
  %132 = load %struct.s3c24xx_uart_clksrc**, %struct.s3c24xx_uart_clksrc*** %6, align 8
  store %struct.s3c24xx_uart_clksrc* %131, %struct.s3c24xx_uart_clksrc** %132, align 8
  %133 = load %struct.baud_calc*, %struct.baud_calc** %14, align 8
  %134 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %133, i32 0, i32 2
  %135 = load %struct.clk*, %struct.clk** %134, align 8
  %136 = load %struct.clk**, %struct.clk*** %7, align 8
  store %struct.clk* %135, %struct.clk** %136, align 8
  %137 = load %struct.baud_calc*, %struct.baud_calc** %14, align 8
  %138 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %140)
  ret i32 %139
}

declare dso_local %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @s3c24xx_serial_getsource(%struct.uart_port*, %struct.s3c24xx_uart_clksrc*) #1

declare dso_local i32 @s3c24xx_serial_setsource(%struct.uart_port*, %struct.s3c24xx_uart_clksrc*) #1

declare dso_local i64 @s3c24xx_serial_calcbaud(%struct.baud_calc*, %struct.uart_port*, %struct.s3c24xx_uart_clksrc*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

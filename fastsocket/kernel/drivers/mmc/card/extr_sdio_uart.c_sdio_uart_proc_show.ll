; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sdio_uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"serinfo:1.0 driver%s%s revision:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UART_NR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%d: uart:SDIO\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c" tx:%d rx:%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" fe:%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" pe:%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" brk:%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" oe:%d\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" cts:%d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" dsr:%d\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" rng:%d\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" dcd:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sdio_uart_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_uart_port*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %146, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @UART_NR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %149

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.sdio_uart_port* @sdio_uart_port_get(i32 %14)
  store %struct.sdio_uart_port* %15, %struct.sdio_uart_port** %6, align 8
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %17 = icmp ne %struct.sdio_uart_port* %16, null
  br i1 %17, label %18, label %145

18:                                               ; preds = %13
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i64 @capable(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %140

25:                                               ; preds = %18
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %28 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %32 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %37 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %25
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %44 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %25
  %49 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %50 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %57 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %63 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %70 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %76 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %83 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %74
  %88 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %89 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %96 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %102 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %108 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %109 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %115 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %122 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %128 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %135 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %126
  br label %140

140:                                              ; preds = %139, %18
  %141 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %142 = call i32 @sdio_uart_port_put(%struct.sdio_uart_port* %141)
  %143 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %144 = call i32 @seq_putc(%struct.seq_file* %143, i8 signext 10)
  br label %145

145:                                              ; preds = %140, %13
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %9

149:                                              ; preds = %9
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.sdio_uart_port* @sdio_uart_port_get(i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @sdio_uart_port_put(%struct.sdio_uart_port*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

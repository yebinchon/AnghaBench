; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c___pmz_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c___pmz_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_pmac_port = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pmz: set_termios()\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pmz: switch IRDA to %ld bauds\0A\00", align 1
@DCDIE = common dso_local global i32 0, align 4
@SYNCIE = common dso_local global i32 0, align 4
@CTSIE = common dso_local global i32 0, align 4
@R15 = common dso_local global i64 0, align 8
@PMACZILOG_FLAG_MODEM_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pmz: set_termios() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @__pmz_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pmz_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_pmac_port*, align 8
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %9)
  store %struct.uart_pmac_port* %10, %struct.uart_pmac_port** %7, align 8
  %11 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %13 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %119

16:                                               ; preds = %3
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %18 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %17, i32 0, i32 3
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = call i32 @memcpy(i32* %18, %struct.ktermios* %19, i32 8)
  %21 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %22 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %16
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = call i64 @uart_get_baud_rate(%struct.uart_port* %25, %struct.ktermios* %26, %struct.ktermios* %27, i32 1200, i32 4000000)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %32 = call i32 @pmz_irda_setup(%struct.uart_pmac_port* %31, i64* %8)
  %33 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %34 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @pmz_convert_to_zs(%struct.uart_pmac_port* %33, i32 %36, i32 %39, i64 %40)
  %42 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %43 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %44 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %42, i32* %45)
  %47 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %48 = call i32 @zssync(%struct.uart_pmac_port* %47)
  br label %111

49:                                               ; preds = %16
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %52 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %53 = call i64 @uart_get_baud_rate(%struct.uart_port* %50, %struct.ktermios* %51, %struct.ktermios* %52, i32 1200, i32 230400)
  store i64 %53, i64* %8, align 8
  %54 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %55 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %56 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @pmz_convert_to_zs(%struct.uart_pmac_port* %54, i32 %57, i32 %60, i64 %61)
  %63 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %64 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %63, i32 0, i32 2
  %65 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %66 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @UART_ENABLE_MS(i32* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %49
  %71 = load i32, i32* @DCDIE, align 4
  %72 = load i32, i32* @SYNCIE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @CTSIE, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %77 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @R15, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %75
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @PMACZILOG_FLAG_MODEM_STATUS, align 4
  %84 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %85 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %108

88:                                               ; preds = %49
  %89 = load i32, i32* @DCDIE, align 4
  %90 = load i32, i32* @SYNCIE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CTSIE, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %96 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @R15, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %94
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @PMACZILOG_FLAG_MODEM_STATUS, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %105 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %88, %70
  %109 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %110 = call i32 @pmz_maybe_update_regs(%struct.uart_pmac_port* %109)
  br label %111

111:                                              ; preds = %108, %24
  %112 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %113 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @uart_update_timeout(%struct.uart_port* %112, i32 %115, i64 %116)
  %118 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %111, %15
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*, ...) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i32 @memcpy(i32*, %struct.ktermios*, i32) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i64 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @pmz_irda_setup(%struct.uart_pmac_port*, i64*) #1

declare dso_local i32 @pmz_convert_to_zs(%struct.uart_pmac_port*, i32, i32, i64) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32*) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @UART_ENABLE_MS(i32*, i32) #1

declare dso_local i32 @pmz_maybe_update_regs(%struct.uart_pmac_port*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

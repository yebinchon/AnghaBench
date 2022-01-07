; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_parse_modem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_parse_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MSIGS = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"neo_parse_modem: port: %d msignals: %x\0A\00", align 1
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\0A\00", align 1
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*, i32)* @neo_parse_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_parse_modem(%struct.jsm_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.jsm_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @MSIGS, align 4
  %8 = load i32, i32* @INFO, align 4
  %9 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %10 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %14 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i32, i32, i32*, i8*, i32, i32, ...) @jsm_printk(i32 %7, i32 %8, i32* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 248
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UART_MSR_DDCD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %26 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %25, i32 0, i32 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UART_MSR_DCD, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @uart_handle_dcd_change(i32* %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @UART_MSR_DDSR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %38 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %37, i32 0, i32 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @UART_MSR_CTS, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @uart_handle_cts_change(i32* %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @UART_MSR_DCD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @UART_MSR_DCD, align 4
  %50 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %51 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %61

54:                                               ; preds = %43
  %55 = load i32, i32* @UART_MSR_DCD, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @UART_MSR_DSR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @UART_MSR_DSR, align 4
  %68 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %69 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %79

72:                                               ; preds = %61
  %73 = load i32, i32* @UART_MSR_DSR, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %76 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @UART_MSR_RI, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @UART_MSR_RI, align 4
  %86 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %87 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %97

90:                                               ; preds = %79
  %91 = load i32, i32* @UART_MSR_RI, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %94 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %84
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @UART_MSR_CTS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* @UART_MSR_CTS, align 4
  %104 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %105 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %115

108:                                              ; preds = %97
  %109 = load i32, i32* @UART_MSR_CTS, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %112 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %108, %102
  %116 = load i32, i32* @MSIGS, align 4
  %117 = load i32, i32* @INFO, align 4
  %118 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %119 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %123 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %126 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %129 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = load i32, i32* @UART_MCR_DTR, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %139 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %142 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %140, %143
  %145 = load i32, i32* @UART_MCR_RTS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %152 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %155 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %153, %156
  %158 = load i32, i32* @UART_MSR_CTS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %165 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %168 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %166, %169
  %171 = load i32, i32* @UART_MSR_DSR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %178 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %181 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %179, %182
  %184 = load i32, i32* @UART_MSR_RI, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %191 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %194 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %192, %195
  %197 = load i32, i32* @UART_MSR_DCD, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i32, i32*, i8*, i32, i32, ...) @jsm_printk(i32 %116, i32 %117, i32* %121, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %137, i32 %150, i32 %163, i32 %176, i32 %189, i32 %202)
  ret void
}

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @uart_handle_dcd_change(i32*, i32) #1

declare dso_local i32 @uart_handle_cts_change(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i8042_port = type { i64, %struct.serio* }
%struct.serio = type { i32 }

@i8042_lock = common dso_local global i32 0, align 4
@I8042_STR_OBF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"Interrupt %d, without any data\00", align 1
@i8042_mux_present = common dso_local global i64 0, align 8
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@i8042_interrupt.last_transmit = internal global i64 0, align 8
@i8042_interrupt.last_str = internal global i8 0, align 1
@I8042_STR_MUXERR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"MUX error, status is %02x, data is %02x\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@I8042_MUX_PORT_NO = common dso_local global i8 0, align 1
@I8042_STR_PARITY = common dso_local global i8 0, align 1
@I8042_STR_TIMEOUT = common dso_local global i8 0, align 1
@I8042_AUX_PORT_NO = common dso_local global i32 0, align 4
@I8042_KBD_PORT_NO = common dso_local global i32 0, align 4
@i8042_ports = common dso_local global %struct.i8042_port* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%02x <- i8042 (interrupt, %d, %d%s%s)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c", bad parity\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c", timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i8042_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i8042_port*, align 8
  %6 = alloca %struct.serio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %13, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @i8042_lock, i64 %14)
  %16 = call zeroext i8 (...) @i8042_read_status()
  store i8 %16, i8* %8, align 1
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load i8, i8* @I8042_STR_OBF, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = trunc i32 %22 to i8
  %24 = call i64 @unlikely(i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @i8042_lock, i64 %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 (i8*, i8, ...) @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 zeroext %33)
  br label %35

35:                                               ; preds = %31, %26
  store i32 0, i32* %13, align 4
  br label %181

36:                                               ; preds = %2
  %37 = call zeroext i8 (...) @i8042_read_data()
  store i8 %37, i8* %9, align 1
  %38 = load i64, i64* @i8042_mux_present, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %36
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @I8042_STR_MUXERR, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %47
  %55 = load i8, i8* %8, align 1
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (i8*, i8, ...) @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %55, i32 %57)
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  switch i32 %60, label %61 [
    i32 252, label %73
    i32 253, label %73
    i32 254, label %73
    i32 255, label %75
  ]

61:                                               ; preds = %54
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* @i8042_interrupt.last_transmit, align 8
  %64 = load i32, i32* @HZ, align 4
  %65 = sdiv i32 %64, 10
  %66 = sext i32 %65 to i64
  %67 = add i64 %63, %66
  %68 = call i32 @time_before(i64 %62, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i8, i8* @i8042_interrupt.last_str, align 1
  store i8 %71, i8* %8, align 1
  br label %77

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %54, %54, %54, %72
  %74 = load i32, i32* @SERIO_TIMEOUT, align 4
  store i32 %74, i32* %10, align 4
  store i8 -2, i8* %9, align 1
  br label %77

75:                                               ; preds = %54
  %76 = load i32, i32* @SERIO_PARITY, align 4
  store i32 %76, i32* %10, align 4
  store i8 -2, i8* %9, align 1
  br label %77

77:                                               ; preds = %75, %73, %70
  br label %78

78:                                               ; preds = %77, %47
  %79 = load i8, i8* @I8042_MUX_PORT_NO, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = ashr i32 %82, 6
  %84 = and i32 %83, 3
  %85 = add nsw i32 %80, %84
  store i32 %85, i32* %11, align 4
  %86 = load i8, i8* %8, align 1
  store i8 %86, i8* @i8042_interrupt.last_str, align 1
  %87 = load i64, i64* @jiffies, align 8
  store i64 %87, i64* @i8042_interrupt.last_transmit, align 8
  br label %124

88:                                               ; preds = %40, %36
  %89 = load i8, i8* %8, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @I8042_STR_PARITY, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @SERIO_PARITY, align 4
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @I8042_STR_TIMEOUT, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @SERIO_TIMEOUT, align 4
  br label %109

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = or i32 %99, %110
  store i32 %111, i32* %10, align 4
  %112 = load i8, i8* %8, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @I8042_AUX_PORT_NO, align 4
  br label %122

120:                                              ; preds = %109
  %121 = load i32, i32* @I8042_KBD_PORT_NO, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %122, %78
  %125 = load %struct.i8042_port*, %struct.i8042_port** @i8042_ports, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %125, i64 %127
  store %struct.i8042_port* %128, %struct.i8042_port** %5, align 8
  %129 = load %struct.i8042_port*, %struct.i8042_port** %5, align 8
  %130 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load %struct.i8042_port*, %struct.i8042_port** %5, align 8
  %135 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %134, i32 0, i32 1
  %136 = load %struct.serio*, %struct.serio** %135, align 8
  br label %138

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi %struct.serio* [ %136, %133 ], [ null, %137 ]
  store %struct.serio* %139, %struct.serio** %6, align 8
  %140 = load i8, i8* %9, align 1
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @SERIO_PARITY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @SERIO_TIMEOUT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %155 = call i32 (i8*, i8, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %140, i32 %141, i32 %142, i8* %148, i8* %154)
  %156 = load i8, i8* %9, align 1
  %157 = load i8, i8* %8, align 1
  %158 = load %struct.serio*, %struct.serio** %6, align 8
  %159 = call i32 @i8042_filter(i8 zeroext %156, i8 zeroext %157, %struct.serio* %158)
  store i32 %159, i32* %12, align 4
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* @i8042_lock, i64 %160)
  %162 = load %struct.i8042_port*, %struct.i8042_port** %5, align 8
  %163 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %138
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %166, %138
  %171 = phi i1 [ false, %138 ], [ %169, %166 ]
  %172 = zext i1 %171 to i32
  %173 = call i64 @likely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.serio*, %struct.serio** %6, align 8
  %177 = load i8, i8* %9, align 1
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @serio_interrupt(%struct.serio* %176, i8 zeroext %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %170
  br label %181

181:                                              ; preds = %180, %35
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @IRQ_RETVAL(i32 %182)
  ret i32 %183
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @i8042_read_status(...) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dbg(i8*, i8 zeroext, ...) #1

declare dso_local zeroext i8 @i8042_read_data(...) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i32 @i8042_filter(i8 zeroext, i8 zeroext, %struct.serio*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @serio_interrupt(%struct.serio*, i8 zeroext, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

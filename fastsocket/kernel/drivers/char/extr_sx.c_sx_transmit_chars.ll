; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@SX_DEBUG_TRANSMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Port %p: transmit %d chars\0A\00", align 1
@SX_PORT_TRANSMIT_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Copying %d \00", align 1
@hi_txipos = common dso_local global i32 0, align 4
@hi_txopos = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" %d(%d) \00", align 1
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" %d(%ld) \0A\00", align 1
@hi_txbuf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Waking up.... ldisc (%d)....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sx_port*)* @sx_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_transmit_chars(%struct.sx_port* %0) #0 {
  %2 = alloca %struct.sx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sx_port* %0, %struct.sx_port** %2, align 8
  %6 = call i32 (...) @func_enter2()
  %7 = load i32, i32* @SX_DEBUG_TRANSMIT, align 4
  %8 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %9 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %10 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.sx_port* %8, i32 %12)
  %14 = load i32, i32* @SX_PORT_TRANSMIT_LOCK, align 4
  %15 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %16 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %15, i32 0, i32 0
  %17 = call i64 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %184

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %90
  %22 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %23 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SX_DEBUG_TRANSMIT, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %30 = load i32, i32* @hi_txipos, align 4
  %31 = call i32 @sx_read_channel_byte(%struct.sx_port* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %33 = load i32, i32* @hi_txopos, align 4
  %34 = call i32 @sx_read_channel_byte(%struct.sx_port* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 255
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* @SX_DEBUG_TRANSMIT, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 256, %50
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 256, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i32, i32* @SX_DEBUG_TRANSMIT, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 256, %59
  %61 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %64 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %65 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %63, %67
  %69 = icmp sgt i32 %62, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %72 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %73 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %56
  %78 = load i32, i32* @SX_DEBUG_TRANSMIT, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %81 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %82 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %80, %84
  %86 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %139

90:                                               ; preds = %77
  %91 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %92 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %97 = load i32, i32* @hi_txbuf, align 4
  %98 = call i64 @CHAN_OFFSET(%struct.sx_port* %96, i32 %97)
  %99 = add nsw i64 %95, %98
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %104 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %108 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %106, %110
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @memcpy_toio(i64 %102, i32 %111, i32 %112)
  %114 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %115 = load i32, i32* @hi_txipos, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %116, %117
  %119 = and i32 %118, 255
  %120 = call i32 @sx_write_channel_byte(%struct.sx_port* %114, i32 %115, i32 %119)
  %121 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %122 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %128 = sub nsw i32 %127, 1
  %129 = and i32 %126, %128
  %130 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %131 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %135 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, %133
  store i32 %138, i32* %136, align 8
  br label %21

139:                                              ; preds = %89
  %140 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %141 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %147 = call i32 @sx_disable_tx_interrupts(%struct.sx_port* %146)
  br label %148

148:                                              ; preds = %145, %139
  %149 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %150 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %154 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp sle i32 %152, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %148
  %159 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %160 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %158
  %166 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %167 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @tty_wakeup(i64 %170)
  %172 = load i32, i32* @SX_DEBUG_TRANSMIT, align 4
  %173 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %174 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %165, %158, %148
  %179 = load i32, i32* @SX_PORT_TRANSMIT_LOCK, align 4
  %180 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %181 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %180, i32 0, i32 0
  %182 = call i32 @clear_bit(i32 %179, i32* %181)
  %183 = call i32 (...) @func_exit()
  br label %184

184:                                              ; preds = %178, %19
  ret void
}

declare dso_local i32 @func_enter2(...) #1

declare dso_local i32 @sx_dprintk(i32, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sx_read_channel_byte(%struct.sx_port*, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i64 @CHAN_OFFSET(%struct.sx_port*, i32) #1

declare dso_local i32 @sx_write_channel_byte(%struct.sx_port*, i32, i32) #1

declare dso_local i32 @sx_disable_tx_interrupts(%struct.sx_port*) #1

declare dso_local i32 @tty_wakeup(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

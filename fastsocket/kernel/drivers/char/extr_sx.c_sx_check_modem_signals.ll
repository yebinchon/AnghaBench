; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_check_modem_signals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_check_modem_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SX_DEBUG_MODEMSIGNALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Checking modem signals (%d/%d)\0A\00", align 1
@ST_BREAK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"got a break.\0A\00", align 1
@ST_DCD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"got a DCD change.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"DCD is now %d\0A\00", align 1
@hi_hstat = common dso_local global i32 0, align 4
@HS_IDLE_CLOSED = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"DCD active, unblocking open\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DCD raised. Ignoring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"DCD dropped. hanging up....\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"DCD dropped. ignoring.\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Hmmm. card told us DCD changed, but it didn't.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sx_port*)* @sx_check_modem_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_check_modem_signals(%struct.sx_port* %0) #0 {
  %2 = alloca %struct.sx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sx_port* %0, %struct.sx_port** %2, align 8
  %5 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @sx_read_channel_byte(%struct.sx_port* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %9 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %10 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %13 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = call i32 @tty_port_carrier_raised(%struct.TYPE_6__* %14)
  %16 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ST_BREAK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @ST_BREAK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %27 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @sx_write_channel_byte(%struct.sx_port* %28, i32 %29, i32 %30)
  %32 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %33 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %32, i32 0, i32 1
  %34 = call i32 @gs_got_break(%struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %21, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ST_DCD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %134

40:                                               ; preds = %35
  %41 = load i32, i32* @ST_DCD, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %46 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @sx_write_channel_byte(%struct.sx_port* %47, i32 %48, i32 %49)
  %51 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %52 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @tty_port_carrier_raised(%struct.TYPE_6__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %60 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %130

63:                                               ; preds = %40
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %66 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %68 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @tty_port_carrier_raised(%struct.TYPE_6__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %63
  %73 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %74 = load i32, i32* @hi_hstat, align 4
  %75 = call i32 @sx_read_channel_byte(%struct.sx_port* %73, i32 %74)
  %76 = load i32, i32* @HS_IDLE_CLOSED, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  %79 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %80 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CLOCAL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %93 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %95 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = call i32 @wake_up_interruptible(i32* %97)
  br label %102

99:                                               ; preds = %78, %72
  %100 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %101 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %91
  br label %129

103:                                              ; preds = %63
  %104 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %105 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CLOCAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %118 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %119 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %120 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = call i32 @tty_hangup(%struct.TYPE_7__* %123)
  br label %128

125:                                              ; preds = %103
  %126 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %127 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %116
  br label %129

129:                                              ; preds = %128, %102
  br label %133

130:                                              ; preds = %40
  %131 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %132 = call i32 (i32, i8*, ...) @sx_dprintk(i32 %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %129
  br label %134

134:                                              ; preds = %133, %35
  ret void
}

declare dso_local i32 @sx_read_channel_byte(%struct.sx_port*, i32) #1

declare dso_local i32 @sx_dprintk(i32, i8*, ...) #1

declare dso_local i32 @tty_port_carrier_raised(%struct.TYPE_6__*) #1

declare dso_local i32 @sx_write_channel_byte(%struct.sx_port*, i32, i32) #1

declare dso_local i32 @gs_got_break(%struct.TYPE_8__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

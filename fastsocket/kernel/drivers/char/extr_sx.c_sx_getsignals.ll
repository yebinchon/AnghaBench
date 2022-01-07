; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_getsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_getsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@hi_op = common dso_local global i32 0, align 4
@hi_ip = common dso_local global i32 0, align 4
@SX_DEBUG_MODEMSIGNALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"getsignals: %d/%d  (%d/%d) %02x/%02x\0A\00", align 1
@OP_DTR = common dso_local global i32 0, align 4
@OP_RTS = common dso_local global i32 0, align 4
@hi_state = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@IP_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@IP_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@IP_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@IP_RI = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sx_port*)* @sx_getsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_getsignals(%struct.sx_port* %0) #0 {
  %2 = alloca %struct.sx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sx_port* %0, %struct.sx_port** %2, align 8
  %5 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %6 = load i32, i32* @hi_op, align 4
  %7 = call i32 @sx_read_channel_byte(%struct.sx_port* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %9 = load i32, i32* @hi_ip, align 4
  %10 = call i32 @sx_read_channel_byte(%struct.sx_port* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @OP_DTR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @OP_RTS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %23 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %26 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @tty_port_carrier_raised(i32* %27)
  %29 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %30 = load i32, i32* @hi_ip, align 4
  %31 = call i32 @sx_read_channel_byte(%struct.sx_port* %29, i32 %30)
  %32 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %33 = load i32, i32* @hi_state, align 4
  %34 = call i32 @sx_read_channel_byte(%struct.sx_port* %32, i32 %33)
  %35 = call i32 @sx_dprintk(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %24, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @OP_DTR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @TIOCM_DTR, align 4
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @OP_RTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @TIOCM_RTS, align 4
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = or i32 %44, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @IP_CTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @TIOCM_CTS, align 4
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = or i32 %54, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @IP_DCD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @TIOCM_CAR, align 4
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %64, %73
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @IP_DSR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @TIOCM_DSR, align 4
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = or i32 %74, %83
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @IP_RI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @TIOCM_RNG, align 4
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = or i32 %84, %93
  ret i32 %94
}

declare dso_local i32 @sx_read_channel_byte(%struct.sx_port*, i32) #1

declare dso_local i32 @sx_dprintk(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tty_port_carrier_raised(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_do_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_do_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32, i64, i32 }
%struct.TYPE_16__ = type { i8, %struct.TYPE_14__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*, i8*, i8*, i32)* }

@i2ChanStr = common dso_local global i32 0, align 4
@tqueue_status = common dso_local global i32 0, align 4
@I2_BRK = common dso_local global i32 0, align 4
@I2_PAR = common dso_local global i32 0, align 4
@I2_FRA = common dso_local global i32 0, align 4
@I2_OVR = common dso_local global i32 0, align 4
@CHANN = common dso_local global i32 0, align 4
@ITRC_STATUS = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@I2_DDCD = common dso_local global i32 0, align 4
@I2_DDSR = common dso_local global i32 0, align 4
@I2_DCTS = common dso_local global i32 0, align 4
@I2_DRI = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@I2_DCD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_NORMAL = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@the_char = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @do_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_status(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = load i32, i32* @i2ChanStr, align 4
  %7 = load i32, i32* @tqueue_status, align 4
  %8 = call %struct.TYPE_15__* @container_of(%struct.work_struct* %5, i32 %6, i32 %7)
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = load i32, i32* @I2_BRK, align 4
  %11 = load i32, i32* @I2_PAR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @I2_FRA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2_OVR, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2GetStatus(%struct.TYPE_15__* %9, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CHANN, align 4
  %19 = load i32, i32* @ITRC_STATUS, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %18, i32 %19, i32 21, i32 1, i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %68

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @I2_BRK, align 4
  %29 = load i32, i32* @I2_PAR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @I2_FRA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @I2_OVR, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %27, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @I2_BRK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = call i64 @I_IGNBRK(%struct.TYPE_16__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %69

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = call i64 @I_BRKINT(%struct.TYPE_16__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @SIGINT, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = call i32 @isig(i32 %56, %struct.TYPE_16__* %59, i32 1)
  br label %69

61:                                               ; preds = %49
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = call i32 @wake_up_interruptible(i32* %65)
  br label %67

67:                                               ; preds = %61, %37
  br label %68

68:                                               ; preds = %67, %26, %1
  br label %69

69:                                               ; preds = %68, %55, %48
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @I2_DDCD, align 4
  %72 = load i32, i32* @I2_DDSR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @I2_DCTS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @I2_DRI, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %70, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %69
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  %83 = call i32 @wake_up_interruptible(i32* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %133

90:                                               ; preds = %80
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @I2_DDCD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %133

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @I2_DCD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = call i32 @wake_up_interruptible(i32* %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %132

110:                                              ; preds = %95
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = icmp ne %struct.TYPE_16__* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CLOCAL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %115
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = call i32 @tty_hangup(%struct.TYPE_16__* %129)
  br label %131

131:                                              ; preds = %126, %115, %110
  br label %132

132:                                              ; preds = %131, %109
  br label %133

133:                                              ; preds = %132, %90, %80
  br label %134

134:                                              ; preds = %133, %69
  %135 = load i32, i32* @CHANN, align 4
  %136 = load i32, i32* @ITRC_STATUS, align 4
  %137 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %135, i32 %136, i32 26, i32 0)
  ret void
}

declare dso_local %struct.TYPE_15__* @container_of(%struct.work_struct*, i32, i32) #1

declare dso_local i32 @i2GetStatus(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local i64 @I_IGNBRK(%struct.TYPE_16__*) #1

declare dso_local i64 @I_BRKINT(%struct.TYPE_16__*) #1

declare dso_local i32 @isig(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

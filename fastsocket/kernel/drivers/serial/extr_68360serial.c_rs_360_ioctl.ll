; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_icount = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, i32, i64 }
%struct.file = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.async_icount }
%struct.serial_icounter_struct = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_RNG = common dso_local global i64 0, align 8
@cprev = common dso_local global %struct.async_icount zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @rs_360_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_360_ioctl(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.async_icount, align 4
  %14 = alloca %struct.serial_icounter_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @serial_paranoia_check(%struct.TYPE_9__* %19, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %169

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 130
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 131
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TTY_IO_ERROR, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %169

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %31, %28
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %166 [
    i32 134, label %48
    i32 133, label %78
    i32 129, label %112
    i32 132, label %124
    i32 130, label %134
    i32 131, label %135
  ]

48:                                               ; preds = %46
  %49 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %50 = call i32 @tty_check_change(%struct.tty_struct* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %169

55:                                               ; preds = %48
  %56 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %57 = call i32 @tty_wait_until_sent(%struct.tty_struct* %56, i32 0)
  %58 = load i32, i32* @current, align 4
  %59 = call i32 @signal_pending(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINTR, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %169

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = call i32 @send_break(%struct.TYPE_9__* %68, i64 250)
  %70 = load i32, i32* @current, align 4
  %71 = call i32 @signal_pending(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EINTR, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %169

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %64
  store i32 0, i32* %5, align 4
  br label %169

78:                                               ; preds = %46
  %79 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %80 = call i32 @tty_check_change(%struct.tty_struct* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %169

85:                                               ; preds = %78
  %86 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %87 = call i32 @tty_wait_until_sent(%struct.tty_struct* %86, i32 0)
  %88 = load i32, i32* @current, align 4
  %89 = call i32 @signal_pending(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EINTR, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %169

94:                                               ; preds = %85
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = mul i64 %99, 100
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i64 [ %100, %98 ], [ 250, %101 ]
  %104 = call i32 @send_break(%struct.TYPE_9__* %95, i64 %103)
  %105 = load i32, i32* @current, align 4
  %106 = call i32 @signal_pending(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINTR, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %169

111:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %169

112:                                              ; preds = %46
  %113 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %114 = call i32 @tty_check_change(%struct.tty_struct* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %169

119:                                              ; preds = %112
  %120 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %121 = call i32 @tty_wait_until_sent(%struct.tty_struct* %120, i32 0)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = call i32 @begin_break(%struct.TYPE_9__* %122)
  store i32 0, i32* %5, align 4
  br label %169

124:                                              ; preds = %46
  %125 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %126 = call i32 @tty_check_change(%struct.tty_struct* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %5, align 4
  br label %169

131:                                              ; preds = %124
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = call i32 @end_break(%struct.TYPE_9__* %132)
  store i32 0, i32* %5, align 4
  br label %169

134:                                              ; preds = %46
  store i32 0, i32* %5, align 4
  br label %169

135:                                              ; preds = %46
  %136 = call i32 (...) @local_irq_disable()
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = bitcast %struct.async_icount* %13 to i8*
  %142 = bitcast %struct.async_icount* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 16, i1 false)
  %143 = call i32 (...) @local_irq_enable()
  %144 = load i64, i64* %9, align 8
  %145 = inttoptr i64 %144 to %struct.serial_icounter_struct*
  store %struct.serial_icounter_struct* %145, %struct.serial_icounter_struct** %14, align 8
  %146 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %13, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %14, align 8
  %149 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %148, i32 0, i32 3
  %150 = call i32 @put_user(i32 %147, i32* %149)
  %151 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %13, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %14, align 8
  %154 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %153, i32 0, i32 2
  %155 = call i32 @put_user(i32 %152, i32* %154)
  %156 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %13, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %14, align 8
  %159 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %158, i32 0, i32 1
  %160 = call i32 @put_user(i32 %157, i32* %159)
  %161 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %13, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %14, align 8
  %164 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %163, i32 0, i32 0
  %165 = call i32 @put_user(i32 %162, i32* %164)
  store i32 0, i32* %5, align 4
  br label %169

166:                                              ; preds = %46
  %167 = load i32, i32* @ENOIOCTLCMD, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %166, %135, %134, %131, %129, %119, %117, %111, %108, %91, %83, %77, %73, %61, %53, %42, %25
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i64 @serial_paranoia_check(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @tty_check_change(%struct.tty_struct*) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @send_break(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @begin_break(%struct.TYPE_9__*) #1

declare dso_local i32 @end_break(%struct.TYPE_9__*) #1

declare dso_local i32 @local_irq_disable(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

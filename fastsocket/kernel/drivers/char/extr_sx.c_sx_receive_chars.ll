; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32, i32 }
%struct.timeval = type { i32, i64 }

@hi_rxopos = common dso_local global i32 0, align 4
@hi_rxipos = common dso_local global i32 0, align 4
@SX_DEBUG_RECEIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rxop=%d, c = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"c = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Copying over %d chars. First is %d at %lx\0A\00", align 1
@hi_rxbuf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"pushing flipq port %d (%3d chars): %d.%06d  (%d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sx_port*)* @sx_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_receive_chars(%struct.sx_port* %0) #0 {
  %2 = alloca %struct.sx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.timeval, align 8
  store %struct.sx_port* %0, %struct.sx_port** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @func_enter2()
  %10 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %11 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %5, align 8
  br label %15

15:                                               ; preds = %1, %49
  %16 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %17 = load i32, i32* @hi_rxopos, align 4
  %18 = call i32 @sx_read_channel_byte(%struct.sx_port* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %20 = load i32, i32* @hi_rxipos, align 4
  %21 = call i32 @sx_read_channel_byte(%struct.sx_port* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %21, %22
  %24 = and i32 %23, 255
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @SX_DEBUG_RECEIVE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, i32, ...) @sx_dprintk(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp sgt i32 %31, 256
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 256, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %15
  %37 = load i32, i32* @SX_DEBUG_RECEIVE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, i32, ...) @sx_dprintk(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @tty_prepare_flip_string(%struct.tty_struct* %40, i8** %7, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @SX_DEBUG_RECEIVE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, i32, ...) @sx_dprintk(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %91

49:                                               ; preds = %36
  %50 = load i32, i32* @SX_DEBUG_RECEIVE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %53 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %56 = load i32, i32* @hi_rxbuf, align 4
  %57 = call i64 @CHAN_OFFSET(%struct.sx_port* %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @read_sx_byte(%struct.TYPE_6__* %54, i64 %60)
  %62 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %63 = load i32, i32* @hi_rxbuf, align 4
  %64 = call i64 @CHAN_OFFSET(%struct.sx_port* %62, i32 %63)
  %65 = call i32 (i32, i8*, i32, ...) @sx_dprintk(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %61, i64 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %68 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %73 = load i32, i32* @hi_rxbuf, align 4
  %74 = call i64 @CHAN_OFFSET(%struct.sx_port* %72, i32 %73)
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @memcpy_fromio(i8* %66, i64 %78, i32 %79)
  %81 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %82 = load i32, i32* @hi_rxopos, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %83, %84
  %86 = and i32 %85, 255
  %87 = call i32 @sx_write_channel_byte(%struct.sx_port* %81, i32 %82, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %15

91:                                               ; preds = %48
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = call i32 @do_gettimeofday(%struct.timeval* %8)
  %96 = load i32, i32* @SX_DEBUG_RECEIVE, align 4
  %97 = load %struct.sx_port*, %struct.sx_port** %2, align 8
  %98 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = srem i32 %102, 60
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %108 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %111 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, i32, ...) @sx_dprintk(i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100, i32 %103, i32 %106, i32 %109, i32 %112)
  %114 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %115 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %114)
  br label %116

116:                                              ; preds = %94, %91
  %117 = call i32 (...) @func_exit()
  ret void
}

declare dso_local i32 @func_enter2(...) #1

declare dso_local i32 @sx_read_channel_byte(%struct.sx_port*, i32) #1

declare dso_local i32 @sx_dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @tty_prepare_flip_string(%struct.tty_struct*, i8**, i32) #1

declare dso_local i32 @read_sx_byte(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @CHAN_OFFSET(%struct.sx_port*, i32) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i32) #1

declare dso_local i32 @sx_write_channel_byte(%struct.sx_port*, i32, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

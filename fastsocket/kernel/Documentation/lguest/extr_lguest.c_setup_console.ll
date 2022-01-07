; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_setup_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_setup_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i64 }
%struct.console_abort = type { i64 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@orig_term = common dso_local global %struct.termios zeroinitializer, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"console\00", align 1
@VIRTIO_ID_CONSOLE = common dso_local global i32 0, align 4
@VIRTQUEUE_NUM = common dso_local global i32 0, align 4
@console_input = common dso_local global i32 0, align 4
@console_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"device %u: console\0A\00", align 1
@devices = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_console() #0 {
  %1 = alloca %struct.device*, align 8
  %2 = alloca %struct.termios, align 4
  %3 = load i32, i32* @STDIN_FILENO, align 4
  %4 = call i64 @tcgetattr(i32 %3, %struct.termios* @orig_term)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = bitcast %struct.termios* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.termios* @orig_term to i8*), i64 4, i1 false)
  %8 = load i32, i32* @ISIG, align 4
  %9 = load i32, i32* @ICANON, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ECHO, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = getelementptr inbounds %struct.termios, %struct.termios* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @STDIN_FILENO, align 4
  %18 = load i32, i32* @TCSANOW, align 4
  %19 = call i32 @tcsetattr(i32 %17, i32 %18, %struct.termios* %2)
  br label %20

20:                                               ; preds = %6, %0
  %21 = load i32, i32* @VIRTIO_ID_CONSOLE, align 4
  %22 = call %struct.device* @new_device(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.device* %22, %struct.device** %1, align 8
  %23 = call i64 @malloc(i32 8)
  %24 = load %struct.device*, %struct.device** %1, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.device*, %struct.device** %1, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.console_abort*
  %30 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.device*, %struct.device** %1, align 8
  %32 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %33 = load i32, i32* @console_input, align 4
  %34 = call i32 @add_virtqueue(%struct.device* %31, i32 %32, i32 %33)
  %35 = load %struct.device*, %struct.device** %1, align 8
  %36 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %37 = load i32, i32* @console_output, align 4
  %38 = call i32 @add_virtqueue(%struct.device* %35, i32 %36, i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %41 = call i32 @verbose(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local %struct.device* @new_device(i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @add_virtqueue(%struct.device*, i32, i32) #1

declare dso_local i32 @verbose(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

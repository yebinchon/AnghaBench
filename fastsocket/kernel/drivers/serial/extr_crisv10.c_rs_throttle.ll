; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_throttle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_3__*, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.tty_struct.0*)* }
%struct.tty_struct.0 = type opaque
%struct.e100_serial = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"rs_throttle %lu\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.e100_serial*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.e100_serial*
  store %struct.e100_serial* %7, %struct.e100_serial** %3, align 8
  %8 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %9 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64 (%struct.tty_struct.0*)*, i64 (%struct.tty_struct.0*)** %13, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %16 = bitcast %struct.tty_struct* %15 to %struct.tty_struct.0*
  %17 = call i64 %14(%struct.tty_struct.0* %16)
  %18 = call i32 @DEBUG_LOG(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 @DFLOW(i32 %18)
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CRTSCTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %30 = call i32 @e100_rts(%struct.e100_serial* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = call i64 @I_IXOFF(%struct.tty_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %37 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %38 = call i32 @STOP_CHAR(%struct.tty_struct* %37)
  %39 = call i32 @rs_send_xchar(%struct.tty_struct* %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i32, i8*, i64) #1

declare dso_local i32 @e100_rts(%struct.e100_serial*, i32) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @rs_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

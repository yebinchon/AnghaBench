; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.e100_serial = type { i32*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"XOFF rs_stop xmit %i\0A\00", align 1
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@R_SERIAL0_XOFF = common dso_local global i32 0, align 4
@xoff_char = common dso_local global i32 0, align 4
@tx_stop = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@auto_xoff = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4
@REG_XOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_stop(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.e100_serial*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.e100_serial*
  store %struct.e100_serial* %9, %struct.e100_serial** %3, align 8
  %10 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %11 = icmp ne %struct.e100_serial* %10, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %16 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %23 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %27 = call i32 @CIRC_CNT(i32 %21, i32 %25, i32 %26)
  %28 = call i32 @DEBUG_LOG(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @DFLOW(i32 %28)
  %30 = load i32, i32* @R_SERIAL0_XOFF, align 4
  %31 = load i32, i32* @xoff_char, align 4
  %32 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %33 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @STOP_CHAR(i32 %35)
  %37 = call i64 @IO_FIELD(i32 %30, i32 %31, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i32, i32* @R_SERIAL0_XOFF, align 4
  %39 = load i32, i32* @tx_stop, align 4
  %40 = load i32, i32* @stop, align 4
  %41 = call i64 @IO_STATE(i32 %38, i32 %39, i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IXON, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %12
  %53 = load i32, i32* @R_SERIAL0_XOFF, align 4
  %54 = load i32, i32* @auto_xoff, align 4
  %55 = load i32, i32* @enable, align 4
  %56 = call i64 @IO_STATE(i32 %53, i32 %54, i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %52, %12
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %62 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @REG_XOFF, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = bitcast i32* %65 to i64*
  store i64 %60, i64* %66, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @local_irq_restore(i64 %67)
  br label %69

69:                                               ; preds = %59, %1
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i32, i8*, i32) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i64 @IO_FIELD(i32, i32, i32) #1

declare dso_local i32 @STOP_CHAR(i32) #1

declare dso_local i64 @IO_STATE(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.e100_serial = type { %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"XOFF rs_start xmit %i\0A\00", align 1
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@R_SERIAL0_XOFF = common dso_local global i32 0, align 4
@xoff_char = common dso_local global i32 0, align 4
@tx_stop = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@auto_xoff = common dso_local global i32 0, align 4
@REG_XOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_start(%struct.tty_struct* %0) #0 {
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
  br i1 %11, label %12, label %90

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %16 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %23 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %27 = call i32 @CIRC_CNT(i64 %21, i64 %25, i32 %26)
  %28 = call i32 @DEBUG_LOG(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @DFLOW(i32 %28)
  %30 = load i32, i32* @R_SERIAL0_XOFF, align 4
  %31 = load i32, i32* @xoff_char, align 4
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = call i32 @STOP_CHAR(%struct.tty_struct* %32)
  %34 = call i64 @IO_FIELD(i32 %30, i32 %31, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* @R_SERIAL0_XOFF, align 4
  %36 = load i32, i32* @tx_stop, align 4
  %37 = load i32, i32* @enable, align 4
  %38 = call i64 @IO_STATE(i32 %35, i32 %36, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IXON, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %12
  %50 = load i32, i32* @R_SERIAL0_XOFF, align 4
  %51 = load i32, i32* @auto_xoff, align 4
  %52 = load i32, i32* @enable, align 4
  %53 = call i64 @IO_STATE(i32 %50, i32 %51, i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %49, %12
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %59 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @REG_XOFF, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = bitcast i32* %62 to i64*
  store i64 %57, i64* %63, align 8
  %64 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %65 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %56
  %69 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %70 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %74 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %80 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %86 = call i32 @e100_enable_serial_tx_ready_irq(%struct.e100_serial* %85)
  br label %87

87:                                               ; preds = %84, %78, %68, %56
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @local_irq_restore(i64 %88)
  br label %90

90:                                               ; preds = %87, %1
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i32, i8*, i32) #1

declare dso_local i32 @CIRC_CNT(i64, i64, i32) #1

declare dso_local i64 @IO_FIELD(i32, i32, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @IO_STATE(i32, i32, i32) #1

declare dso_local i32 @e100_enable_serial_tx_ready_irq(%struct.e100_serial*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

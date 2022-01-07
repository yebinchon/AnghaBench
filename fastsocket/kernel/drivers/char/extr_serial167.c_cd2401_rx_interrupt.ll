; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyLICR = common dso_local global i64 0, align 8
@cy_port = common dso_local global %struct.cyclades_port* null, align 8
@jiffies = common dso_local global i32 0, align 4
@CyRFOC = common dso_local global i64 0, align 8
@CyRDR = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@CyNOTRANS = common dso_local global i8 0, align 1
@CyREOIR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DEBUG_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cd2401_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd2401_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.cyclades_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i64, i64* @BASE_ADDR, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* @CyLICR, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load volatile i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cyclades_port*, %struct.cyclades_port** @cy_port, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %21, i64 %23
  store %struct.cyclades_port* %24, %struct.cyclades_port** %6, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %27 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* @CyRFOC, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load volatile i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %34 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %10, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* @CyRDR, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load volatile i8, i8* %45, align 1
  store i8 %46, i8* %9, align 1
  br label %38

47:                                               ; preds = %38
  br label %72

48:                                               ; preds = %2
  %49 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %50 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.tty_struct*
  store %struct.tty_struct* %52, %struct.tty_struct** %5, align 8
  %53 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @tty_buffer_request_room(%struct.tty_struct* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %60, %48
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* @CyRDR, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load volatile i8, i8* %63, align 1
  store i8 %64, i8* %9, align 1
  %65 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %66 = load i8, i8* %9, align 1
  %67 = load i32, i32* @TTY_NORMAL, align 4
  %68 = call i32 @tty_insert_flip_char(%struct.tty_struct* %65, i8 signext %66, i32 %67)
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %71 = call i32 @tty_schedule_flip(%struct.tty_struct* %70)
  br label %72

72:                                               ; preds = %69, %47
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  %77 = load i8, i8* @CyNOTRANS, align 1
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %76, %75
  %80 = phi i32 [ 0, %75 ], [ %78, %76 ]
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* @CyREOIR, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store volatile i8 %81, i8* %84, align 1
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i32) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

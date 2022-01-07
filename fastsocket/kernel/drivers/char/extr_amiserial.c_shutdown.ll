; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.async_struct = type { i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_5__, i32, i32, %struct.serial_state* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.serial_state = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@IRQ_ports = common dso_local global i32* null, align 8
@IRQ_AMIGA_VERTB = common dso_local global i32 0, align 4
@IF_RBF = common dso_local global i32 0, align 4
@IF_TBE = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@AC_UARTBRK = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_struct*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.async_struct* %0) #0 {
  %2 = alloca %struct.async_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.serial_state*, align 8
  store %struct.async_struct* %0, %struct.async_struct** %2, align 8
  %5 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %6 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %97

12:                                               ; preds = %1
  %13 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %14 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %13, i32 0, i32 7
  %15 = load %struct.serial_state*, %struct.serial_state** %14, align 8
  store %struct.serial_state* %15, %struct.serial_state** %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %19 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %18, i32 0, i32 5
  %20 = call i32 @wake_up_interruptible(i32* %19)
  store i32* null, i32** @IRQ_ports, align 8
  %21 = load i32, i32* @IRQ_AMIGA_VERTB, align 4
  %22 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.async_struct* %22)
  %24 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %25 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %12
  %30 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %31 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = call i32 @free_page(i64 %34)
  %36 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %37 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %29, %12
  %40 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %41 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @IF_RBF, align 4
  %43 = load i32, i32* @IF_TBE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 0), align 4
  %45 = call i32 (...) @mb()
  %46 = load i32, i32* @AC_UARTBRK, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 1), align 4
  %47 = call i32 (...) @mb()
  %48 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %49 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %54 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HUPCL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %52, %39
  %64 = load i32, i32* @SER_DTR, align 4
  %65 = load i32, i32* @SER_RTS, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %69 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %52
  %73 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %74 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rtsdtr_ctrl(i32 %75)
  %77 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %78 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load i32, i32* @TTY_IO_ERROR, align 4
  %83 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %84 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %82, i32* %86)
  br label %88

88:                                               ; preds = %81, %72
  %89 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %92 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i64, i64* %3, align 8
  %96 = call i32 @local_irq_restore(i64 %95)
  br label %97

97:                                               ; preds = %88, %11
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.async_struct*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @rtsdtr_ctrl(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

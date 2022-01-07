; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_shutdown_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_shutdown_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.gs_port*)* }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_port*)* @gs_shutdown_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_shutdown_port(%struct.gs_port* %0) #0 {
  %2 = alloca %struct.gs_port*, align 8
  %3 = alloca i64, align 8
  store %struct.gs_port* %0, %struct.gs_port** %2, align 8
  %4 = call i32 (...) @func_enter()
  %5 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %6 = icmp ne %struct.gs_port* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %68

8:                                                ; preds = %1
  %9 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %10 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %68

17:                                               ; preds = %8
  %18 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %23 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %28 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = call i32 @free_page(i64 %30)
  %32 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %33 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %17
  %35 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %36 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @TTY_IO_ERROR, align 4
  %42 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %43 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %41, i32* %46)
  br label %48

48:                                               ; preds = %40, %34
  %49 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %50 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.gs_port*)*, i32 (%struct.gs_port*)** %52, align 8
  %54 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %55 = call i32 %53(%struct.gs_port* %54)
  %56 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %59 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %64 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %63, i32 0, i32 0
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = call i32 (...) @func_exit()
  br label %68

68:                                               ; preds = %48, %16, %7
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

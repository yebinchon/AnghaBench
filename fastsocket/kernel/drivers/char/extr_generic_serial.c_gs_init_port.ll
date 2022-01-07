; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i8*, i32, %struct.TYPE_3__, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@GS_TX_INTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_init_port(%struct.gs_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.gs_port* %0, %struct.gs_port** %3, align 8
  %6 = call i32 (...) @func_enter()
  %7 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %8 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @func_exit()
  store i32 0, i32* %2, align 4
  br label %113

16:                                               ; preds = %1
  %17 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %18 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @get_zeroed_page(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %25 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %29 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @free_page(i64 %33)
  br label %40

35:                                               ; preds = %21
  %36 = load i64, i64* %5, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %39 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %42 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %46 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = call i32 (...) @func_exit()
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %113

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %16
  %55 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %56 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %55, i32 0, i32 1
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %60 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @TTY_IO_ERROR, align 4
  %66 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %67 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @clear_bit(i32 %65, i32* %70)
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %74 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %73, i32 0, i32 6
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %77 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %79 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %81 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %83 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %82, i32 0, i32 1
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %87 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i32 @gs_set_termios(%struct.TYPE_4__* %89, i32* null)
  %91 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %92 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %91, i32 0, i32 1
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %96 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %97 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @GS_TX_INTEN, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %104 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %109 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %108, i32 0, i32 1
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = call i32 (...) @func_exit()
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %72, %49, %14
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gs_set_termios(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__*, %struct.stliport* }
%struct.TYPE_2__ = type { i32 }
%struct.stliport = type { i64, i64, i32, i32, %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.stlibrd = type { i32 }
%struct.file = type { i32 }

@stli_lock = common dso_local global i32 0, align 4
@stli_txcooktty = common dso_local global %struct.tty_struct* null, align 8
@ASYNC_CLOSING_WAIT_NONE = common dso_local global i64 0, align 8
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@HUPCL = common dso_local global i32 0, align 4
@ST_CMDING = common dso_local global i32 0, align 4
@ST_DOSIGS = common dso_local global i32 0, align 4
@A_SETSIGNALS = common dso_local global i32 0, align 4
@ST_TXBUSY = common dso_local global i32 0, align 4
@ST_RXSTOP = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ST_DOFLUSHRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @stli_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.stlibrd*, align 8
  %6 = alloca %struct.stliport*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 2
  %11 = load %struct.stliport*, %struct.stliport** %10, align 8
  store %struct.stliport* %11, %struct.stliport** %6, align 8
  %12 = load %struct.stliport*, %struct.stliport** %6, align 8
  %13 = icmp eq %struct.stliport* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %119

15:                                               ; preds = %2
  %16 = load %struct.stliport*, %struct.stliport** %6, align 8
  %17 = getelementptr inbounds %struct.stliport, %struct.stliport* %16, i32 0, i32 4
  store %struct.tty_port* %17, %struct.tty_port** %7, align 8
  %18 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call i64 @tty_port_close_start(%struct.tty_port* %18, %struct.tty_struct* %19, %struct.file* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %119

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @stli_lock, i64 %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** @stli_txcooktty, align 8
  %29 = icmp eq %struct.tty_struct* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = call i32 @stli_flushchars(%struct.tty_struct* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @stli_lock, i64 %34)
  %36 = load %struct.stliport*, %struct.stliport** %6, align 8
  %37 = getelementptr inbounds %struct.stliport, %struct.stliport* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ASYNC_CLOSING_WAIT_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = load %struct.stliport*, %struct.stliport** %6, align 8
  %44 = getelementptr inbounds %struct.stliport, %struct.stliport* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @tty_wait_until_sent(%struct.tty_struct* %42, i64 %45)
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %51 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %55 = load %struct.stliport*, %struct.stliport** %6, align 8
  %56 = getelementptr inbounds %struct.stliport, %struct.stliport* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %54, i64 %57
  %59 = load %struct.stlibrd*, %struct.stlibrd** %58, align 8
  store %struct.stlibrd* %59, %struct.stlibrd** %5, align 8
  %60 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %61 = load %struct.stliport*, %struct.stliport** %6, align 8
  %62 = call i32 @stli_rawclose(%struct.stlibrd* %60, %struct.stliport* %61, i32 0, i32 0)
  %63 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HUPCL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %47
  %72 = load %struct.stliport*, %struct.stliport** %6, align 8
  %73 = getelementptr inbounds %struct.stliport, %struct.stliport* %72, i32 0, i32 3
  %74 = call i32 @stli_mkasysigs(i32* %73, i32 0, i32 0)
  %75 = load i32, i32* @ST_CMDING, align 4
  %76 = load %struct.stliport*, %struct.stliport** %6, align 8
  %77 = getelementptr inbounds %struct.stliport, %struct.stliport* %76, i32 0, i32 2
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32, i32* @ST_DOSIGS, align 4
  %82 = load %struct.stliport*, %struct.stliport** %6, align 8
  %83 = getelementptr inbounds %struct.stliport, %struct.stliport* %82, i32 0, i32 2
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  br label %92

85:                                               ; preds = %71
  %86 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %87 = load %struct.stliport*, %struct.stliport** %6, align 8
  %88 = load i32, i32* @A_SETSIGNALS, align 4
  %89 = load %struct.stliport*, %struct.stliport** %6, align 8
  %90 = getelementptr inbounds %struct.stliport, %struct.stliport* %89, i32 0, i32 3
  %91 = call i32 @stli_sendcmd(%struct.stlibrd* %86, %struct.stliport* %87, i32 %88, i32* %90, i32 4, i32 0)
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %47
  %94 = load i32, i32* @ST_TXBUSY, align 4
  %95 = load %struct.stliport*, %struct.stliport** %6, align 8
  %96 = getelementptr inbounds %struct.stliport, %struct.stliport* %95, i32 0, i32 2
  %97 = call i32 @clear_bit(i32 %94, i32* %96)
  %98 = load i32, i32* @ST_RXSTOP, align 4
  %99 = load %struct.stliport*, %struct.stliport** %6, align 8
  %100 = getelementptr inbounds %struct.stliport, %struct.stliport* %99, i32 0, i32 2
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @TTY_IO_ERROR, align 4
  %103 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %104 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %103, i32 0, i32 0
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  %106 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %107 = call i32 @tty_ldisc_flush(%struct.tty_struct* %106)
  %108 = load i32, i32* @ST_DOFLUSHRX, align 4
  %109 = load %struct.stliport*, %struct.stliport** %6, align 8
  %110 = getelementptr inbounds %struct.stliport, %struct.stliport* %109, i32 0, i32 2
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  %112 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %113 = call i32 @stli_flushbuffer(%struct.tty_struct* %112)
  %114 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %115 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %116 = call i32 @tty_port_close_end(%struct.tty_port* %114, %struct.tty_struct* %115)
  %117 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %118 = call i32 @tty_port_tty_set(%struct.tty_port* %117, i32* null)
  br label %119

119:                                              ; preds = %93, %23, %14
  ret void
}

declare dso_local i64 @tty_port_close_start(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stli_flushchars(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i64) #1

declare dso_local i32 @stli_rawclose(%struct.stlibrd*, %struct.stliport*, i32, i32) #1

declare dso_local i32 @stli_mkasysigs(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @stli_sendcmd(%struct.stlibrd*, %struct.stliport*, i32, i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @stli_flushbuffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_close_end(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

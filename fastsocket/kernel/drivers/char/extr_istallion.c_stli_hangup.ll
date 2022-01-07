; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { i32, %struct.TYPE_2__*, %struct.stliport* }
%struct.TYPE_2__ = type { i32 }
%struct.stliport = type { i64, i32, i32, %struct.tty_port }
%struct.tty_port = type { i32, i32 }

@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@ST_CLOSING = common dso_local global i32 0, align 4
@stli_lock = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@ST_CMDING = common dso_local global i32 0, align 4
@ST_DOSIGS = common dso_local global i32 0, align 4
@ST_DOFLUSHTX = common dso_local global i32 0, align 4
@ST_DOFLUSHRX = common dso_local global i32 0, align 4
@A_SETSIGNALSF = common dso_local global i32 0, align 4
@ST_TXBUSY = common dso_local global i32 0, align 4
@ST_RXSTOP = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @stli_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.stliport*, align 8
  %4 = alloca %struct.stlibrd*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 2
  %9 = load %struct.stliport*, %struct.stliport** %8, align 8
  store %struct.stliport* %9, %struct.stliport** %3, align 8
  %10 = load %struct.stliport*, %struct.stliport** %3, align 8
  %11 = icmp eq %struct.stliport* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %114

13:                                               ; preds = %1
  %14 = load %struct.stliport*, %struct.stliport** %3, align 8
  %15 = getelementptr inbounds %struct.stliport, %struct.stliport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @stli_nrbrds, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %114

20:                                               ; preds = %13
  %21 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %22 = load %struct.stliport*, %struct.stliport** %3, align 8
  %23 = getelementptr inbounds %struct.stliport, %struct.stliport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %21, i64 %24
  %26 = load %struct.stlibrd*, %struct.stlibrd** %25, align 8
  store %struct.stlibrd* %26, %struct.stlibrd** %4, align 8
  %27 = load %struct.stlibrd*, %struct.stlibrd** %4, align 8
  %28 = icmp eq %struct.stlibrd* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %114

30:                                               ; preds = %20
  %31 = load %struct.stliport*, %struct.stliport** %3, align 8
  %32 = getelementptr inbounds %struct.stliport, %struct.stliport* %31, i32 0, i32 3
  store %struct.tty_port* %32, %struct.tty_port** %5, align 8
  %33 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %34 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %40 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %44 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @ST_CLOSING, align 4
  %48 = load %struct.stliport*, %struct.stliport** %3, align 8
  %49 = getelementptr inbounds %struct.stliport, %struct.stliport* %48, i32 0, i32 1
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %30
  %53 = load %struct.stlibrd*, %struct.stlibrd** %4, align 8
  %54 = load %struct.stliport*, %struct.stliport** %3, align 8
  %55 = call i32 @stli_rawclose(%struct.stlibrd* %53, %struct.stliport* %54, i32 0, i32 0)
  br label %56

56:                                               ; preds = %52, %30
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_lock_irqsave(i32* @stli_lock, i64 %57)
  %59 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HUPCL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %56
  %68 = load %struct.stliport*, %struct.stliport** %3, align 8
  %69 = getelementptr inbounds %struct.stliport, %struct.stliport* %68, i32 0, i32 2
  %70 = call i32 @stli_mkasysigs(i32* %69, i32 0, i32 0)
  %71 = load i32, i32* @ST_CMDING, align 4
  %72 = load %struct.stliport*, %struct.stliport** %3, align 8
  %73 = getelementptr inbounds %struct.stliport, %struct.stliport* %72, i32 0, i32 1
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %67
  %77 = load i32, i32* @ST_DOSIGS, align 4
  %78 = load %struct.stliport*, %struct.stliport** %3, align 8
  %79 = getelementptr inbounds %struct.stliport, %struct.stliport* %78, i32 0, i32 1
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load i32, i32* @ST_DOFLUSHTX, align 4
  %82 = load %struct.stliport*, %struct.stliport** %3, align 8
  %83 = getelementptr inbounds %struct.stliport, %struct.stliport* %82, i32 0, i32 1
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  %85 = load i32, i32* @ST_DOFLUSHRX, align 4
  %86 = load %struct.stliport*, %struct.stliport** %3, align 8
  %87 = getelementptr inbounds %struct.stliport, %struct.stliport* %86, i32 0, i32 1
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  br label %96

89:                                               ; preds = %67
  %90 = load %struct.stlibrd*, %struct.stlibrd** %4, align 8
  %91 = load %struct.stliport*, %struct.stliport** %3, align 8
  %92 = load i32, i32* @A_SETSIGNALSF, align 4
  %93 = load %struct.stliport*, %struct.stliport** %3, align 8
  %94 = getelementptr inbounds %struct.stliport, %struct.stliport* %93, i32 0, i32 2
  %95 = call i32 @stli_sendcmd(%struct.stlibrd* %90, %struct.stliport* %91, i32 %92, i32* %94, i32 4, i32 0)
  br label %96

96:                                               ; preds = %89, %76
  br label %97

97:                                               ; preds = %96, %56
  %98 = load i32, i32* @ST_TXBUSY, align 4
  %99 = load %struct.stliport*, %struct.stliport** %3, align 8
  %100 = getelementptr inbounds %struct.stliport, %struct.stliport* %99, i32 0, i32 1
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @ST_RXSTOP, align 4
  %103 = load %struct.stliport*, %struct.stliport** %3, align 8
  %104 = getelementptr inbounds %struct.stliport, %struct.stliport* %103, i32 0, i32 1
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = load i32, i32* @TTY_IO_ERROR, align 4
  %107 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %108 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %107, i32 0, i32 0
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* @stli_lock, i64 %110)
  %112 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %113 = call i32 @tty_port_hangup(%struct.tty_port* %112)
  br label %114

114:                                              ; preds = %97, %29, %19, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @stli_rawclose(%struct.stlibrd*, %struct.stliport*, i32, i32) #1

declare dso_local i32 @stli_mkasysigs(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @stli_sendcmd(%struct.stlibrd*, %struct.stliport*, i32, i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tty_port_hangup(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

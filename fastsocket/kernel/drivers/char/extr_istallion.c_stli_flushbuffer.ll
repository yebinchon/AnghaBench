; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_flushbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_flushbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { %struct.stliport* }
%struct.stliport = type { i64, i32 }

@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@brd_lock = common dso_local global i32 0, align 4
@stli_txcooktty = common dso_local global %struct.tty_struct* null, align 8
@stli_txcooksize = common dso_local global i64 0, align 8
@stli_txcookrealsize = common dso_local global i64 0, align 8
@ST_CMDING = common dso_local global i32 0, align 4
@ST_DOFLUSHTX = common dso_local global i32 0, align 4
@FLUSHTX = common dso_local global i64 0, align 8
@ST_DOFLUSHRX = common dso_local global i32 0, align 4
@FLUSHRX = common dso_local global i64 0, align 8
@A_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @stli_flushbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_flushbuffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.stliport*, align 8
  %4 = alloca %struct.stlibrd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.stliport*, %struct.stliport** %8, align 8
  store %struct.stliport* %9, %struct.stliport** %3, align 8
  %10 = load %struct.stliport*, %struct.stliport** %3, align 8
  %11 = icmp eq %struct.stliport* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.stliport*, %struct.stliport** %3, align 8
  %15 = getelementptr inbounds %struct.stliport, %struct.stliport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @stli_nrbrds, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %73

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
  br label %73

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %31)
  %33 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** @stli_txcooktty, align 8
  %35 = icmp eq %struct.tty_struct* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store %struct.tty_struct* null, %struct.tty_struct** @stli_txcooktty, align 8
  store i64 0, i64* @stli_txcooksize, align 8
  store i64 0, i64* @stli_txcookrealsize, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* @ST_CMDING, align 4
  %39 = load %struct.stliport*, %struct.stliport** %3, align 8
  %40 = getelementptr inbounds %struct.stliport, %struct.stliport* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* @ST_DOFLUSHTX, align 4
  %45 = load %struct.stliport*, %struct.stliport** %3, align 8
  %46 = getelementptr inbounds %struct.stliport, %struct.stliport* %45, i32 0, i32 1
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %68

48:                                               ; preds = %37
  %49 = load i64, i64* @FLUSHTX, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i32, i32* @ST_DOFLUSHRX, align 4
  %51 = load %struct.stliport*, %struct.stliport** %3, align 8
  %52 = getelementptr inbounds %struct.stliport, %struct.stliport* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i64, i64* @FLUSHRX, align 8
  %57 = load i64, i64* %5, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %5, align 8
  %59 = load i32, i32* @ST_DOFLUSHRX, align 4
  %60 = load %struct.stliport*, %struct.stliport** %3, align 8
  %61 = getelementptr inbounds %struct.stliport, %struct.stliport* %60, i32 0, i32 1
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.stlibrd*, %struct.stlibrd** %4, align 8
  %65 = load %struct.stliport*, %struct.stliport** %3, align 8
  %66 = load i32, i32* @A_FLUSH, align 4
  %67 = call i32 @__stli_sendcmd(%struct.stlibrd* %64, %struct.stliport* %65, i32 %66, i64* %5, i32 4, i32 0)
  br label %68

68:                                               ; preds = %63, %43
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %69)
  %71 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %72 = call i32 @tty_wakeup(%struct.tty_struct* %71)
  br label %73

73:                                               ; preds = %68, %29, %19, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__stli_sendcmd(%struct.stlibrd*, %struct.stliport*, i32, i64*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

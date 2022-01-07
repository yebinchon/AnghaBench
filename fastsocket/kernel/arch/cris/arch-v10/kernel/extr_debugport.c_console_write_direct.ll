; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_debugport.c_console_write_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_debugport.c_console_write_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i8* }
%struct.console = type { i32 }

@port = common dso_local global %struct.TYPE_2__* null, align 8
@R_SERIAL0_READ = common dso_local global i32 0, align 4
@tr_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @console_write_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @console_write_direct(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %73

12:                                               ; preds = %3
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %66, %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %39, %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @R_SERIAL0_READ, align 4
  %34 = load i32, i32* @tr_ready, align 4
  %35 = call i32 @IO_MASK(i32 %33, i32 %34)
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8 13, i8* %43, align 1
  br label %44

44:                                               ; preds = %40, %19
  br label %45

45:                                               ; preds = %56, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @R_SERIAL0_READ, align 4
  %51 = load i32, i32* @tr_ready, align 4
  %52 = call i32 @IO_MASK(i32 %50, i32 %51)
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %45

57:                                               ; preds = %45
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %15

69:                                               ; preds = %15
  %70 = call i32 (...) @reset_watchdog()
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  br label %73

73:                                               ; preds = %69, %11
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @IO_MASK(i32, i32) #1

declare dso_local i32 @reset_watchdog(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

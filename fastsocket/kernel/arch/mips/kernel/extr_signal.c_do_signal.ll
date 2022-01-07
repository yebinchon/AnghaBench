; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_signal.c_do_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_signal.c_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pt_regs = type { i64*, i32 }
%struct.k_sigaction = type { i32 }

@TIF_RESTORE_SIGMASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@ERESTARTNOHAND = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@ERESTARTNOINTR = common dso_local global i64 0, align 8
@ERESTART_RESTARTBLOCK = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @do_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_signal(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.k_sigaction, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %134

11:                                               ; preds = %1
  %12 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %13 = call i64 @test_thread_flag(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* %17, i32** %4, align 8
  br label %21

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32* %20, i32** %4, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = call i32 @get_signal_to_deliver(i32* %5, %struct.k_sigaction* %3, %struct.pt_regs* %22, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = call i64 @handle_signal(i32 %27, i32* %5, %struct.k_sigaction* %3, i32* %28, %struct.pt_regs* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %34 = call i64 @test_thread_flag(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %38 = call i32 @clear_thread_flag(i32 %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %26
  br label %134

41:                                               ; preds = %21
  %42 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %123

48:                                               ; preds = %41
  %49 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ERESTARTNOHAND, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %48
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ERESTARTSYS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ERESTARTNOINTR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %64, %56, %48
  %73 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 26
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 7
  store i64 %77, i64* %81, align 8
  %82 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 8
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %72, %64
  %87 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ERESTART_RESTARTBLOCK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %86
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  store i64 %100, i64* %104, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 26
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 7
  store i64 %109, i64* %113, align 8
  %114 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 4
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %94, %86
  %119 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %120 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %41
  %124 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %125 = call i64 @test_thread_flag(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %129 = call i32 @clear_thread_flag(i32 %128)
  %130 = load i32, i32* @SIG_SETMASK, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = call i32 @sigprocmask(i32 %130, i32* %132, i32* null)
  br label %134

134:                                              ; preds = %10, %40, %127, %123
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @get_signal_to_deliver(i32*, %struct.k_sigaction*, %struct.pt_regs*, i32*) #1

declare dso_local i64 @handle_signal(i32, i32*, %struct.k_sigaction*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_signal.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_signal.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.k_sigaction*, %struct.pt_regs*, i64, i32*, i32*)*, i32 (%struct.k_sigaction*, %struct.pt_regs*, i64, i32*)* }
%struct.k_sigaction = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pt_regs = type { i32*, i32 }

@EINTR = common dso_local global i8* null, align 8
@SA_RESTART = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@SA_NODEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, %struct.k_sigaction*, i32*, %struct.pt_regs*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_signal(i64 %0, i32* %1, %struct.k_sigaction* %2, i32* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.k_sigaction*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.k_sigaction* %2, %struct.k_sigaction** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %54 [
    i32 128, label %17
    i32 131, label %17
    i32 129, label %24
    i32 130, label %40
  ]

17:                                               ; preds = %5, %5
  %18 = load i8*, i8** @EINTR, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %19, i32* %23, align 4
  br label %54

24:                                               ; preds = %5
  %25 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %26 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SA_RESTART, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** @EINTR, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %34, i32* %38, align 4
  br label %54

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %5, %39
  %41 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 26
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  store i32 %45, i32* %49, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 8
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %40, %5, %32, %17
  %55 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 0, i32* %58, align 4
  %59 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %60 = call i64 @sig_uses_siginfo(%struct.k_sigaction* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.k_sigaction*, %struct.pt_regs*, i64, i32*, i32*)*, i32 (%struct.k_sigaction*, %struct.pt_regs*, i64, i32*, i32*)** %67, align 8
  %69 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %70 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 %68(%struct.k_sigaction* %69, %struct.pt_regs* %70, i64 %71, i32* %72, i32* %73)
  store i32 %74, i32* %11, align 4
  br label %87

75:                                               ; preds = %54
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32 (%struct.k_sigaction*, %struct.pt_regs*, i64, i32*)*, i32 (%struct.k_sigaction*, %struct.pt_regs*, i64, i32*)** %80, align 8
  %82 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %83 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 %81(%struct.k_sigaction* %82, %struct.pt_regs* %83, i64 %84, i32* %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %75, %62
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_irq(i32* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %98 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = call i32 @sigorsets(i32* %94, i32* %96, i32* %99)
  %101 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %102 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SA_NODEFER, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %87
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @sigaddset(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %108, %87
  %114 = call i32 (...) @recalc_sigpending()
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_irq(i32* %118)
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i64 @sig_uses_siginfo(%struct.k_sigaction*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sigorsets(i32*, i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i64) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

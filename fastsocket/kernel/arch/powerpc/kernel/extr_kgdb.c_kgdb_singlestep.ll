; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_kgdb_singlestep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_kgdb_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }
%struct.thread_info = type { i32 }

@THREAD_SIZE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @kgdb_singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_singlestep(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.thread_info*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i64 @user_mode(%struct.pt_regs* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @THREAD_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.thread_info*
  store %struct.thread_info* %21, %struct.thread_info** %4, align 8
  %22 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %22, %struct.thread_info** %5, align 8
  %23 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %24 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %25 = icmp ne %struct.thread_info* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %28 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %29 = call i32 @memcpy(%struct.thread_info* %27, %struct.thread_info* %28, i32 4)
  br label %30

30:                                               ; preds = %26, %10
  %31 = load i32, i32* @SIGTRAP, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = call i32 @kgdb_handle_exception(i32 0, i32 %31, i32 0, %struct.pt_regs* %32)
  %34 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %35 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %36 = icmp ne %struct.thread_info* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %39 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %40 = call i32 @memcpy(%struct.thread_info* %38, %struct.thread_info* %39, i32 4)
  br label %41

41:                                               ; preds = %37, %30
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @memcpy(%struct.thread_info*, %struct.thread_info*, i32) #1

declare dso_local i32 @kgdb_handle_exception(i32, i32, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

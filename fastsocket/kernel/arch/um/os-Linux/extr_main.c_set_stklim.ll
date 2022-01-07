; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_main.c_set_stklim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_main.c_set_stklim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64 }

@RLIMIT_STACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1
@RLIM_INFINITY = common dso_local global i64 0, align 8
@STACKSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_stklim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_stklim() #0 {
  %1 = alloca %struct.rlimit, align 8
  %2 = load i32, i32* @RLIMIT_STACK, align 4
  %3 = call i64 @getrlimit(i32 %2, %struct.rlimit* %1)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @exit(i32 1) #3
  unreachable

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RLIM_INFINITY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STACKSIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %13, %8
  %19 = load i64, i64* @STACKSIZE, align 8
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @RLIMIT_STACK, align 4
  %22 = call i64 @setrlimit(i32 %21, %struct.rlimit* %1)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13
  ret void
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

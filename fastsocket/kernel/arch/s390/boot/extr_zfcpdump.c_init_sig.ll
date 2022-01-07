; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_init_sig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_init_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@SA_NODEFER = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dump_sig_handler = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sig() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SA_NODEFER, align 4
  %3 = load i32, i32* @SA_SIGINFO, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @SA_RESETHAND, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %7 = load i64, i64* @dump_sig_handler, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 2), align 8
  %8 = call i64 @sigemptyset(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 1))
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %42

11:                                               ; preds = %0
  %12 = load i32, i32* @SIGINT, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %42

16:                                               ; preds = %11
  %17 = load i32, i32* @SIGTERM, align 4
  %18 = call i64 @sigaction(i32 %17, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), i32* null)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %42

21:                                               ; preds = %16
  %22 = load i32, i32* @SIGPIPE, align 4
  %23 = call i64 @sigaction(i32 %22, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), i32* null)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %1, align 4
  br label %42

26:                                               ; preds = %21
  %27 = load i32, i32* @SIGABRT, align 4
  %28 = call i64 @sigaction(i32 %27, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), i32* null)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %1, align 4
  br label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @SIGSEGV, align 4
  %33 = call i64 @sigaction(i32 %32, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), i32* null)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %1, align 4
  br label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @SIGBUS, align 4
  %38 = call i64 @sigaction(i32 %37, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), i32* null)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %1, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %40, %35, %30, %25, %20, %15, %10
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_unaligned_64.c_decode_access_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_unaligned_64.c_decode_access_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Impossible unaligned trap. insn=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Byte sized unaligned access?!?!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @decode_access_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_access_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 15
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 11
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  store i32 8, i32* %2, align 4
  br label %35

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 3
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 4, i32* %2, align 4
  br label %35

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 16, i32* %2, align 4
  br label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2, i32* %2, align 4
  br label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call %struct.TYPE_2__* (...) @current_thread_info()
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @die_if_kernel(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %27, %23, %19, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @die_if_kernel(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

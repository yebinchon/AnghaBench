; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_via_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_via_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [73 x i8] c"via_read_time: couldn't get valid time, last read = 0x%08lx and 0x%08lx\0A\00", align 1
@RTC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @via_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @via_read_time() #0 {
  %1 = alloca %union.anon, align 8
  %2 = alloca %union.anon, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %0
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = icmp sgt i32 %6, 10
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = bitcast %union.anon* %2 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = bitcast %union.anon* %1 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %12)
  br label %37

14:                                               ; preds = %4
  %15 = bitcast %union.anon* %1 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %union.anon* %2 to i64*
  store i64 %16, i64* %17, align 8
  %18 = bitcast %union.anon* %1 to i64*
  store i64 0, i64* %18, align 8
  %19 = bitcast %union.anon* %1 to [4 x i32]*
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %21 = call i32 @via_pram_command(i32 129, i32* %20)
  %22 = bitcast %union.anon* %1 to [4 x i32]*
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  %24 = call i32 @via_pram_command(i32 133, i32* %23)
  %25 = bitcast %union.anon* %1 to [4 x i32]*
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 1
  %27 = call i32 @via_pram_command(i32 137, i32* %26)
  %28 = bitcast %union.anon* %1 to [4 x i32]*
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %30 = call i32 @via_pram_command(i32 141, i32* %29)
  br label %31

31:                                               ; preds = %14
  %32 = bitcast %union.anon* %1 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = bitcast %union.anon* %2 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %4, label %37

37:                                               ; preds = %31, %8
  %38 = bitcast %union.anon* %1 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RTC_OFFSET, align 8
  %41 = sub nsw i64 %39, %40
  ret i64 %41
}

declare dso_local i32 @printk(i8*, i64, i64) #1

declare dso_local i32 @via_pram_command(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

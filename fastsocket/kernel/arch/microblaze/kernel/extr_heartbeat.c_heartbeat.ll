; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_heartbeat.c_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_heartbeat.c_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@heartbeat.cnt = internal global i32 0, align 4
@heartbeat.period = internal global i32 0, align 4
@heartbeat.dist = internal global i32 0, align 4
@base_addr = common dso_local global i64 0, align 8
@FSHIFT = common dso_local global i32 0, align 4
@avenrun = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heartbeat() #0 {
  %1 = load i64, i64* @base_addr, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %45

3:                                                ; preds = %0
  %4 = load i32, i32* @heartbeat.cnt, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @heartbeat.cnt, align 4
  %8 = load i32, i32* @heartbeat.dist, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %3
  %11 = load i64, i64* @base_addr, align 8
  %12 = call i32 @out_be32(i64 %11, i32 1)
  br label %25

13:                                               ; preds = %6
  %14 = load i32, i32* @heartbeat.cnt, align 4
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @heartbeat.cnt, align 4
  %18 = load i32, i32* @heartbeat.dist, align 4
  %19 = add i32 %18, 7
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %13
  %22 = load i64, i64* @base_addr, align 8
  %23 = call i32 @out_be32(i64 %22, i32 0)
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* @heartbeat.cnt, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* @heartbeat.cnt, align 4
  %28 = load i32, i32* @heartbeat.period, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  store i32 0, i32* @heartbeat.cnt, align 4
  %31 = load i32, i32* @FSHIFT, align 4
  %32 = shl i32 672, %31
  %33 = load i32*, i32** @avenrun, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 5, %35
  %37 = load i32, i32* @FSHIFT, align 4
  %38 = shl i32 7, %37
  %39 = add nsw i32 %36, %38
  %40 = sdiv i32 %32, %39
  %41 = add nsw i32 %40, 30
  store i32 %41, i32* @heartbeat.period, align 4
  %42 = load i32, i32* @heartbeat.period, align 4
  %43 = udiv i32 %42, 4
  store i32 %43, i32* @heartbeat.dist, align 4
  br label %44

44:                                               ; preds = %30, %25
  br label %45

45:                                               ; preds = %44, %0
  ret void
}

declare dso_local i32 @out_be32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

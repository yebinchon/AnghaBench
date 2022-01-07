; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_read_spr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_read_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @read_spr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_spr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i64 ()*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 -1, i64* %5, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %7 = bitcast i32* %6 to i64 ()*
  store i64 ()* %7, i64 ()** %4, align 8
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 31
  %10 = shl i32 %9, 16
  %11 = add nsw i32 2086666918, %10
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 992
  %14 = shl i32 %13, 6
  %15 = add nsw i32 %11, %14
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 1317011488, i32* %17, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %19 = call i32 @store_inst(i32* %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @store_inst(i32* %21)
  %23 = load i32, i32* @bus_error_jmp, align 4
  %24 = call i64 @setjmp(i32 %23) #3
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  store i32 1, i32* @catch_memory_errors, align 4
  %27 = call i32 (...) @sync()
  %28 = load i64 ()*, i64 ()** %4, align 8
  %29 = call i64 %28()
  store i64 %29, i64* %5, align 8
  %30 = call i32 (...) @sync()
  %31 = call i32 @__delay(i32 200)
  %32 = load i32, i32* @size, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %1
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local i32 @store_inst(i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @sync(...) #1

declare dso_local i32 @__delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

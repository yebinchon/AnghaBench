; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFAG12864B_SIZE = common dso_local global i16 0, align 2
@cfag12864b_buffer = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cfag12864b_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfag12864b_clear() #0 {
  %1 = alloca i16, align 2
  store i16 0, i16* %1, align 2
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i16, i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* @CFAG12864B_SIZE, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i64*, i64** @cfag12864b_buffer, align 8
  %10 = load i16, i16* %1, align 2
  %11 = zext i16 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %8
  %14 = load i16, i16* %1, align 2
  %15 = add i16 %14, 1
  store i16 %15, i16* %1, align 2
  br label %2

16:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

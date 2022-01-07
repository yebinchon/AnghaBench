; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_isset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_isset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfag12864b_buffer = common dso_local global i32* null, align 8
@CFAG12864B_BPB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, i8)* @cfag12864b_isset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @cfag12864b_isset(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %4, align 1
  %7 = load i8, i8* %5, align 1
  %8 = call i64 @CFAG12864B_CHECK(i8 zeroext %6, i8 zeroext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32*, i32** @cfag12864b_buffer, align 8
  %12 = load i8, i8* %4, align 1
  %13 = load i8, i8* %5, align 1
  %14 = call i64 @CFAG12864B_ADDRESS(i8 zeroext %12, i8 zeroext %13)
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @CFAG12864B_BPB, align 1
  %20 = zext i8 %19 to i32
  %21 = srem i32 %18, %20
  %22 = trunc i32 %21 to i8
  %23 = call i32 @CFAG12864B_BIT(i8 zeroext %22)
  %24 = and i32 %16, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  store i8 1, i8* %3, align 1
  br label %29

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27, %2
  store i8 0, i8* %3, align 1
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i8, i8* %3, align 1
  ret i8 %30
}

declare dso_local i64 @CFAG12864B_CHECK(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @CFAG12864B_ADDRESS(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @CFAG12864B_BIT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFAG12864B_BPB = common dso_local global i8 0, align 1
@cfag12864b_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8)* @cfag12864b_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfag12864b_set(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = load i8, i8* %4, align 1
  %7 = call i64 @CFAG12864B_CHECK(i8 zeroext %5, i8 zeroext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @CFAG12864B_BPB, align 1
  %13 = zext i8 %12 to i32
  %14 = srem i32 %11, %13
  %15 = trunc i32 %14 to i8
  %16 = call i32 @CFAG12864B_BIT(i8 zeroext %15)
  %17 = load i32*, i32** @cfag12864b_buffer, align 8
  %18 = load i8, i8* %3, align 1
  %19 = load i8, i8* %4, align 1
  %20 = call i64 @CFAG12864B_ADDRESS(i8 zeroext %18, i8 zeroext %19)
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %16
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @CFAG12864B_CHECK(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @CFAG12864B_BIT(i8 zeroext) #1

declare dso_local i64 @CFAG12864B_ADDRESS(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

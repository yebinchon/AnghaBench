; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_ascii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@npadch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8, i8)* @k_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_ascii(%struct.vc_data* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* %6, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %34

11:                                               ; preds = %3
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 10, i32* %7, align 4
  br label %21

16:                                               ; preds = %11
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 %18, 10
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %5, align 1
  store i32 16, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* @npadch, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* @npadch, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @npadch, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* @npadch, align 4
  br label %34

34:                                               ; preds = %10, %27, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

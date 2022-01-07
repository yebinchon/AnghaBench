; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_rfwritev_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_rfwritev_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rfwritev_locked(%struct.zd_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %30, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @zd_rfwrite_locked(%struct.zd_chip* %17, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @zd_rfwrite_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

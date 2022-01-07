; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_priv*, i8*, i64, i64)* @sh_cmt_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_register(%struct.sh_cmt_priv* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sh_cmt_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %10 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %16 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  br label %25

17:                                               ; preds = %4
  %18 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %19 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %24 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %27 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %30 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %32 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @sh_cmt_register_clockevent(%struct.sh_cmt_priv* %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @sh_cmt_register_clocksource(%struct.sh_cmt_priv* %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %41
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sh_cmt_register_clockevent(%struct.sh_cmt_priv*, i8*, i64) #1

declare dso_local i32 @sh_cmt_register_clocksource(%struct.sh_cmt_priv*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

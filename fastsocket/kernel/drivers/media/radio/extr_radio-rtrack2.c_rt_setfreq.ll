; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-rtrack2.c_rt_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-rtrack2.c_rt_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtrack2 = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtrack2*, i64)* @rt_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_setfreq(%struct.rtrack2* %0, i64 %1) #0 {
  %3 = alloca %struct.rtrack2*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.rtrack2* %0, %struct.rtrack2** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %7 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %11 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 200
  %14 = add i64 %13, 856
  store i64 %14, i64* %4, align 8
  %15 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %16 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @outb_p(i32 200, i32 %17)
  %19 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %20 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @outb_p(i32 201, i32 %21)
  %23 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %24 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @outb_p(i32 201, i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %33, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %32 = call i32 @zero(%struct.rtrack2* %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %27

36:                                               ; preds = %27
  store i32 14, i32* %5, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = and i64 %41, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %49 = call i32 @one(%struct.rtrack2* %48)
  br label %53

50:                                               ; preds = %40
  %51 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %52 = call i32 @zero(%struct.rtrack2* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %59 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @outb_p(i32 200, i32 %60)
  %62 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %63 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %68 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @outb_p(i32 0, i32 %69)
  br label %71

71:                                               ; preds = %66, %57
  %72 = load %struct.rtrack2*, %struct.rtrack2** %3, align 8
  %73 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @zero(%struct.rtrack2*) #1

declare dso_local i32 @one(%struct.rtrack2*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

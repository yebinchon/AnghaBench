; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-aimslab.c_rt_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-aimslab.c_rt_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtrack = type { i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtrack*, i64)* @rt_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_setfreq(%struct.rtrack* %0, i64 %1) #0 {
  %3 = alloca %struct.rtrack*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.rtrack* %0, %struct.rtrack** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %7 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %11 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 171200
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = udiv i64 %14, 800
  store i64 %15, i64* %4, align 8
  %16 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %17 = call i32 @send_0_byte(%struct.rtrack* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %35, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = and i64 %22, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %30 = call i32 @send_1_byte(%struct.rtrack* %29)
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %33 = call i32 @send_0_byte(%struct.rtrack* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %40 = call i32 @send_0_byte(%struct.rtrack* %39)
  %41 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %42 = call i32 @send_0_byte(%struct.rtrack* %41)
  %43 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %44 = call i32 @send_0_byte(%struct.rtrack* %43)
  %45 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %46 = call i32 @send_0_byte(%struct.rtrack* %45)
  %47 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %48 = call i32 @send_0_byte(%struct.rtrack* %47)
  %49 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %50 = call i32 @send_0_byte(%struct.rtrack* %49)
  %51 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %52 = call i32 @send_0_byte(%struct.rtrack* %51)
  %53 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %54 = call i32 @send_1_byte(%struct.rtrack* %53)
  %55 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %56 = call i32 @send_0_byte(%struct.rtrack* %55)
  %57 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %58 = call i32 @send_1_byte(%struct.rtrack* %57)
  %59 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %60 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %38
  %64 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %65 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63, %38
  %69 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %70 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @outb(i32 208, i32 %71)
  br label %78

73:                                               ; preds = %63
  %74 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %75 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @outb(i32 216, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.rtrack*, %struct.rtrack** %3, align 8
  %80 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_0_byte(%struct.rtrack*) #1

declare dso_local i32 @send_1_byte(%struct.rtrack*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_zol_setvol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_zol_setvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoltrix = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zoltrix*, i32)* @zol_setvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zol_setvol(%struct.zoltrix* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zoltrix*, align 8
  %5 = alloca i32, align 4
  store %struct.zoltrix* %0, %struct.zoltrix** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %8 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %10 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %16 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %22 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @outb(i32 0, i64 %23)
  %25 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %26 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @outb(i32 0, i64 %27)
  %29 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %30 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 3
  %33 = call i32 @inb(i64 %32)
  %34 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %35 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %3, align 4
  br label %55

37:                                               ; preds = %14
  %38 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %39 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %43 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @outb(i32 %41, i64 %44)
  %46 = call i32 @msleep(i32 10)
  %47 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %48 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 2
  %51 = call i32 @inb(i64 %50)
  %52 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %53 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %37, %20, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

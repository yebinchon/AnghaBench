; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_zol_getsigstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_zol_getsigstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoltrix = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zoltrix*)* @zol_getsigstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zol_getsigstr(%struct.zoltrix* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zoltrix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zoltrix* %0, %struct.zoltrix** %3, align 8
  %6 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %7 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %10 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @outb(i32 0, i32 %11)
  %13 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %14 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %17 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @outb(i32 %15, i32 %18)
  %20 = call i32 @msleep(i32 20)
  %21 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %22 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @inb(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = call i32 @msleep(i32 10)
  %26 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %27 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @inb(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.zoltrix*, %struct.zoltrix** %3, align 8
  %31 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 207
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 223
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 239
  br label %46

46:                                               ; preds = %43, %40, %37
  %47 = phi i1 [ true, %40 ], [ true, %37 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_misc.c_misc_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_misc.c_misc_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miscdevice = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@misc_mtx = common dso_local global i32 0, align 4
@misc_class = common dso_local global i32 0, align 4
@MISC_MAJOR = common dso_local global i32 0, align 4
@DYNAMIC_MINORS = common dso_local global i32 0, align 4
@misc_minors = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @misc_deregister(%struct.miscdevice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miscdevice*, align 8
  %4 = alloca i32, align 4
  store %struct.miscdevice* %0, %struct.miscdevice** %3, align 8
  %5 = load %struct.miscdevice*, %struct.miscdevice** %3, align 8
  %6 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.miscdevice*, %struct.miscdevice** %3, align 8
  %9 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %8, i32 0, i32 1
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = call i32 @mutex_lock(i32* @misc_mtx)
  %17 = load %struct.miscdevice*, %struct.miscdevice** %3, align 8
  %18 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load i32, i32* @misc_class, align 4
  %21 = load i32, i32* @MISC_MAJOR, align 4
  %22 = load %struct.miscdevice*, %struct.miscdevice** %3, align 8
  %23 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MKDEV(i32 %21, i32 %24)
  %26 = call i32 @device_destroy(i32 %20, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DYNAMIC_MINORS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.miscdevice*, %struct.miscdevice** %3, align 8
  %35 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 7
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32*, i32** @misc_minors, align 8
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %39
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %33, %30, %15
  %48 = call i32 @mutex_unlock(i32* @misc_mtx)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

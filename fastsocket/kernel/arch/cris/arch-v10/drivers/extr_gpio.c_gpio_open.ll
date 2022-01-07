; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32, %struct.gpio_private*, i32, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32* }
%struct.inode = type { i32 }
%struct.file = type { %struct.gpio_private* }

@GPIO_MINOR_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ports = common dso_local global i32** null, align 8
@shads = common dso_local global i32** null, align 8
@dir = common dso_local global i32** null, align 8
@dir_shadow = common dso_local global i32** null, align 8
@changeable_dir = common dso_local global i64* null, align 8
@changeable_bits = common dso_local global i64* null, align 8
@gpio_lock = common dso_local global i32 0, align 4
@alarmlist = common dso_local global %struct.gpio_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gpio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.gpio_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GPIO_MINOR_LAST, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %113

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.gpio_private* @kzalloc(i32 104, i32 %18)
  store %struct.gpio_private* %19, %struct.gpio_private** %6, align 8
  %20 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %21 = icmp ne %struct.gpio_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %113

25:                                               ; preds = %17
  %26 = call i32 (...) @lock_kernel()
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %31 = call i64 @USE_PORTS(%struct.gpio_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %25
  %34 = load i32**, i32*** @ports, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %40 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %39, i32 0, i32 12
  store i32* %38, i32** %40, align 8
  %41 = load i32**, i32*** @shads, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %47 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %46, i32 0, i32 11
  store i32* %45, i32** %47, align 8
  %48 = load i32**, i32*** @dir, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %54 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %53, i32 0, i32 10
  store i32* %52, i32** %54, align 8
  %55 = load i32**, i32*** @dir_shadow, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %61 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %60, i32 0, i32 9
  store i32* %59, i32** %61, align 8
  %62 = load i64*, i64** @changeable_dir, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %68 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %67, i32 0, i32 8
  store i64 %66, i64* %68, align 8
  %69 = load i64*, i64** @changeable_bits, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %75 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  br label %89

76:                                               ; preds = %25
  %77 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %78 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %77, i32 0, i32 12
  store i32* null, i32** %78, align 8
  %79 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %80 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %79, i32 0, i32 11
  store i32* null, i32** %80, align 8
  %81 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %82 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %81, i32 0, i32 10
  store i32* null, i32** %82, align 8
  %83 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %84 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %83, i32 0, i32 9
  store i32* null, i32** %84, align 8
  %85 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %86 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %85, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %88 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %76, %33
  %90 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %91 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %93 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %95 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %97 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %99 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %98, i32 0, i32 2
  %100 = call i32 @init_waitqueue_head(i32* %99)
  %101 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %102 = load %struct.file*, %struct.file** %5, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  store %struct.gpio_private* %101, %struct.gpio_private** %103, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %104)
  %106 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  %107 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %108 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %107, i32 0, i32 1
  store %struct.gpio_private* %106, %struct.gpio_private** %108, align 8
  %109 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  store %struct.gpio_private* %109, %struct.gpio_private** @alarmlist, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %110)
  %112 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %89, %22, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.gpio_private* @kzalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @USE_PORTS(%struct.gpio_private*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

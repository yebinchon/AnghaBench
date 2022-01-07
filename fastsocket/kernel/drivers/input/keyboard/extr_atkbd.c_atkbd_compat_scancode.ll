; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_compat_scancode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_compat_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i32)* @atkbd_compat_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_compat_scancode(%struct.atkbd* %0, i32 %1) #0 {
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca i32, align 4
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %6 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %11 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, 256
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %9
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 127
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 128
  %23 = shl i32 %22, 1
  %24 = or i32 %20, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %26 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, 128
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/eisa/extr_eisa-bus.c_is_forced_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/eisa/extr_eisa-bus.c_is_forced_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eisa_root_device = type { i32 }
%struct.eisa_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.eisa_root_device*, %struct.eisa_device*)* @is_forced_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_forced_dev(i32* %0, i32 %1, %struct.eisa_root_device* %2, %struct.eisa_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eisa_root_device*, align 8
  %9 = alloca %struct.eisa_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.eisa_root_device* %2, %struct.eisa_root_device** %8, align 8
  store %struct.eisa_device* %3, %struct.eisa_device** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.eisa_root_device*, %struct.eisa_root_device** %8, align 8
  %18 = getelementptr inbounds %struct.eisa_root_device, %struct.eisa_root_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = load %struct.eisa_device*, %struct.eisa_device** %9, align 8
  %22 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %38

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %12

37:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

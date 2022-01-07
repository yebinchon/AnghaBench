; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_port = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_port*)* @sci_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_free_irq(%struct.sci_port* %0) #0 {
  %2 = alloca %struct.sci_port*, align 8
  %3 = alloca i32, align 4
  store %struct.sci_port* %0, %struct.sci_port** %2, align 8
  %4 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %5 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %10 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %8, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %17 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %22 = call i32 @free_irq(i64 %20, %struct.sci_port* %21)
  br label %55

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %27 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i64* %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %33 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %51

41:                                               ; preds = %31
  %42 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %43 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sci_port*, %struct.sci_port** %2, align 8
  %50 = call i32 @free_irq(i64 %48, %struct.sci_port* %49)
  br label %51

51:                                               ; preds = %41, %40
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %24

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %54, %15
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.sci_port*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

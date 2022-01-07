; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pciserial_resume_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pciserial_resume_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciserial_resume_ports(%struct.serial_private* %0) #0 {
  %2 = alloca %struct.serial_private*, align 8
  %3 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %2, align 8
  %4 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %5 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %12 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %17 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %24 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %29 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %38 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @serial8250_resume_port(i64 %43)
  br label %45

45:                                               ; preds = %36, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %21

49:                                               ; preds = %21
  ret void
}

declare dso_local i32 @serial8250_resume_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

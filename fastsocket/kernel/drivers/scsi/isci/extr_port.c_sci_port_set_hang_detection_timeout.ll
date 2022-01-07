; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_set_hang_detection_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_set_hang_detection_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SCI_MAX_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_port_set_hang_detection_timeout(%struct.isci_port* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %14 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %19 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %24 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %29 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %36 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34, %31
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %64, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SCI_MAX_PHYS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %45, %46
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %53 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @writel(i32 %51, i32* %61)
  br label %63

63:                                               ; preds = %50, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %40

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %34
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

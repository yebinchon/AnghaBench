; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_is_wide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_is_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32** }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*)* @sci_port_is_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_port_is_wide(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.isci_port* %0, %struct.isci_port** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SCI_MAX_PHYS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %11 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %9
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %5

24:                                               ; preds = %5
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 1
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_create_qib_param_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_create_qib_param_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@_ascebc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i8*)* @qeth_create_qib_param_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_create_qib_param_field(%struct.qeth_card* %0, i8* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** @_ascebc, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 80
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %9, align 1
  %10 = load i8*, i8** @_ascebc, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 67
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %12, i8* %14, align 1
  %15 = load i8*, i8** @_ascebc, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 73
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %19, align 1
  %20 = load i8*, i8** @_ascebc, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 84
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  store i8 %22, i8* %24, align 1
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = call i32 @QETH_PCI_THRESHOLD_A(%struct.qeth_card* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %31 = call i32 @QETH_PCI_THRESHOLD_B(%struct.qeth_card* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = bitcast i8* %33 to i32*
  store i32 %31, i32* %34, align 4
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = call i32 @QETH_PCI_TIMER_VALUE(%struct.qeth_card* %35)
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %36, i32* %39, align 4
  ret void
}

declare dso_local i32 @QETH_PCI_THRESHOLD_A(%struct.qeth_card*) #1

declare dso_local i32 @QETH_PCI_THRESHOLD_B(%struct.qeth_card*) #1

declare dso_local i32 @QETH_PCI_TIMER_VALUE(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

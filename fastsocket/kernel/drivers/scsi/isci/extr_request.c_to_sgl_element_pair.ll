; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_to_sgl_element_pair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_to_sgl_element_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scu_sgl_element_pair = type { i32 }
%struct.isci_request = type { %struct.scu_sgl_element_pair*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scu_sgl_element_pair* (%struct.isci_request*, i32)* @to_sgl_element_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request* %0, i32 %1) #0 {
  %3 = alloca %struct.scu_sgl_element_pair*, align 8
  %4 = alloca %struct.isci_request*, align 8
  %5 = alloca i32, align 4
  store %struct.isci_request* %0, %struct.isci_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %10 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.scu_sgl_element_pair* %12, %struct.scu_sgl_element_pair** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %18 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.scu_sgl_element_pair* %20, %struct.scu_sgl_element_pair** %3, align 8
  br label %33

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store %struct.scu_sgl_element_pair* null, %struct.scu_sgl_element_pair** %3, align 8
  br label %33

25:                                               ; preds = %21
  %26 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %27 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %26, i32 0, i32 0
  %28 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %28, i64 %31
  store %struct.scu_sgl_element_pair* %32, %struct.scu_sgl_element_pair** %3, align 8
  br label %33

33:                                               ; preds = %25, %24, %16, %8
  %34 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %3, align 8
  ret %struct.scu_sgl_element_pair* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

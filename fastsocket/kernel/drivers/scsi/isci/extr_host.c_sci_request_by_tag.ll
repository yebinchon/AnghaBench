; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_request_by_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_request_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32 }
%struct.isci_host = type { i64, i64*, %struct.isci_request** }

@IREQ_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.isci_request* @sci_request_by_tag(%struct.isci_host* %0, i64 %1) #0 {
  %3 = alloca %struct.isci_request*, align 8
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.isci_request*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @ISCI_TAG_TCI(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %18 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %17, i32 0, i32 2
  %19 = load %struct.isci_request**, %struct.isci_request*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.isci_request*, %struct.isci_request** %19, i64 %20
  %22 = load %struct.isci_request*, %struct.isci_request** %21, align 8
  store %struct.isci_request* %22, %struct.isci_request** %8, align 8
  %23 = load i32, i32* @IREQ_ACTIVE, align 4
  %24 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %25 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %16
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ISCI_TAG_SEQ(i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %33 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  store %struct.isci_request* %40, %struct.isci_request** %3, align 8
  br label %44

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42, %2
  store %struct.isci_request* null, %struct.isci_request** %3, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  ret %struct.isci_request* %45
}

declare dso_local i64 @ISCI_TAG_TCI(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ISCI_TAG_SEQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

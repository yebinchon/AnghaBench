; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_reset_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_reset_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osst_tape = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32* }
%struct.osst_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osst_tape*, %struct.osst_request**)* @osst_reset_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osst_reset_header(%struct.osst_tape* %0, %struct.osst_request** %1) #0 {
  %3 = alloca %struct.osst_tape*, align 8
  %4 = alloca %struct.osst_request**, align 8
  store %struct.osst_tape* %0, %struct.osst_tape** %3, align 8
  store %struct.osst_request** %1, %struct.osst_request*** %4, align 8
  %5 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %6 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %11 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %16 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %18 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %20 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %22 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %21, i32 0, i32 1
  store i32 10, i32* %22, align 4
  %23 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %24 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %23, i32 0, i32 0
  store i32 10, i32* %24, align 8
  %25 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %26 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %28 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %27, i32 0, i32 4
  store i32 -1, i32* %28, align 8
  %29 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %30 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %29, i32 0, i32 3
  store i32 -1, i32* %30, align 4
  %31 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %32 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %31, i32 0, i32 2
  store i32 -1, i32* %32, align 8
  %33 = load %struct.osst_tape*, %struct.osst_tape** %3, align 8
  %34 = load %struct.osst_request**, %struct.osst_request*** %4, align 8
  %35 = call i32 @osst_write_header(%struct.osst_tape* %33, %struct.osst_request** %34, i32 1)
  ret i32 %35
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @osst_write_header(%struct.osst_tape*, %struct.osst_request**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

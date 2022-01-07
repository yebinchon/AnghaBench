; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_advance_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_advance_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_srb = type { i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dc390_srb*, i8*)* @dc390_advance_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dc390_advance_segment(%struct.dc390_srb* %0, i8* %1) #0 {
  %3 = alloca %struct.dc390_srb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.dc390_srb* %0, %struct.dc390_srb** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dc390_srb*, %struct.dc390_srb** %3, align 8
  %7 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.dc390_srb*, %struct.dc390_srb** %3, align 8
  %15 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.dc390_srb*, %struct.dc390_srb** %3, align 8
  %20 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.dc390_srb*, %struct.dc390_srb** %3, align 8
  %25 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

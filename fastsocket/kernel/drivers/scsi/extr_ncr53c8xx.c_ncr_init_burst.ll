; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ncr53c8xx.c_ncr_init_burst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ncr53c8xx.c_ncr_init_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncb*, i32)* @ncr_init_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr_init_burst(%struct.ncb* %0, i32 %1) #0 {
  %3 = alloca %struct.ncb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ncb* %0, %struct.ncb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ncb*, %struct.ncb** %3, align 8
  %7 = getelementptr inbounds %struct.ncb, %struct.ncb* %6, i32 0, i32 0
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, -129
  store i32 %10, i32* %8, align 4
  %11 = load %struct.ncb*, %struct.ncb** %3, align 8
  %12 = getelementptr inbounds %struct.ncb, %struct.ncb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -193
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ncb*, %struct.ncb** %3, align 8
  %16 = getelementptr inbounds %struct.ncb, %struct.ncb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -5
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 128
  store i32 %24, i32* %22, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 6
  %31 = load %struct.ncb*, %struct.ncb** %3, align 8
  %32 = getelementptr inbounds %struct.ncb, %struct.ncb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 4
  %37 = load %struct.ncb*, %struct.ncb** %3, align 8
  %38 = getelementptr inbounds %struct.ncb, %struct.ncb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %25, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

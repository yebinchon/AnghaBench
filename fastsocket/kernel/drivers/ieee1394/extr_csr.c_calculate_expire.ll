; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_calculate_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_calculate_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr_control = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"CSR: setting expire to %lu, HZ=%u\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csr_control*)* @calculate_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_expire(%struct.csr_control* %0) #0 {
  %2 = alloca %struct.csr_control*, align 8
  %3 = alloca i32, align 4
  store %struct.csr_control* %0, %struct.csr_control** %2, align 8
  %4 = load %struct.csr_control*, %struct.csr_control** %2, align 8
  %5 = getelementptr inbounds %struct.csr_control, %struct.csr_control* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 7
  %8 = mul nsw i32 %7, 1000000
  %9 = load %struct.csr_control*, %struct.csr_control** %2, align 8
  %10 = getelementptr inbounds %struct.csr_control, %struct.csr_control* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 19
  %13 = mul nsw i32 %12, 125
  %14 = add nsw i32 %8, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ugt i32 %15, 100000
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 100000, %19 ]
  %22 = call i32 @usecs_to_jiffies(i32 %21)
  %23 = load %struct.csr_control*, %struct.csr_control** %2, align 8
  %24 = getelementptr inbounds %struct.csr_control, %struct.csr_control* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.csr_control*, %struct.csr_control** %2, align 8
  %26 = getelementptr inbounds %struct.csr_control, %struct.csr_control* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = call i32 @HPSB_VERBOSE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @HPSB_VERBOSE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

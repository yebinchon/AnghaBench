; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_RTCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_RTCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, i64, i64 }

@CCAR = common dso_local global i64 0, align 8
@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*, i64)* @usc_RTCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_RTCmd(%struct.mgsl_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mgsl_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %7 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %11 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CCAR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outw(i64 %9, i64 %14)
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %23 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CCAR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inw(i64 %26)
  br label %28

28:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_ResetDevParam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_ResetDevParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { i32, i32, %struct.dc390_dcb* }
%struct.dc390_dcb = type { i32, %struct.dc390_dcb*, i32, i64, i64, i64, i32 }

@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@FAST_CLK = common dso_local global i32 0, align 4
@NEGATE_REQACKDATA = common dso_local global i32 0, align 4
@CTRL4_RESERVED = common dso_local global i32 0, align 4
@NEGATE_REQACK = common dso_local global i32 0, align 4
@RESET_DEV = common dso_local global i32 0, align 4
@RESET_DONE = common dso_local global i32 0, align 4
@RESET_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*)* @dc390_ResetDevParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_ResetDevParam(%struct.dc390_acb* %0) #0 {
  %2 = alloca %struct.dc390_acb*, align 8
  %3 = alloca %struct.dc390_dcb*, align 8
  %4 = alloca %struct.dc390_dcb*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %2, align 8
  %5 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %6 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %5, i32 0, i32 2
  %7 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  store %struct.dc390_dcb* %7, %struct.dc390_dcb** %3, align 8
  %8 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %9 = icmp ne %struct.dc390_dcb* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  store %struct.dc390_dcb* %12, %struct.dc390_dcb** %4, align 8
  br label %13

13:                                               ; preds = %48, %11
  %14 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %17 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %21 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %23 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %25 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @FAST_CLK, align 4
  %27 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %28 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @NEGATE_REQACKDATA, align 4
  %30 = load i32, i32* @CTRL4_RESERVED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NEGATE_REQACK, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %35 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %39 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %42 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %46 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %45, i32 0, i32 1
  %47 = load %struct.dc390_dcb*, %struct.dc390_dcb** %46, align 8
  store %struct.dc390_dcb* %47, %struct.dc390_dcb** %3, align 8
  br label %48

48:                                               ; preds = %13
  %49 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %50 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %51 = icmp ne %struct.dc390_dcb* %49, %50
  br i1 %51, label %13, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @RESET_DEV, align 4
  %54 = load i32, i32* @RESET_DONE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RESET_DETECT, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %60 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

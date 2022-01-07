; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_SetXferRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_SetXferRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { i64, %struct.dc390_dcb*, i32 }
%struct.dc390_dcb = type { i64, %struct.dc390_dcb*, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*, %struct.dc390_dcb*)* @dc390_SetXferRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_SetXferRate(%struct.dc390_acb* %0, %struct.dc390_dcb* %1) #0 {
  %3 = alloca %struct.dc390_acb*, align 8
  %4 = alloca %struct.dc390_dcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dc390_dcb*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %3, align 8
  store %struct.dc390_dcb* %1, %struct.dc390_dcb** %4, align 8
  %9 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %10 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %2
  %14 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %15 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %13
  %19 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %20 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %19, i32 0, i32 1
  %21 = load %struct.dc390_dcb*, %struct.dc390_dcb** %20, align 8
  store %struct.dc390_dcb* %21, %struct.dc390_dcb** %8, align 8
  %22 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %23 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %26 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %68, %18
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %34 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %40 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %43 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %45 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %48 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %50 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %53 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %55 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %58 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %60 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %63 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %38, %32
  %65 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %66 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %65, i32 0, i32 1
  %67 = load %struct.dc390_dcb*, %struct.dc390_dcb** %66, align 8
  store %struct.dc390_dcb* %67, %struct.dc390_dcb** %8, align 8
  br label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %28

71:                                               ; preds = %28
  br label %72

72:                                               ; preds = %71, %13
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_ctl_bit_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_ctl_bit_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_creg_mask_parms = type { i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @smp_ctl_bit_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_ctl_bit_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ec_creg_mask_parms*, align 8
  %4 = alloca [16 x i64], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ec_creg_mask_parms*
  store %struct.ec_creg_mask_parms* %7, %struct.ec_creg_mask_parms** %3, align 8
  %8 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %9 = call i32 @__ctl_store(i64* %8, i32 0, i32 15)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 15
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ec_creg_mask_parms*, %struct.ec_creg_mask_parms** %3, align 8
  %19 = getelementptr inbounds %struct.ec_creg_mask_parms, %struct.ec_creg_mask_parms* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %17, %24
  %26 = load %struct.ec_creg_mask_parms*, %struct.ec_creg_mask_parms** %3, align 8
  %27 = getelementptr inbounds %struct.ec_creg_mask_parms, %struct.ec_creg_mask_parms* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %25, %32
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 %35
  store i64 %33, i64* %36, align 8
  br label %37

37:                                               ; preds = %13
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10

40:                                               ; preds = %10
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %42 = call i32 @__ctl_load(i64* %41, i32 0, i32 15)
  ret void
}

declare dso_local i32 @__ctl_store(i64*, i32, i32) #1

declare dso_local i32 @__ctl_load(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

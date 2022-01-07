; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_read_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_read_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32, i8* }

@MCI_STATUS_MISCV = common dso_local global i32 0, align 4
@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@mce_ser = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mce*, i32)* @mce_read_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_read_aux(%struct.mce* %0, i32 %1) #0 {
  %3 = alloca %struct.mce*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mce*, %struct.mce** %3, align 8
  %7 = getelementptr inbounds %struct.mce, %struct.mce* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MSR_IA32_MCx_MISC(i32 %13)
  %15 = call i8* @mce_rdmsrl(i32 %14)
  %16 = load %struct.mce*, %struct.mce** %3, align 8
  %17 = getelementptr inbounds %struct.mce, %struct.mce* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.mce*, %struct.mce** %3, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MSR_IA32_MCx_ADDR(i32 %26)
  %28 = call i8* @mce_rdmsrl(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.mce*, %struct.mce** %3, align 8
  %31 = getelementptr inbounds %struct.mce, %struct.mce* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @mce_ser, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load %struct.mce*, %struct.mce** %3, align 8
  %36 = getelementptr inbounds %struct.mce, %struct.mce* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.mce*, %struct.mce** %3, align 8
  %43 = getelementptr inbounds %struct.mce, %struct.mce* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @MCI_MISC_ADDR_LSB(i8* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mce*, %struct.mce** %3, align 8
  %48 = getelementptr inbounds %struct.mce, %struct.mce* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.mce*, %struct.mce** %3, align 8
  %53 = getelementptr inbounds %struct.mce, %struct.mce* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %41, %34, %25
  br label %57

57:                                               ; preds = %56, %18
  ret void
}

declare dso_local i8* @mce_rdmsrl(i32) #1

declare dso_local i32 @MSR_IA32_MCx_MISC(i32) #1

declare dso_local i32 @MSR_IA32_MCx_ADDR(i32) #1

declare dso_local i32 @MCI_MISC_ADDR_LSB(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

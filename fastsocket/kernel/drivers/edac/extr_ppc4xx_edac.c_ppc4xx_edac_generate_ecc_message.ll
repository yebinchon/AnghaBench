; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_ecc_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_ecc_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.ppc4xx_ecc_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64)* @ppc4xx_edac_generate_ecc_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_generate_ecc_message(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.ppc4xx_ecc_status*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %12 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @ppc4xx_edac_generate_bank_message(%struct.mem_ctl_info* %11, %struct.ppc4xx_ecc_status* %12, i8* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %8, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %4
  br label %86

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %37 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @ppc4xx_edac_generate_checkbit_message(%struct.mem_ctl_info* %36, %struct.ppc4xx_ecc_status* %37, i8* %38, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %24
  br label %86

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %62 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ppc4xx_edac_generate_lane_message(%struct.mem_ctl_info* %61, %struct.ppc4xx_ecc_status* %62, i8* %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %49
  br label %86

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %8, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %74, %73, %48, %23
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local i32 @ppc4xx_edac_generate_bank_message(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64) #1

declare dso_local i32 @ppc4xx_edac_generate_checkbit_message(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64) #1

declare dso_local i32 @ppc4xx_edac_generate_lane_message(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

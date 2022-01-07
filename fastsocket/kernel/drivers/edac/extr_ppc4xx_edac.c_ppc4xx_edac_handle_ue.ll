; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_handle_ue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_handle_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.ppc4xx_ecc_status = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PPC4XX_EDAC_MESSAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*)* @ppc4xx_edac_handle_ue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc4xx_edac_handle_ue(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.ppc4xx_ecc_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %4, align 8
  %11 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %12 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 32
  %16 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %17 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PAGE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* @PPC4XX_EDAC_MESSAGE_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %9, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %34 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %35 = trunc i64 %30 to i32
  %36 = call i32 @ppc4xx_edac_generate_message(%struct.mem_ctl_info* %33, %struct.ppc4xx_ecc_status* %34, i8* %32, i32 %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %55, %2
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %40 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ppc4xx_edac_check_bank_error(%struct.ppc4xx_ecc_status* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %49, i64 %50, i64 %51, i32 %52, i8* %32)
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ppc4xx_edac_generate_message(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i32) #2

declare dso_local i64 @ppc4xx_edac_check_bank_error(%struct.ppc4xx_ecc_status*, i32) #2

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i64, i64, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

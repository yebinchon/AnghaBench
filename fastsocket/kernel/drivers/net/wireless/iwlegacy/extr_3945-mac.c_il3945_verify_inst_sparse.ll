; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_verify_inst_sparse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_verify_inst_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ucode inst image size is %u\0A\00", align 1
@HBUS_TARG_MEM_RADDR = common dso_local global i32 0, align 4
@IL39_RTC_INST_LOWER_BOUND = common dso_local global i64 0, align 8
@HBUS_TARG_MEM_RDAT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32*, i64)* @il3945_verify_inst_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_verify_inst_sparse(%struct.il_priv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @D_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %11)
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %19 = load i32, i32* @HBUS_TARG_MEM_RADDR, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @IL39_RTC_INST_LOWER_BOUND, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @il_wr(%struct.il_priv* %18, i32 %19, i64 %22)
  %24 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %25 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %26 = call i64 @_il_rd(%struct.il_priv* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %17
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp sge i64 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %47

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, 100
  store i64 %44, i64* %10, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 12
  store i32* %46, i32** %5, align 8
  br label %13

47:                                               ; preds = %39, %13
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @D_INFO(i8*, i64) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i64) #1

declare dso_local i64 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

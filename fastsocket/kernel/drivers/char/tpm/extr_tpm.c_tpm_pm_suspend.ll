; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_chip = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_pm_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca [10 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.tpm_chip* @dev_get_drvdata(%struct.device* %8)
  store %struct.tpm_chip* %9, %struct.tpm_chip** %6, align 8
  %10 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false)
  %11 = bitcast i8* %10 to [10 x i32]*
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i32 0, i32 1
  store i32 193, i32* %12, align 4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i32 0, i32 5
  store i32 10, i32* %13, align 4
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i32 0, i32 9
  store i32 152, i32* %14, align 4
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %16 = icmp eq %struct.tpm_chip* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %23 = call i32 @tpm_transmit(%struct.tpm_chip* %21, i32* %22, i32 40)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.tpm_chip* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tpm_transmit(%struct.tpm_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

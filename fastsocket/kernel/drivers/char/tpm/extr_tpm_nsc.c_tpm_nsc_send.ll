; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_nsc.c_tpm_nsc_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_nsc.c_tpm_nsc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@NSC_COMMAND_CANCEL = common dso_local global i32 0, align 4
@NSC_COMMAND = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@NSC_STATUS_IBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IBF timeout\0A\00", align 1
@NSC_COMMAND_NORMAL = common dso_local global i32 0, align 4
@NSC_STATUS_IBR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IBR timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"IBF timeout (while writing data)\0A\00", align 1
@NSC_DATA = common dso_local global i64 0, align 8
@NSC_COMMAND_EOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_nsc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_nsc_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @NSC_COMMAND_CANCEL, align 4
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NSC_COMMAND, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 %10, i64 %16)
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %19 = call i64 @nsc_wait_for_ready(%struct.tpm_chip* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %114

24:                                               ; preds = %3
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %26 = load i32, i32* @NSC_STATUS_IBF, align 4
  %27 = call i64 @wait_for_stat(%struct.tpm_chip* %25, i32 %26, i32 0, i32* %8)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %114

36:                                               ; preds = %24
  %37 = load i32, i32* @NSC_COMMAND_NORMAL, align 4
  %38 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %39 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NSC_COMMAND, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %37, i64 %43)
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %46 = load i32, i32* @NSC_STATUS_IBR, align 4
  %47 = load i32, i32* @NSC_STATUS_IBR, align 4
  %48 = call i64 @wait_for_stat(%struct.tpm_chip* %45, i32 %46, i32 %47, i32* %8)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %52 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %114

57:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %65 = load i32, i32* @NSC_STATUS_IBF, align 4
  %66 = call i64 @wait_for_stat(%struct.tpm_chip* %64, i32 %65, i32 0, i32* %8)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %70 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %114

75:                                               ; preds = %63
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %82 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NSC_DATA, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 %80, i64 %86)
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %93 = load i32, i32* @NSC_STATUS_IBF, align 4
  %94 = call i64 @wait_for_stat(%struct.tpm_chip* %92, i32 %93, i32 0, i32* %8)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %98 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %114

103:                                              ; preds = %91
  %104 = load i32, i32* @NSC_COMMAND_EOC, align 4
  %105 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %106 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NSC_COMMAND, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb(i32 %104, i64 %110)
  %112 = load i64, i64* %7, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %103, %96, %68, %50, %29, %21
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @nsc_wait_for_ready(%struct.tpm_chip*) #1

declare dso_local i64 @wait_for_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

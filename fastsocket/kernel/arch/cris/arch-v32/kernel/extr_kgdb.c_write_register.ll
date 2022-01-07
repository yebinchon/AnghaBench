; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_write_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@ACR = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BZ = common dso_local global i32 0, align 4
@VR = common dso_local global i32 0, align 4
@WZ = common dso_local global i32 0, align 4
@DZ = common dso_local global i32 0, align 4
@E02 = common dso_local global i32 0, align 4
@PID = common dso_local global i32 0, align 4
@SRS = common dso_local global i32 0, align 4
@EXS = common dso_local global i32 0, align 4
@SPC = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@S0 = common dso_local global i32 0, align 4
@S15 = common dso_local global i32 0, align 4
@sreg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@E05 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_register(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @R0, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ACR, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @R0, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = getelementptr inbounds i8, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 3) to i8*), i64 %19
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @hex2mem(i8* %20, i8* %21, i32 4)
  br label %108

23:                                               ; preds = %10, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @BZ, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @VR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @WZ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DZ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i32, i32* @E02, align 4
  store i32 %40, i32* %5, align 4
  br label %107

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PID, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @hex2mem(i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 2) to i8*), i8* %46, i32 4)
  br label %106

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SRS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @hex2mem(i8* bitcast (%struct.TYPE_4__* @reg to i8*), i8* %53, i32 1)
  br label %105

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @EXS, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SPC, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @EXS, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = getelementptr inbounds i8, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 1) to i8*), i64 %68
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @hex2mem(i8* %69, i8* %70, i32 4)
  br label %104

72:                                               ; preds = %59, %55
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PC, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @E02, align 4
  store i32 %77, i32* %5, align 4
  br label %103

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @S0, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @S15, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 0), align 4
  %88 = mul nsw i32 %87, 16
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = getelementptr inbounds i8, i8* bitcast (%struct.TYPE_3__* @sreg to i8*), i64 %90
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @S0, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @hex2mem(i8* %97, i8* %98, i32 4)
  br label %102

100:                                              ; preds = %82, %78
  %101 = load i32, i32* @E05, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %86
  br label %103

103:                                              ; preds = %102, %76
  br label %104

104:                                              ; preds = %103, %63
  br label %105

105:                                              ; preds = %104, %52
  br label %106

106:                                              ; preds = %105, %45
  br label %107

107:                                              ; preds = %106, %39
  br label %108

108:                                              ; preds = %107, %14
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @hex2mem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

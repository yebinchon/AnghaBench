; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.tpm_chip.0*)*, i32, i32, i32, i32 (%struct.tpm_chip.1*, i32*, i64)*, i32 (%struct.tpm_chip.2*)*, i64, i32 (%struct.tpm_chip.3*, i32*, i64)* }
%struct.tpm_chip.0 = type opaque
%struct.tpm_chip.1 = type opaque
%struct.tpm_chip.2 = type opaque
%struct.tpm_chip.3 = type opaque

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid count value %x %zx \0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"tpm_transmit: tpm_send: error %zd\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Operation Canceled\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Operation Timed out\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"tpm_transmit: tpm_recv: error %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i8*, i64)* @tpm_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_transmit(%struct.tpm_chip* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be32_to_cpu(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be32_to_cpu(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %157

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %34 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i32, i32* @E2BIG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %157

41:                                               ; preds = %28
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %43 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %46 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  %48 = load i32 (%struct.tpm_chip.3*, i32*, i64)*, i32 (%struct.tpm_chip.3*, i32*, i64)** %47, align 8
  %49 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %50 = bitcast %struct.tpm_chip* %49 to %struct.tpm_chip.3*
  %51 = load i8*, i8** %6, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i64, i64* %9, align 8
  %54 = call i32 %48(%struct.tpm_chip.3* %50, i32* %52, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %58 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %152

62:                                               ; preds = %41
  %63 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %64 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %132

69:                                               ; preds = %62
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @tpm_calc_ordinal_duration(%struct.tpm_chip* %71, i64 %72)
  %74 = add i64 %70, %73
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %113, %69
  %76 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %77 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.tpm_chip.0*)*, i32 (%struct.tpm_chip.0*)** %78, align 8
  %80 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %81 = bitcast %struct.tpm_chip* %80 to %struct.tpm_chip.0*
  %82 = call i32 %79(%struct.tpm_chip.0* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %85 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %83, %87
  %89 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %90 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  br label %132

95:                                               ; preds = %75
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %98 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %96, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %104 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ECANCELED, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %152

109:                                              ; preds = %95
  %110 = load i32, i32* @TPM_TIMEOUT, align 4
  %111 = call i32 @msleep(i32 %110)
  %112 = call i32 (...) @rmb()
  br label %113

113:                                              ; preds = %109
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @time_before(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %75, label %118

118:                                              ; preds = %113
  %119 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %120 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  %122 = load i32 (%struct.tpm_chip.2*)*, i32 (%struct.tpm_chip.2*)** %121, align 8
  %123 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %124 = bitcast %struct.tpm_chip* %123 to %struct.tpm_chip.2*
  %125 = call i32 %122(%struct.tpm_chip.2* %124)
  %126 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %127 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* @ETIME, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %152

132:                                              ; preds = %94, %68
  %133 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %134 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i32 (%struct.tpm_chip.1*, i32*, i64)*, i32 (%struct.tpm_chip.1*, i32*, i64)** %135, align 8
  %137 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %138 = bitcast %struct.tpm_chip* %137 to %struct.tpm_chip.1*
  %139 = load i8*, i8** %6, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = load i64, i64* %7, align 8
  %142 = call i32 %136(%struct.tpm_chip.1* %138, i32* %140, i64 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %132
  %146 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %147 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i32, i8*, ...) @dev_err(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %145, %132
  br label %152

152:                                              ; preds = %151, %118, %102, %56
  %153 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %154 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %152, %32, %25
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tpm_calc_ordinal_duration(%struct.tpm_chip*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

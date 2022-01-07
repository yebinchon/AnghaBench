; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_process_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_process_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_chip = type { i32, i16*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LM8323_FIFO_LEN = common dso_local global i32 0, align 4
@LM8323_CMD_READ_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed reading fifo \0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"key 0x%02x %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm8323_chip*)* @process_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_keys(%struct.lm8323_chip* %0) #0 {
  %2 = alloca %struct.lm8323_chip*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.lm8323_chip* %0, %struct.lm8323_chip** %2, align 8
  %13 = load i32, i32* @LM8323_FIFO_LEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %19 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %22 = load i32, i32* @LM8323_CMD_READ_FIFO, align 4
  %23 = load i32, i32* @LM8323_FIFO_LEN, align 4
  %24 = call i32 @lm8323_read(%struct.lm8323_chip* %21, i32 %22, i64* %17, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %29 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %127

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %17, i64 %35
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %100, %33
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i64, i64* %17, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %101

44:                                               ; preds = %37
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @lm8323_whichkey(i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @lm8323_ispress(i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %50 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %49, i32 0, i32 1
  %51 = load i16*, i16** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i16, i16* %51, i64 %52
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %12, align 2
  %55 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %56 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 @dev_vdbg(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %59, i8* %63)
  %65 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %66 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %44
  %70 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %71 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EV_MSC, align 4
  %74 = load i32, i32* @MSC_SCAN, align 4
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @input_event(i32 %72, i32 %73, i32 %74, i64 %75)
  %77 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %78 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i16, i16* %12, align 2
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @input_report_key(i32 %79, i16 zeroext %80, i32 %81)
  %83 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %84 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @input_sync(i32 %85)
  br label %87

87:                                               ; preds = %69, %44
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %92 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %100

95:                                               ; preds = %87
  %96 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %97 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %90
  br label %37

101:                                              ; preds = %37
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %106 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %111 = call i32 @lm8323_set_active_time(%struct.lm8323_chip* %110, i32 0)
  br label %112

112:                                              ; preds = %109, %104, %101
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %117 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %122 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %123 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @lm8323_set_active_time(%struct.lm8323_chip* %121, i32 %124)
  br label %126

126:                                              ; preds = %120, %115, %112
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %126, %27
  %128 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %9, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %127, %127
  ret void

131:                                              ; preds = %127
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lm8323_read(%struct.lm8323_chip*, i32, i64*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i64 @lm8323_whichkey(i64) #2

declare dso_local i32 @lm8323_ispress(i64) #2

declare dso_local i32 @dev_vdbg(i32*, i8*, i64, i8*) #2

declare dso_local i32 @input_event(i32, i32, i32, i64) #2

declare dso_local i32 @input_report_key(i32, i16 zeroext, i32) #2

declare dso_local i32 @input_sync(i32) #2

declare dso_local i32 @lm8323_set_active_time(%struct.lm8323_chip*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

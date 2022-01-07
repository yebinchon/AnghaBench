; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_cpuidle.c_sh_mobile_setup_cpuidle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/shmobile/extr_cpuidle.c_sh_mobile_setup_cpuidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32, %struct.cpuidle_state*, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i8*, i8*, i32, i32, i32, i8*, i32 }

@cpuidle_dev = common dso_local global %struct.cpuidle_device zeroinitializer, align 8
@cpuidle_driver = common dso_local global i32 0, align 4
@CPUIDLE_STATE_MAX = common dso_local global i32 0, align 4
@CPUIDLE_DRIVER_STATE_START = common dso_local global i32 0, align 4
@CPUIDLE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SuperH Sleep Mode\00", align 1
@CPUIDLE_DESC_LEN = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_SHALLOW = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_TIME_VALID = common dso_local global i32 0, align 4
@cpuidle_sleep_enter = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SuperH Sleep Mode [SF]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"SuperH Mobile Standby Mode [SF]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh_mobile_setup_cpuidle() #0 {
  %1 = alloca %struct.cpuidle_device*, align 8
  %2 = alloca %struct.cpuidle_state*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuidle_device* @cpuidle_dev, %struct.cpuidle_device** %1, align 8
  %4 = call i32 @cpuidle_register_driver(i32* @cpuidle_driver)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %11 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %10, i32 0, i32 1
  %12 = load %struct.cpuidle_state*, %struct.cpuidle_state** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %12, i64 %14
  %16 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  %19 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %20 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %19, i32 0, i32 1
  %21 = load %struct.cpuidle_state*, %struct.cpuidle_state** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %21, i64 %23
  %25 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load i32, i32* @CPUIDLE_DRIVER_STATE_START, align 4
  store i32 %32, i32* %3, align 4
  %33 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %34 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %33, i32 0, i32 1
  %35 = load %struct.cpuidle_state*, %struct.cpuidle_state** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %35, i64 %38
  store %struct.cpuidle_state* %39, %struct.cpuidle_state** %2, align 8
  %40 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %41 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @CPUIDLE_NAME_LEN, align 4
  %44 = call i32 @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %46 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @CPUIDLE_DESC_LEN, align 4
  %49 = call i32 @strncpy(i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %51 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %53 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %52, i32 0, i32 3
  store i32 2, i32* %53, align 4
  %54 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %55 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %54, i32 0, i32 4
  store i32 3, i32* %55, align 8
  %56 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %57 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %56, i32 0, i32 6
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* @CPUIDLE_FLAG_SHALLOW, align 4
  %59 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %60 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @CPUIDLE_FLAG_TIME_VALID, align 4
  %64 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %65 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i8*, i8** @cpuidle_sleep_enter, align 8
  %69 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %70 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %72 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %73 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %72, i32 0, i32 2
  store %struct.cpuidle_state* %71, %struct.cpuidle_state** %73, align 8
  %74 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %75 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %74, i32 0, i32 1
  %76 = load %struct.cpuidle_state*, %struct.cpuidle_state** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %76, i64 %79
  store %struct.cpuidle_state* %80, %struct.cpuidle_state** %2, align 8
  %81 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %82 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @CPUIDLE_NAME_LEN, align 4
  %85 = call i32 @snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %87 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @CPUIDLE_DESC_LEN, align 4
  %90 = call i32 @strncpy(i8* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %92 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %91, i32 0, i32 2
  store i32 100, i32* %92, align 8
  %93 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %94 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %93, i32 0, i32 3
  store i32 2, i32* %94, align 4
  %95 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %96 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %95, i32 0, i32 4
  store i32 1, i32* %96, align 8
  %97 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %98 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %97, i32 0, i32 6
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* @CPUIDLE_FLAG_TIME_VALID, align 4
  %100 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %101 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i8*, i8** @cpuidle_sleep_enter, align 8
  %105 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %106 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %108 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %107, i32 0, i32 1
  %109 = load %struct.cpuidle_state*, %struct.cpuidle_state** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %109, i64 %112
  store %struct.cpuidle_state* %113, %struct.cpuidle_state** %2, align 8
  %114 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %115 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @CPUIDLE_NAME_LEN, align 4
  %118 = call i32 @snprintf(i8* %116, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %120 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @CPUIDLE_DESC_LEN, align 4
  %123 = call i32 @strncpy(i8* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %125 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %124, i32 0, i32 2
  store i32 2300, i32* %125, align 8
  %126 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %127 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %126, i32 0, i32 3
  store i32 2, i32* %127, align 4
  %128 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %129 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %128, i32 0, i32 4
  store i32 1, i32* %129, align 8
  %130 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %131 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %130, i32 0, i32 6
  store i32 0, i32* %131, align 8
  %132 = load i32, i32* @CPUIDLE_FLAG_TIME_VALID, align 4
  %133 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %134 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i8*, i8** @cpuidle_sleep_enter, align 8
  %138 = load %struct.cpuidle_state*, %struct.cpuidle_state** %2, align 8
  %139 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %3, align 4
  %141 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %142 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.cpuidle_device*, %struct.cpuidle_device** %1, align 8
  %144 = call i32 @cpuidle_register_device(%struct.cpuidle_device* %143)
  ret void
}

declare dso_local i32 @cpuidle_register_driver(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @cpuidle_register_device(%struct.cpuidle_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

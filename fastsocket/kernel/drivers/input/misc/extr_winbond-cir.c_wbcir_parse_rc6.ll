; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_parse_rc6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_parse_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wbcir_data = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"RC6 - Invalid leader space\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"RC6 - Invalid start bit\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"RC6 - Invalid mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RC6 - Toggle bit error\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"RC6B - Not Supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"RC6 - Cell error(s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"IR-RC6 ad 0x%02X cm 0x%02X cu 0x%04X toggle %u mode %u scan 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.wbcir_data*)* @wbcir_parse_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_parse_rc6(%struct.device* %0, %struct.wbcir_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wbcir_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.wbcir_data* %1, %struct.wbcir_data** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %13 = call i32 @get_bits(%struct.wbcir_data* %12, i32 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %17 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %11

24:                                               ; preds = %21
  %25 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %26 = call i32 @get_bits(%struct.wbcir_data* %25, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %121

31:                                               ; preds = %24
  %32 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %33 = call i32 @get_bits(%struct.wbcir_data* %32, i32 2)
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %121

38:                                               ; preds = %31
  %39 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %40 = call i32 @get_bits(%struct.wbcir_data* %39, i32 6)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %44 [
    i32 21, label %42
    i32 41, label %43
  ]

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %47

43:                                               ; preds = %38
  store i32 6, i32* %5, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %121

47:                                               ; preds = %43, %42
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %49 = call i32 @get_bits(%struct.wbcir_data* %48, i32 4)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %53 [
    i32 3, label %51
    i32 12, label %52
  ]

51:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %56

52:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %52, %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %121

65:                                               ; preds = %59
  %66 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %67 = call i32 @wbcir_rc6cells_to_byte(%struct.wbcir_data* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 8
  store i32 %73, i32* %7, align 4
  %74 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %75 = call i32 @wbcir_rc6cells_to_byte(%struct.wbcir_data* %74)
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %71, %65
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %81 = call i32 @wbcir_rc6cells_to_byte(%struct.wbcir_data* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %85, 7
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 127
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %91 = call i32 @wbcir_rc6cells_to_byte(%struct.wbcir_data* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 8
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 16
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %102 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %121

108:                                              ; preds = %89
  %109 = load %struct.device*, %struct.device** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @wbcir_keydown(%struct.wbcir_data* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %108, %105, %62, %44, %35, %28
  ret void
}

declare dso_local i32 @get_bits(%struct.wbcir_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @wbcir_rc6cells_to_byte(%struct.wbcir_data*) #1

declare dso_local i32 @wbcir_keydown(%struct.wbcir_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

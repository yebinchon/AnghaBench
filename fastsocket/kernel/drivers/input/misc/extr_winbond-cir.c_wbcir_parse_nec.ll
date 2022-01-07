; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_parse_nec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_parse_nec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wbcir_data = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"NEC - Invalid leader space\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"NEC - Stray repeat message\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"IR-NEC repeat s %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"NEC - Invalid message\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NEC - Command bytes mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"IR-NEC ad %u cm %u s %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.wbcir_data*)* @wbcir_parse_nec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_parse_nec(%struct.device* %0, %struct.wbcir_data* %1) #0 {
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
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %13 = call i64 @get_bits(%struct.wbcir_data* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %17 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %16, i32 0, i32 2
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
  %26 = call i64 @get_bits(%struct.wbcir_data* %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %122

31:                                               ; preds = %24
  %32 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %33 = call i64 @get_bits(%struct.wbcir_data* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %37 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %122

43:                                               ; preds = %35
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %46 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %50 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %51 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %54 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wbcir_keydown(%struct.wbcir_data* %49, i32 %52, i32 %55)
  br label %122

57:                                               ; preds = %31
  %58 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %59 = call i64 @get_bits(%struct.wbcir_data* %58, i32 3)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %122

64:                                               ; preds = %57
  %65 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %66 = call i64 @get_bits(%struct.wbcir_data* %65, i32 8)
  %67 = call i32 @bitrev8(i64 %66)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %69 = call i64 @get_bits(%struct.wbcir_data* %68, i32 8)
  %70 = call i32 @bitrev8(i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %72 = call i64 @get_bits(%struct.wbcir_data* %71, i32 8)
  %73 = call i32 @bitrev8(i64 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %75 = call i64 @get_bits(%struct.wbcir_data* %74, i32 8)
  %76 = call i32 @bitrev8(i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %78 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %122

84:                                               ; preds = %64
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = xor i32 %86, -1
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %122

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = xor i32 %95, -1
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 8
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 8
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %10, align 4
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %116 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @wbcir_keydown(%struct.wbcir_data* %113, i32 %114, i32 %120)
  br label %122

122:                                              ; preds = %103, %89, %81, %61, %43, %40, %28
  ret void
}

declare dso_local i64 @get_bits(%struct.wbcir_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @wbcir_keydown(%struct.wbcir_data*, i32, i32) #1

declare dso_local i32 @bitrev8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

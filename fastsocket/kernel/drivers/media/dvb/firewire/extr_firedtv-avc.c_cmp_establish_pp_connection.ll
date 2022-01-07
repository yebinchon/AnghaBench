; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_cmp_establish_pp_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_cmp_establish_pp_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }

@CMP_OUTPUT_PLUG_CONTROL_REG_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CMP: output offline\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CMP: cannot change channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CMP: overlaying connection\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_establish_pp_connection(%struct.firedtv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.firedtv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @CMP_OUTPUT_PLUG_CONTROL_REG_0, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %21 = call i32 @cmp_read(%struct.firedtv* %18, i64 %19, i64* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %106

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %101, %26
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = call i32 @get_opcr_online(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %34 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %106

39:                                               ; preds = %27
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %41 = load i64, i64* %40, align 16
  store i64 %41, i64* %8, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = call i64 @get_opcr_p2p_connections(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %48 = load i64, i64* %47, align 16
  %49 = call i32 @get_opcr_channel(i64 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %54 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %106

59:                                               ; preds = %46
  %60 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %61 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %72

64:                                               ; preds = %39
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @set_opcr_channel(i64* %65, i32 %66)
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %69 = call i32 @set_opcr_data_rate(i64* %68, i32 2)
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %71 = call i32 @set_opcr_overhead_id(i64* %70, i32 0)
  br label %72

72:                                               ; preds = %64, %59
  %73 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %75 = load i64, i64* %74, align 16
  %76 = call i64 @get_opcr_p2p_connections(i64 %75)
  %77 = add nsw i64 %76, 1
  %78 = call i32 @set_opcr_p2p_connections(i64* %73, i64 %77)
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %82, i64* %83, align 16
  %84 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %87 = call i32 @cmp_lock(%struct.firedtv* %84, i64 %85, i64* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %72
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %106

92:                                               ; preds = %72
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %95 = load i64, i64* %94, align 16
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %27

102:                                              ; preds = %97
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %102, %90, %52, %32, %24
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @cmp_read(%struct.firedtv*, i64, i64*) #1

declare dso_local i32 @get_opcr_online(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @get_opcr_p2p_connections(i64) #1

declare dso_local i32 @get_opcr_channel(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @set_opcr_channel(i64*, i32) #1

declare dso_local i32 @set_opcr_data_rate(i64*, i32) #1

declare dso_local i32 @set_opcr_overhead_id(i64*, i32) #1

declare dso_local i32 @set_opcr_p2p_connections(i64*, i64) #1

declare dso_local i32 @cmp_lock(%struct.firedtv*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

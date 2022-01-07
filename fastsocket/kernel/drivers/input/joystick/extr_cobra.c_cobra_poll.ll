; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_cobra.c_cobra_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_cobra.c_cobra_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.cobra = type { i32, %struct.input_dev**, i32, i32 }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@cobra_btn = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @cobra_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobra_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.cobra*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %9 = load %struct.gameport*, %struct.gameport** %2, align 8
  %10 = call %struct.cobra* @gameport_get_drvdata(%struct.gameport* %9)
  store %struct.cobra* %10, %struct.cobra** %3, align 8
  %11 = load %struct.cobra*, %struct.cobra** %3, align 8
  %12 = getelementptr inbounds %struct.cobra, %struct.cobra* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.gameport*, %struct.gameport** %2, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %17 = call i32 @cobra_read_packet(%struct.gameport* %15, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cobra*, %struct.cobra** %3, align 8
  %19 = getelementptr inbounds %struct.cobra, %struct.cobra* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.cobra*, %struct.cobra** %3, align 8
  %24 = getelementptr inbounds %struct.cobra, %struct.cobra* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %113

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %110, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load %struct.cobra*, %struct.cobra** %3, align 8
  %33 = getelementptr inbounds %struct.cobra, %struct.cobra* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %109

41:                                               ; preds = %31
  %42 = load %struct.cobra*, %struct.cobra** %3, align 8
  %43 = getelementptr inbounds %struct.cobra, %struct.cobra* %42, i32 0, i32 1
  %44 = load %struct.input_dev**, %struct.input_dev*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %44, i64 %46
  %48 = load %struct.input_dev*, %struct.input_dev** %47, align 8
  store %struct.input_dev* %48, %struct.input_dev** %4, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load i32, i32* @ABS_X, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, 4
  %56 = and i32 %55, 1
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = lshr i32 %60, 3
  %62 = and i32 %61, 1
  %63 = sub i32 %56, %62
  %64 = call i32 @input_report_abs(%struct.input_dev* %49, i32 %50, i32 %63)
  %65 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %66 = load i32, i32* @ABS_Y, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = lshr i32 %70, 2
  %72 = and i32 %71, 1
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = lshr i32 %76, 1
  %78 = and i32 %77, 1
  %79 = sub i32 %72, %78
  %80 = call i32 @input_report_abs(%struct.input_dev* %65, i32 %66, i32 %79)
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %103, %41
  %82 = load i64*, i64** @cobra_btn, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = load i64*, i64** @cobra_btn, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 32, %99
  %101 = and i32 %98, %100
  %102 = call i32 @input_report_key(%struct.input_dev* %89, i64 %94, i32 %101)
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %81

106:                                              ; preds = %81
  %107 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %108 = call i32 @input_sync(%struct.input_dev* %107)
  br label %109

109:                                              ; preds = %106, %31
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %28

113:                                              ; preds = %22, %28
  ret void
}

declare dso_local %struct.cobra* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @cobra_read_packet(%struct.gameport*, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

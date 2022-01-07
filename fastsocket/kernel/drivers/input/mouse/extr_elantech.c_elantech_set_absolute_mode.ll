; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_set_absolute_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_set_absolute_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data* }
%struct.elantech_data = type { i32, i32, i32, i32 }

@ETP_READ_BACK_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"elantech.c: retrying read (%d).\0A\00", align 1
@ETP_READ_BACK_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"elantech.c: failed to read back register 0x10.\0A\00", align 1
@ETP_R10_ABSOLUTE_MODE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"elantech.c: touchpad refuses to switch to absolute mode.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"elantech.c: failed to initialise registers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_set_absolute_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_set_absolute_mode(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.elantech_data*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  %9 = load %struct.elantech_data*, %struct.elantech_data** %8, align 8
  store %struct.elantech_data* %9, %struct.elantech_data** %3, align 8
  %10 = load i32, i32* @ETP_READ_BACK_TRIES, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %12 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %63 [
    i32 1, label %14
    i32 2, label %34
  ]

14:                                               ; preds = %1
  %15 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %16 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %15, i32 0, i32 1
  store i32 22, i32* %16, align 4
  %17 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %18 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %17, i32 0, i32 2
  store i32 143, i32* %18, align 4
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %21 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @elantech_write_reg(%struct.psmouse* %19, i32 16, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %27 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %28 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @elantech_write_reg(%struct.psmouse* %26, i32 17, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %14
  store i32 -1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %25
  br label %63

34:                                               ; preds = %1
  %35 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %36 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %35, i32 0, i32 1
  store i32 84, i32* %36, align 4
  %37 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %38 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %37, i32 0, i32 2
  store i32 136, i32* %38, align 4
  %39 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %40 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %39, i32 0, i32 3
  store i32 96, i32* %40, align 4
  %41 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %42 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %43 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @elantech_write_reg(%struct.psmouse* %41, i32 16, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %34
  %48 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %49 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %50 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @elantech_write_reg(%struct.psmouse* %48, i32 17, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %56 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %57 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @elantech_write_reg(%struct.psmouse* %55, i32 33, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %47, %34
  store i32 -1, i32* %6, align 4
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %1, %61, %33
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %80, %66
  %68 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %69 = call i32 @elantech_read_reg(%struct.psmouse* %68, i32 16, i8* %4)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %83

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @elantech_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ETP_READ_BACK_DELAY, align 4
  %79 = call i32 @msleep(i32 %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %67, label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %103

88:                                               ; preds = %83
  %89 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %90 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i8, i8* %4, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @ETP_R10_ABSOLUTE_MODE, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %93, %88
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %63
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @elantech_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @elantech_read_reg(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @elantech_debug(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

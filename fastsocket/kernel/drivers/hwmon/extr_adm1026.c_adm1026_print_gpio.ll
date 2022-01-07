; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_adm1026_print_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_adm1026_print_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"GPIO config is:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\09%sGP%s%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\09FAN%d\0A\00", align 1
@CFG3_GPIO16_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"\09%sGP%s16\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\09THERM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm1026_print_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1026_print_gpio(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adm1026_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.adm1026_data* %6, %struct.adm1026_data** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %54, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 7
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %15 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %13
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %25 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %35 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %36 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %45, i32 %46)
  br label %53

48:                                               ; preds = %13
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %21
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %10

57:                                               ; preds = %10
  store i32 8, i32* %4, align 4
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 15
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %65 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 2
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %75 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %76 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %93 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CFG3_GPIO16_ENABLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %91
  %99 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %102 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 16
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 2
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %110 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %111 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 16
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %119 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %109, i8* %118)
  br label %124

120:                                              ; preds = %91
  %121 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %98
  ret void
}

declare dso_local %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

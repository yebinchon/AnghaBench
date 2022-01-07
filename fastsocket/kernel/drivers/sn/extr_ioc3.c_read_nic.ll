; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_read_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_read_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_driver_data = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"060-0035-\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"060-0038-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_driver_data*, i64)* @read_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_nic(%struct.ioc3_driver_data* %0, i64 %1) #0 {
  %3 = alloca %struct.ioc3_driver_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ioc3_driver_data* %0, %struct.ioc3_driver_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %13 = call i32 @read_redir_map(%struct.ioc3_driver_data* %10, i64 %11, i8* %12)
  %14 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %18 = call i32 @read_redir_page(%struct.ioc3_driver_data* %14, i64 %15, i32 0, i8* %16, i8* %17)
  %19 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = call i32 @read_redir_page(%struct.ioc3_driver_data* %19, i64 %20, i32 1, i8* %21, i8* %23)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %47, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 19
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 11
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 32
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 11
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %44
  store i8 %41, i8* %45, align 1
  br label %46

46:                                               ; preds = %36, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %25

50:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 32
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %62, %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %78
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %130

84:                                               ; preds = %76
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %130

89:                                               ; preds = %84
  %90 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %91 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %94 = call i32 @strcpy(i32 %92, i8* %93)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %120, %89
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 10
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 32
  br i1 %105, label %106, label %119

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %113 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 %111, i8* %118, align 1
  br label %119

119:                                              ; preds = %106, %98
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %95

123:                                              ; preds = %95
  %124 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %125 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  br label %130

130:                                              ; preds = %123, %88, %83
  ret void
}

declare dso_local i32 @read_redir_map(%struct.ioc3_driver_data*, i64, i8*) #1

declare dso_local i32 @read_redir_page(%struct.ioc3_driver_data*, i64, i32, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

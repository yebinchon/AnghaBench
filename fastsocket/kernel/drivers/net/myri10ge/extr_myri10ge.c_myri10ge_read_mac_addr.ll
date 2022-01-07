; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8** }
%struct.TYPE_2__ = type { i32 }

@MYRI10GE_EEPROM_STRINGS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MAC=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PC=\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SN=\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to parse eeprom_strings\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_read_mac_addr(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %7 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %8 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %11 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @MYRI10GE_EEPROM_STRINGS_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %96, %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ult i8* %22, %23
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %27, label %97

27:                                               ; preds = %25
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @memcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %36 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %57, %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %98

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @simple_strtoul(i8* %47, i8** %4, i32 16)
  %49 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %50 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %49, i32 0, i32 5
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %37

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @memcmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %70 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i8*, i8** %4, align 8
  %73 = call i64 @memcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i8* @simple_strtoul(i8* %78, i8** %4, i32 10)
  %80 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %81 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %71
  br label %83

83:                                               ; preds = %95, %82
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ult i8* %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i1 [ false, %83 ], [ %92, %87 ]
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  br label %83

96:                                               ; preds = %93
  br label %16

97:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %106

98:                                               ; preds = %45
  %99 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %100 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @ENXIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %97
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru3.c_abituguru3_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru3.c_abituguru3_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i64 }

@ABIT_UGURU3_DATA = common dso_local global i64 0, align 8
@ABIT_UGURU3_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"read from 0x%02x:0x%02x timed out after sending 0x1A, status: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU3_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"read from 0x%02x:0x%02x timed out after sending the bank, status: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"read from 0x%02x:0x%02x timed out after sending the offset, status: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"read from 0x%02x:0x%02x timed out after sending the count, status: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"timeout reading byte %d from 0x%02x:0x%02x, status: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru3_data*, i32, i32, i32, i32*)* @abituguru3_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_read(%struct.abituguru3_data* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.abituguru3_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.abituguru3_data* %0, %struct.abituguru3_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %15 = call i32 @abituguru3_synchronize(%struct.abituguru3_data* %14)
  store i32 %15, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %6, align 4
  br label %126

19:                                               ; preds = %5
  %20 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %21 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ABIT_UGURU3_DATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 26, i64 %24)
  %26 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %27 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %126

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %40 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %46 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %126

56:                                               ; preds = %37
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %59 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %57, i64 %62)
  %64 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %65 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %126

75:                                               ; preds = %56
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %78 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  %83 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %84 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %126

94:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %101 = call i32 @abituguru3_wait_for_read(%struct.abituguru3_data* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 %106, i32 %107, i32 %108)
  br label %124

110:                                              ; preds = %99
  %111 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %112 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @inb(i64 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %95

124:                                              ; preds = %104, %95
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %87, %68, %49, %30, %17
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @abituguru3_synchronize(%struct.abituguru3_data*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @abituguru3_wait_while_busy(%struct.abituguru3_data*) #1

declare dso_local i32 @ABIT_UGURU3_DEBUG(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @abituguru3_wait_for_read(%struct.abituguru3_data*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

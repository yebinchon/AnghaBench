; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_dump_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_dump_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Physical(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Logical(\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Usage(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Logical Minimum(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Logical Maximum(%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Physical Minimum(%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Physical Maximum(%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Unit Exponent(%d)\0A\00", align 1
@hid_dump_field.systems = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SI Linear\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SI Rotation\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"English Linear\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"English Rotation\00", align 1
@hid_dump_field.units = internal global [5 x [8 x i8*]] [[8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)]], align 16
@.str.15 = private unnamed_addr constant [11 x i8] c"Centimeter\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Gram\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Seconds\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Kelvin\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Ampere\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Candela\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Radians\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Inch\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Slug\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Fahrenheit\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Degrees\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Unit(Invalid)\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Unit(%s : \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"^%d\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Report Size(%u)\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Report Count(%u)\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Report Offset(%u)\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Flags( \00", align 1
@HID_MAIN_ITEM_CONSTANT = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"Constant \00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"Variable \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Array \00", align 1
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"Relative \00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Absolute \00", align 1
@HID_MAIN_ITEM_WRAP = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"Wrap \00", align 1
@HID_MAIN_ITEM_NONLINEAR = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [11 x i8] c"NonLinear \00", align 1
@HID_MAIN_ITEM_NO_PREFERRED = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [18 x i8] c"NoPreferredState \00", align 1
@HID_MAIN_ITEM_NULL_STATE = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"NullState \00", align 1
@HID_MAIN_ITEM_VOLATILE = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"Volatile \00", align 1
@HID_MAIN_ITEM_BUFFERED_BYTE = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [14 x i8] c"BufferedByte \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_dump_field(%struct.hid_field* %0, i32 %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.hid_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.hid_field* %0, %struct.hid_field** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %14 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %15 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %21 = call i32 @tab(i32 %19, %struct.seq_file* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %25 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %24, i32 0, i32 13
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %28 = call i32 @hid_resolv_usage(i64 %26, %struct.seq_file* %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %18, %3
  %32 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %33 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %39 = call i32 @tab(i32 %37, %struct.seq_file* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %43 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %42, i32 0, i32 12
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %46 = call i32 @hid_resolv_usage(i64 %44, %struct.seq_file* %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %36, %31
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %52 = call i32 @tab(i32 %50, %struct.seq_file* %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %54 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %55 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %81, %49
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 2
  %67 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %68 = call i32 @tab(i32 %66, %struct.seq_file* %67)
  %69 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %70 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %69, i32 0, i32 11
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %78 = call i32 @hid_resolv_usage(i64 %76, %struct.seq_file* %77)
  %79 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %86 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %89 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %95 = call i32 @tab(i32 %93, %struct.seq_file* %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %97 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %98 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %103 = call i32 @tab(i32 %101, %struct.seq_file* %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %105 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %106 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %92, %84
  %110 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %111 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %114 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %109
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %120 = call i32 @tab(i32 %118, %struct.seq_file* %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %122 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %123 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %128 = call i32 @tab(i32 %126, %struct.seq_file* %127)
  %129 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %130 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %131 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %117, %109
  %135 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %136 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %142 = call i32 @tab(i32 %140, %struct.seq_file* %141)
  %143 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %144 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %145 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %144, i32 0, i32 10
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %143, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %146)
  br label %148

148:                                              ; preds = %139, %134
  %149 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %150 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %239

153:                                              ; preds = %148
  %154 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %155 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 15
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = ashr i32 %159, 4
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sgt i32 %161, 4
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %166 = call i32 @tab(i32 %164, %struct.seq_file* %165)
  %167 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %168 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  br label %238

169:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %172 = call i32 @tab(i32 %170, %struct.seq_file* %171)
  %173 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hid_dump_field.systems, i64 0, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %177)
  store i32 1, i32* %8, align 4
  br label %179

179:                                              ; preds = %232, %169
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ult i64 %181, 8
  br i1 %182, label %183, label %235

183:                                              ; preds = %179
  %184 = load i32, i32* %10, align 4
  %185 = and i32 %184, 15
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %12, align 1
  %187 = load i32, i32* %10, align 4
  %188 = ashr i32 %187, 4
  store i32 %188, i32* %10, align 4
  %189 = load i8, i8* %12, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %231

192:                                              ; preds = %183
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  %195 = icmp sgt i32 %193, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %198 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %192
  %200 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [5 x [8 x i8*]], [5 x [8 x i8*]]* @hid_dump_field.units, i64 0, i64 %202
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x i8*], [8 x i8*]* %203, i64 0, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %207)
  %209 = load i8, i8* %12, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %212, label %230

212:                                              ; preds = %199
  %213 = load i8, i8* %12, align 1
  %214 = sext i8 %213 to i32
  %215 = and i32 %214, 7
  store i32 %215, i32* %13, align 4
  %216 = load i8, i8* %12, align 1
  %217 = sext i8 %216 to i32
  %218 = and i32 %217, 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load i32, i32* %13, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 7, %222
  %224 = add nsw i32 %223, 1
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %220, %212
  %227 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %199
  br label %231

231:                                              ; preds = %230, %183
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %179

235:                                              ; preds = %179
  %236 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %237 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %163
  br label %239

239:                                              ; preds = %238, %148
  %240 = load i32, i32* %5, align 4
  %241 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %242 = call i32 @tab(i32 %240, %struct.seq_file* %241)
  %243 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %244 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %245 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %243, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* %5, align 4
  %249 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %250 = call i32 @tab(i32 %248, %struct.seq_file* %249)
  %251 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %252 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %253 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %251, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %258 = call i32 @tab(i32 %256, %struct.seq_file* %257)
  %259 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %260 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %261 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 8
  %263 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %259, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %5, align 4
  %265 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %266 = call i32 @tab(i32 %264, %struct.seq_file* %265)
  %267 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %268 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %267, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  %269 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  %270 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %7, align 4
  %272 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %273 = load i32, i32* @HID_MAIN_ITEM_CONSTANT, align 4
  %274 = load i32, i32* %7, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %279 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %278)
  %280 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %281 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %282 = load i32, i32* %7, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)
  %287 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %286)
  %288 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %289 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %290 = load i32, i32* %7, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)
  %295 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %294)
  %296 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %297 = load i32, i32* @HID_MAIN_ITEM_WRAP, align 4
  %298 = load i32, i32* %7, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %303 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %302)
  %304 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %305 = load i32, i32* @HID_MAIN_ITEM_NONLINEAR, align 4
  %306 = load i32, i32* %7, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %311 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %310)
  %312 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %313 = load i32, i32* @HID_MAIN_ITEM_NO_PREFERRED, align 4
  %314 = load i32, i32* %7, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %319 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %318)
  %320 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %321 = load i32, i32* @HID_MAIN_ITEM_NULL_STATE, align 4
  %322 = load i32, i32* %7, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %327 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %320, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %326)
  %328 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %329 = load i32, i32* @HID_MAIN_ITEM_VOLATILE, align 4
  %330 = load i32, i32* %7, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %335 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %334)
  %336 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %337 = load i32, i32* @HID_MAIN_ITEM_BUFFERED_BYTE, align 4
  %338 = load i32, i32* %7, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %343 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %342)
  %344 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %345 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %344, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tab(i32, %struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @hid_resolv_usage(i64, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

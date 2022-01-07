; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_proc_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_proc_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.atmel_private = type { i32, i32, i8*, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Driver version:\09\09%d.%d\0A\00", align 1
@DRIVER_MAJOR = common dso_local global i32 0, align 4
@DRIVER_MINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Firmware version:\09%d.%d build %d\0AFirmware location:\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"on card\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s loaded by host\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s loaded by hotplug\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Parallel flash\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SPI flash\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@channel_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"MAC memory type:\09%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Regulatory domain:\09%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Host CRC checking:\09%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"WPA-capable firmware:\09%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Scanning\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Joining\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Authenticating\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Associating\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Ready\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Reassociating\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Management error\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Current state:\09\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.atmel_private*)* @atmel_proc_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_proc_output(i8* %0, %struct.atmel_private* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.atmel_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.atmel_private* %1, %struct.atmel_private** %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @DRIVER_MAJOR, align 4
  %13 = load i32, i32* @DRIVER_MINOR, align 4
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 133
  br i1 %21, label %22, label %145

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 138
  br i1 %43, label %44, label %50

44:                                               ; preds = %22
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  br label %74

50:                                               ; preds = %22
  %51 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %52 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %58 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %6, align 8
  br label %73

64:                                               ; preds = %50
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %67 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %64, %55
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %76 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %81 [
    i32 137, label %78
    i32 136, label %79
    i32 138, label %80
  ]

78:                                               ; preds = %74
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %82

79:                                               ; preds = %74
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %82

80:                                               ; preds = %74
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %82

81:                                               ; preds = %74
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %82

82:                                               ; preds = %81, %80, %79, %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %107, %82
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @channel_table, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %90 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @channel_table, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %91, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @channel_table, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %8, align 8
  br label %106

106:                                              ; preds = %99, %88
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %83

110:                                              ; preds = %83
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %6, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %125 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %130 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %129)
  %131 = load i8*, i8** %6, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %136 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %140)
  %142 = load i8*, i8** %6, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %6, align 8
  br label %145

145:                                              ; preds = %110, %2
  %146 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %147 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %157 [
    i32 128, label %149
    i32 132, label %150
    i32 134, label %151
    i32 135, label %152
    i32 130, label %153
    i32 129, label %154
    i32 131, label %155
    i32 133, label %156
  ]

149:                                              ; preds = %145
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %7, align 8
  br label %158

150:                                              ; preds = %145
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %7, align 8
  br label %158

151:                                              ; preds = %145
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %7, align 8
  br label %158

152:                                              ; preds = %145
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %7, align 8
  br label %158

153:                                              ; preds = %145
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %7, align 8
  br label %158

154:                                              ; preds = %145
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8** %7, align 8
  br label %158

155:                                              ; preds = %145
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8** %7, align 8
  br label %158

156:                                              ; preds = %145
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %7, align 8
  br label %158

157:                                              ; preds = %145
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %158

158:                                              ; preds = %157, %156, %155, %154, %153, %152, %151, %150, %149
  %159 = load i8*, i8** %6, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 (i8*, i8*, ...) @sprintf(i8* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* %160)
  %162 = load i8*, i8** %6, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %6, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %3, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  ret i32 %170
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

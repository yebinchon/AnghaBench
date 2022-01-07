; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-samsung.c_samsung_report_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-samsung.c_samsung_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"fixing up Samsung IrDA %d byte report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i32*, i32)* @samsung_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_report_fixup(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 184
  br i1 %8, label %9, label %56

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 175
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %56

14:                                               ; preds = %9
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 176
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 177
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 117
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 178
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 179
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 149
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 180
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 182
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 64
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 184)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 176
  store i32 255, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 178
  store i32 8, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 180
  store i32 6, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 182
  store i32 66, i32* %55, align 4
  br label %120

56:                                               ; preds = %39, %34, %29, %24, %19, %14, %9, %3
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 203
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 192
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 21
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 193
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 194
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 195
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 18
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %81 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %80, i32 0, i32 0
  %82 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 203)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 193
  store i32 1, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 195
  store i32 15, i32* %86, align 4
  br label %119

87:                                               ; preds = %74, %69, %64, %59, %56
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 135
  br i1 %89, label %90, label %118

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 124
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 21
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 125
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 126
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 127
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 17
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %112 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %111, i32 0, i32 0
  %113 = call i32 @dev_info(i32* %112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 135)
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 125
  store i32 1, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 127
  store i32 14, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %105, %100, %95, %90, %87
  br label %119

119:                                              ; preds = %118, %79
  br label %120

120:                                              ; preds = %119, %44
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

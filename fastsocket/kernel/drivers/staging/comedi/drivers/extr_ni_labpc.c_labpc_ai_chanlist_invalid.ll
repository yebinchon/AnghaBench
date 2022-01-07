; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_chanlist_invalid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_chanlist_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32, i32* }

@MODE_SINGLE_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ni_labpc: chanlist too long for single channel interval mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"channel scanning order specified in chanlist is not supported by hardware.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ni_labpc: bug! in chanlist check\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"entries in chanlist must all have the same range\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"entries in chanlist must all have the same reference\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @labpc_ai_chanlist_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_chanlist_invalid(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

16:                                               ; preds = %2
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %18 = call i32 @labpc_ai_scan_mode(%struct.comedi_cmd* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MODE_SINGLE_CHAN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %147

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call i32 @comedi_error(%struct.comedi_device* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CR_CHAN(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CR_RANGE(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CR_AREF(i32 %52)
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %143, %35
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %146

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %112 [
    i32 128, label %62
    i32 129, label %77
    i32 130, label %92
  ]

62:                                               ; preds = %60
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CR_CHAN(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = call i32 @comedi_error(%struct.comedi_device* %74, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

76:                                               ; preds = %62
  br label %114

77:                                               ; preds = %60
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CR_CHAN(i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = call i32 @comedi_error(%struct.comedi_device* %89, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

91:                                               ; preds = %77
  br label %114

92:                                               ; preds = %60
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CR_CHAN(i32 %99)
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  %107 = icmp ne i32 %100, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %92
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = call i32 @comedi_error(%struct.comedi_device* %109, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

111:                                              ; preds = %92
  br label %114

112:                                              ; preds = %60
  %113 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

114:                                              ; preds = %111, %91, %76
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @CR_RANGE(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %127 = call i32 @comedi_error(%struct.comedi_device* %126, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

128:                                              ; preds = %114
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @CR_AREF(i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %141 = call i32 @comedi_error(%struct.comedi_device* %140, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %54

146:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %139, %125, %112, %108, %88, %73, %31, %22, %15
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @labpc_ai_scan_mode(%struct.comedi_cmd*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

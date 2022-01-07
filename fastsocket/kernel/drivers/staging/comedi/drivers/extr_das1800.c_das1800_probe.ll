; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.das1800_board = type { i32 }
%struct.comedi_device = type { i64, i64 }

@DAS1800_DIGITAL = common dso_local global i64 0, align 8
@das1800_boards = common dso_local global %struct.das1800_board* null, align 8
@das1801st_da = common dso_local global i32 0, align 4
@das1802st_da = common dso_local global i32 0, align 4
@das1701st_da = common dso_local global i32 0, align 4
@das1702st_da = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c" Board model: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c" Board model (probed, not recommended): das-1800st-da series\0A\00", align 1
@das1801st = common dso_local global i32 0, align 4
@das1802hr_da = common dso_local global i32 0, align 4
@das1702hr_da = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c" Board model (probed, not recommended): das-1802hr-da\0A\00", align 1
@das1802hr = common dso_local global i32 0, align 4
@das1801ao = common dso_local global i32 0, align 4
@das1802ao = common dso_local global i32 0, align 4
@das1701ao = common dso_local global i32 0, align 4
@das1702ao = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c" Board model (probed, not recommended): das-1800ao series\0A\00", align 1
@das1702hr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c" Board model (probed, not recommended): das-1802hr\0A\00", align 1
@das1802st = common dso_local global i32 0, align 4
@das1701st = common dso_local global i32 0, align 4
@das1702st = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c" Board model (probed, not recommended): das-1800st series\0A\00", align 1
@das1801hc = common dso_local global i32 0, align 4
@das1802hc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c" Board model (probed, not recommended): das-1800hc series\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c" Board model: probe returned 0x%x (unknown, please report)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @das1800_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_probe(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DAS1800_DIGITAL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @inb(i64 %10)
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %4, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.das1800_board*
  %18 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %19 = ptrtoint %struct.das1800_board* %17 to i64
  %20 = ptrtoint %struct.das1800_board* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %169 [
    i32 3, label %25
    i32 4, label %53
    i32 5, label %73
    i32 6, label %101
    i32 7, label %121
    i32 8, label %149
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @das1801st_da, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @das1802st_da, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @das1701st_da, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @das1702st_da, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %33, %29, %25
  %42 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %42, i64 %44
  %46 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %173

50:                                               ; preds = %37
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @das1801st, align 4
  store i32 %52, i32* %2, align 4
  br label %173

53:                                               ; preds = %1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @das1802hr_da, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @das1702hr_da, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57, %53
  %62 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %62, i64 %64
  %66 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %173

70:                                               ; preds = %57
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @das1802hr, align 4
  store i32 %72, i32* %2, align 4
  br label %173

73:                                               ; preds = %1
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @das1801ao, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @das1802ao, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @das1701ao, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @das1702ao, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %81, %77, %73
  %90 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %90, i64 %92
  %94 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %173

98:                                               ; preds = %85
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @das1801ao, align 4
  store i32 %100, i32* %2, align 4
  br label %173

101:                                              ; preds = %1
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @das1802hr, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @das1702hr, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105, %101
  %110 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %110, i64 %112
  %114 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %173

118:                                              ; preds = %105
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @das1802hr, align 4
  store i32 %120, i32* %2, align 4
  br label %173

121:                                              ; preds = %1
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @das1801st, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @das1802st, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @das1701st, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @das1702st, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133, %129, %125, %121
  %138 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %138, i64 %140
  %142 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %173

146:                                              ; preds = %133
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @das1801st, align 4
  store i32 %148, i32* %2, align 4
  br label %173

149:                                              ; preds = %1
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @das1801hc, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @das1802hc, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153, %149
  %158 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %158, i64 %160
  %162 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %173

166:                                              ; preds = %153
  %167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i32, i32* @das1801hc, align 4
  store i32 %168, i32* %2, align 4
  br label %173

169:                                              ; preds = %1
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %5, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %166, %157, %146, %137, %118, %109, %98, %89, %70, %61, %50, %41
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

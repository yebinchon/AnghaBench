; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_internal_ibmmca_scsi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_internal_ibmmca_scsi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"activity\00", align 1
@LED_ACTIVITY = common dso_local global i32 0, align 4
@display_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@LED_DISP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"adisplay\00", align 1
@LED_ADISP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@ibm_ansi_order = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ansi\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@global_adapter_speed = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@IM_MAX_HOSTS = common dso_local global i32 0, align 4
@io_port = common dso_local global i32* null, align 8
@scsi_id = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @internal_ibmmca_scsi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_ibmmca_scsi_setup(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %114

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %112, %12
  %14 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %113

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @LED_ACTIVITY, align 4
  %22 = load i32, i32* @display_mode, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @display_mode, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @LED_DISP, align 4
  %30 = load i32, i32* @display_mode, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @display_mode, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @LED_ADISP, align 4
  %38 = load i32, i32* @display_mode, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @display_mode, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* @ibm_ansi_order, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 1, i32* @ibm_ansi_order, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* @global_adapter_speed, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 4, i32* @global_adapter_speed, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 7, i32* @global_adapter_speed, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isdigit(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %6, align 4
  %77 = srem i32 %76, 2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @IM_MAX_HOSTS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* @simple_strtoul(i8* %84, i32* null, i32 0)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** @io_port, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %79, %75
  %93 = load i32, i32* %6, align 4
  %94 = srem i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @IM_MAX_HOSTS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  %102 = call i8* @simple_strtoul(i8* %101, i32* null, i32 0)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32*, i32** @scsi_id, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  br label %109

109:                                              ; preds = %100, %96, %92
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %70
  br label %13

113:                                              ; preds = %13
  br label %160

114:                                              ; preds = %2
  %115 = load i32*, i32** %4, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %159

117:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %155, %117
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @IM_MAX_HOSTS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = mul nsw i32 2, %123
  %125 = add nsw i32 %124, 2
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br label %130

130:                                              ; preds = %122, %118
  %131 = phi i1 [ false, %118 ], [ %129, %122 ]
  br i1 %131, label %132, label %158

132:                                              ; preds = %130
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = mul nsw i32 2, %134
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @io_port, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = mul nsw i32 2, %145
  %147 = add nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** @scsi_id, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %132
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %118

158:                                              ; preds = %130
  br label %159

159:                                              ; preds = %158, %114
  br label %160

160:                                              ; preds = %159, %113
  ret void
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

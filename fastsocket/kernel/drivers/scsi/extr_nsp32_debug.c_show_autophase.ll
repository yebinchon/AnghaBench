; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32_debug.c_show_autophase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32_debug.c_show_autophase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"auto: 0x%x,\00", align 1
@COMMAND_PHASE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c" cmd\00", align 1
@DATA_IN_PHASE = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c" din\00", align 1
@DATA_OUT_PHASE = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [6 x i8] c" dout\00", align 1
@MSGOUT_PHASE = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [6 x i8] c" mout\00", align 1
@STATUS_PHASE = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [6 x i8] c" stat\00", align 1
@ILLEGAL_PHASE = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c" ill\00", align 1
@BUS_FREE_OCCUER = common dso_local global i16 0, align 2
@.str.7 = private unnamed_addr constant [9 x i8] c" bfree-o\00", align 1
@MSG_IN_OCCUER = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [7 x i8] c" min-o\00", align 1
@MSG_OUT_OCCUER = common dso_local global i16 0, align 2
@.str.9 = private unnamed_addr constant [8 x i8] c" mout-o\00", align 1
@SELECTION_TIMEOUT = common dso_local global i16 0, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c" sel\00", align 1
@MSGIN_00_VALID = common dso_local global i16 0, align 2
@.str.11 = private unnamed_addr constant [4 x i8] c" m0\00", align 1
@MSGIN_02_VALID = common dso_local global i16 0, align 2
@.str.12 = private unnamed_addr constant [4 x i8] c" m2\00", align 1
@MSGIN_03_VALID = common dso_local global i16 0, align 2
@.str.13 = private unnamed_addr constant [4 x i8] c" m3\00", align 1
@MSGIN_04_VALID = common dso_local global i16 0, align 2
@.str.14 = private unnamed_addr constant [4 x i8] c" m4\00", align 1
@AUTOSCSI_BUSY = common dso_local global i16 0, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c" busy\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @show_autophase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_autophase(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i16, i16* %2, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @COMMAND_PHASE, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i16, i16* %2, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @DATA_IN_PHASE, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i16, i16* %2, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @DATA_OUT_PHASE, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i16, i16* %2, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* @MSGOUT_PHASE, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i16, i16* %2, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @STATUS_PHASE, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i16, i16* %2, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @ILLEGAL_PHASE, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i16, i16* %2, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @BUS_FREE_OCCUER, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i16, i16* %2, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @MSG_IN_OCCUER, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i16, i16* %2, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @MSG_OUT_OCCUER, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i16, i16* %2, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* @SELECTION_TIMEOUT, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i16, i16* %2, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16, i16* @MSGIN_00_VALID, align 2
  %99 = zext i16 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  %105 = load i16, i16* %2, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* @MSGIN_02_VALID, align 2
  %108 = zext i16 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i16, i16* %2, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16, i16* @MSGIN_03_VALID, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i16, i16* %2, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @MSGIN_04_VALID, align 2
  %126 = zext i16 %125 to i32
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %122
  %132 = load i16, i16* %2, align 2
  %133 = zext i16 %132 to i32
  %134 = load i16, i16* @AUTOSCSI_BUSY, align 2
  %135 = zext i16 %134 to i32
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %131
  %141 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

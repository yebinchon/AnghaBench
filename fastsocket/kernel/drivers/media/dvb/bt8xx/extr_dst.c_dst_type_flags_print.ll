; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_type_flags_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_type_flags_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DST type flags :\00", align 1
@DST_TYPE_HAS_TS188 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" 0x%x newtuner\00", align 1
@DST_TYPE_HAS_NEWTUNE_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c" 0x%x newtuner 2\00", align 1
@DST_TYPE_HAS_TS204 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c" 0x%x ts204\00", align 1
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" 0x%x VLF\00", align 1
@DST_TYPE_HAS_SYMDIV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" 0x%x symdiv\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c" 0x%x firmware version = 1\00", align 1
@DST_TYPE_HAS_FW_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c" 0x%x firmware version = 2\00", align 1
@DST_TYPE_HAS_FW_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c" 0x%x firmware version = 3\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_state*)* @dst_type_flags_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_type_flags_print(%struct.dst_state* %0) #0 {
  %2 = alloca %struct.dst_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %2, align 8
  %4 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %5 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @verbose, align 4
  %8 = load i32, i32* @DST_ERROR, align 4
  %9 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %7, i32 %8, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DST_TYPE_HAS_TS188, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @verbose, align 4
  %16 = load i32, i32* @DST_ERROR, align 4
  %17 = load i32, i32* @DST_TYPE_HAS_TS188, align 4
  %18 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %15, i32 %16, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @DST_TYPE_HAS_NEWTUNE_2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @DST_ERROR, align 4
  %27 = load i32, i32* @DST_TYPE_HAS_NEWTUNE_2, align 4
  %28 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %25, i32 %26, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @verbose, align 4
  %36 = load i32, i32* @DST_ERROR, align 4
  %37 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %38 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %35, i32 %36, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @verbose, align 4
  %46 = load i32, i32* @DST_ERROR, align 4
  %47 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %48 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %45, i32 %46, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @verbose, align 4
  %56 = load i32, i32* @DST_ERROR, align 4
  %57 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  %58 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %55, i32 %56, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @verbose, align 4
  %66 = load i32, i32* @DST_ERROR, align 4
  %67 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %68 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %65, i32 %66, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @DST_TYPE_HAS_FW_2, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @verbose, align 4
  %76 = load i32, i32* @DST_ERROR, align 4
  %77 = load i32, i32* @DST_TYPE_HAS_FW_2, align 4
  %78 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %75, i32 %76, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @DST_TYPE_HAS_FW_3, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @verbose, align 4
  %86 = load i32, i32* @DST_ERROR, align 4
  %87 = load i32, i32* @DST_TYPE_HAS_FW_3, align 4
  %88 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %85, i32 %86, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @verbose, align 4
  %91 = load i32, i32* @DST_ERROR, align 4
  %92 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %90, i32 %91, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

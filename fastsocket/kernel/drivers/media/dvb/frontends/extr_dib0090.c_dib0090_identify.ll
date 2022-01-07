; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32, %struct.dib0090_state* }
%struct.dib0090_state = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"P/V: %04x:\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FE%d : Product ID = 0x%x : KROSUS\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"FE%d : MP001 : 9090/8096\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"FE%d : MP005 : Single Sband\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"FE%d : MP008 : diversity VHF-UHF-LBAND\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"FE%d : MP009 : diversity 29098 CBAND-UHF-LBAND-SBAND\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"FE%d : P1-D/E/F detected\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"FE%d : P1C detected\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"FE%d : P1-A/B detected: driver is deactivated - not available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0090_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_identify(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0090_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.dib0090_state*, %struct.dib0090_state** %7, align 8
  store %struct.dib0090_state* %8, %struct.dib0090_state** %4, align 8
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %10 = call i32 @dib0090_read_reg(%struct.dib0090_state* %9, i32 26)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1023
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 15
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 15
  %26 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25)
  br label %28

27:                                               ; preds = %1
  store i32 255, i32* %2, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 5
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %74

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 5
  %43 = and i32 %42, 7
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %73

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 5
  %53 = and i32 %52, 7
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %72

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 5
  %63 = and i32 %62, 7
  %64 = icmp eq i32 %63, 7
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %60
  store i32 255, i32* %2, align 4
  br label %105

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %55
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %35
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 31
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %103

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 31
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  br label %102

92:                                               ; preds = %83
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 31
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  store i32 255, i32* %2, align 4
  br label %105

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %96, %70, %27
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

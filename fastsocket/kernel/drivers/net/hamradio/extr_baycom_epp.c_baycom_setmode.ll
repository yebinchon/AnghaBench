; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_baycom_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_baycom_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baycom_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"intclk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"intmodem\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"extmodem\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"noloopback\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fclk=\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bps=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.baycom_state*, i8*)* @baycom_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_setmode(%struct.baycom_state* %0, i8* %1) #0 {
  %3 = alloca %struct.baycom_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.baycom_state* %0, %struct.baycom_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %11 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %19 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %27 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %35 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %43 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %51 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %55, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  %60 = call i8* @simple_strtoul(i8* %59, i32* null, i32 0)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %63 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %66 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 1000000
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %72 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 1000000, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %57
  %75 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %76 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 25000000
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %82 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 25000000, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i8*, i8** %4, align 8
  %87 = call i8* @strstr(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %87, i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = call i8* @simple_strtoul(i8* %91, i32* null, i32 0)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %95 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 4
  %97 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %98 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 1000
  br i1 %101, label %102, label %106

102:                                              ; preds = %89
  %103 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %104 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  store i32 1000, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %89
  %107 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %108 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 1500000
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %114 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  store i32 1500000, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116, %85
  ret i32 0
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

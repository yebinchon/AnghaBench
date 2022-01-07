; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_progress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@IE_PROGRESS = common dso_local global i32 0, align 4
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"progress error %d\00", align 1
@ie_PROGRESS = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@CC_PROGRESS = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_progress(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IE_PROGRESS, align 4
  %19 = call i32* @findie(i32 %14, i32 %17, i32 %18, i32 0)
  store i32* %19, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 100, i32* %29, align 8
  br label %56

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 112
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %50 [
    i32 128, label %40
    i32 129, label %40
    i32 130, label %40
    i32 132, label %40
    i32 133, label %40
    i32 135, label %40
    i32 138, label %40
  ]

40:                                               ; preds = %36, %36, %36, %36, %36, %36, %36
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %45 [
    i32 129, label %44
    i32 130, label %44
    i32 131, label %44
    i32 132, label %44
    i32 136, label %44
  ]

44:                                               ; preds = %40, %40, %40, %40, %40
  br label %49

45:                                               ; preds = %40
  store i32 2, i32* %8, align 4
  %46 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %47 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 100, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %44
  br label %54

50:                                               ; preds = %36
  store i32 3, i32* %8, align 4
  %51 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %52 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 100, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %26
  br label %61

57:                                               ; preds = %3
  %58 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %59 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 96, i32* %60, align 8
  store i32 4, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %66 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @L3_DEB_WARN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %73 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @l3_debug(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %64
  %78 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @l3ni1_status_send(%struct.l3_process* %78, i32 %79, i32* null)
  br label %111

81:                                               ; preds = %61
  %82 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = load i32, i32* @ie_PROGRESS, align 4
  %85 = call i32 @check_infoelements(%struct.l3_process* %82, %struct.sk_buff* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @l3ni1_std_ie_err(%struct.l3_process* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %81
  %93 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %98 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)** %101, align 8
  %103 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %104 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* @CC_PROGRESS, align 4
  %107 = load i32, i32* @INDICATION, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %110 = call i32 %102(%struct.TYPE_7__* %105, i32 %108, %struct.l3_process* %109)
  br label %111

111:                                              ; preds = %77, %96, %92
  ret void
}

declare dso_local i32* @findie(i32, i32, i32, i32) #1

declare dso_local i32 @l3_debug(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @l3ni1_status_send(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3ni1_std_ie_err(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
